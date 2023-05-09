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

// SystemVerilog created from mmul_function_wrapper
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_function_wrapper (
    input wire [31:0] avm_lm1007_mmul_readdata,
    input wire [0:0] avm_lm1007_mmul_readdatavalid,
    input wire [0:0] avm_lm1007_mmul_waitrequest,
    input wire [0:0] avm_lm1007_mmul_writeack,
    input wire [31:0] avm_lm1048_mmul_readdata,
    input wire [0:0] avm_lm1048_mmul_readdatavalid,
    input wire [0:0] avm_lm1048_mmul_waitrequest,
    input wire [0:0] avm_lm1048_mmul_writeack,
    input wire [31:0] avm_lm1089_mmul_readdata,
    input wire [0:0] avm_lm1089_mmul_readdatavalid,
    input wire [0:0] avm_lm1089_mmul_waitrequest,
    input wire [0:0] avm_lm1089_mmul_writeack,
    input wire [31:0] avm_lm11210_mmul_readdata,
    input wire [0:0] avm_lm11210_mmul_readdatavalid,
    input wire [0:0] avm_lm11210_mmul_waitrequest,
    input wire [0:0] avm_lm11210_mmul_writeack,
    input wire [31:0] avm_lm11611_mmul_readdata,
    input wire [0:0] avm_lm11611_mmul_readdatavalid,
    input wire [0:0] avm_lm11611_mmul_waitrequest,
    input wire [0:0] avm_lm11611_mmul_writeack,
    input wire [31:0] avm_lm12012_mmul_readdata,
    input wire [0:0] avm_lm12012_mmul_readdatavalid,
    input wire [0:0] avm_lm12012_mmul_waitrequest,
    input wire [0:0] avm_lm12012_mmul_writeack,
    input wire [31:0] avm_lm12413_mmul_readdata,
    input wire [0:0] avm_lm12413_mmul_readdatavalid,
    input wire [0:0] avm_lm12413_mmul_waitrequest,
    input wire [0:0] avm_lm12413_mmul_writeack,
    input wire [31:0] avm_lm12814_mmul_readdata,
    input wire [0:0] avm_lm12814_mmul_readdatavalid,
    input wire [0:0] avm_lm12814_mmul_waitrequest,
    input wire [0:0] avm_lm12814_mmul_writeack,
    input wire [31:0] avm_lm13215_mmul_readdata,
    input wire [0:0] avm_lm13215_mmul_readdatavalid,
    input wire [0:0] avm_lm13215_mmul_waitrequest,
    input wire [0:0] avm_lm13215_mmul_writeack,
    input wire [31:0] avm_lm13616_mmul_readdata,
    input wire [0:0] avm_lm13616_mmul_readdatavalid,
    input wire [0:0] avm_lm13616_mmul_waitrequest,
    input wire [0:0] avm_lm13616_mmul_writeack,
    input wire [31:0] avm_lm14017_mmul_readdata,
    input wire [0:0] avm_lm14017_mmul_readdatavalid,
    input wire [0:0] avm_lm14017_mmul_waitrequest,
    input wire [0:0] avm_lm14017_mmul_writeack,
    input wire [31:0] avm_lm14418_mmul_readdata,
    input wire [0:0] avm_lm14418_mmul_readdatavalid,
    input wire [0:0] avm_lm14418_mmul_waitrequest,
    input wire [0:0] avm_lm14418_mmul_writeack,
    input wire [31:0] avm_lm14819_mmul_readdata,
    input wire [0:0] avm_lm14819_mmul_readdatavalid,
    input wire [0:0] avm_lm14819_mmul_waitrequest,
    input wire [0:0] avm_lm14819_mmul_writeack,
    input wire [31:0] avm_lm15220_mmul_readdata,
    input wire [0:0] avm_lm15220_mmul_readdatavalid,
    input wire [0:0] avm_lm15220_mmul_waitrequest,
    input wire [0:0] avm_lm15220_mmul_writeack,
    input wire [31:0] avm_lm15621_mmul_readdata,
    input wire [0:0] avm_lm15621_mmul_readdatavalid,
    input wire [0:0] avm_lm15621_mmul_waitrequest,
    input wire [0:0] avm_lm15621_mmul_writeack,
    input wire [31:0] avm_lm16022_mmul_readdata,
    input wire [0:0] avm_lm16022_mmul_readdatavalid,
    input wire [0:0] avm_lm16022_mmul_waitrequest,
    input wire [0:0] avm_lm16022_mmul_writeack,
    input wire [31:0] avm_lm16423_mmul_readdata,
    input wire [0:0] avm_lm16423_mmul_readdatavalid,
    input wire [0:0] avm_lm16423_mmul_waitrequest,
    input wire [0:0] avm_lm16423_mmul_writeack,
    input wire [31:0] avm_lm16824_mmul_readdata,
    input wire [0:0] avm_lm16824_mmul_readdatavalid,
    input wire [0:0] avm_lm16824_mmul_waitrequest,
    input wire [0:0] avm_lm16824_mmul_writeack,
    input wire [31:0] avm_lm17225_mmul_readdata,
    input wire [0:0] avm_lm17225_mmul_readdatavalid,
    input wire [0:0] avm_lm17225_mmul_waitrequest,
    input wire [0:0] avm_lm17225_mmul_writeack,
    input wire [31:0] avm_lm17626_mmul_readdata,
    input wire [0:0] avm_lm17626_mmul_readdatavalid,
    input wire [0:0] avm_lm17626_mmul_waitrequest,
    input wire [0:0] avm_lm17626_mmul_writeack,
    input wire [31:0] avm_lm18027_mmul_readdata,
    input wire [0:0] avm_lm18027_mmul_readdatavalid,
    input wire [0:0] avm_lm18027_mmul_waitrequest,
    input wire [0:0] avm_lm18027_mmul_writeack,
    input wire [31:0] avm_lm18428_mmul_readdata,
    input wire [0:0] avm_lm18428_mmul_readdatavalid,
    input wire [0:0] avm_lm18428_mmul_waitrequest,
    input wire [0:0] avm_lm18428_mmul_writeack,
    input wire [31:0] avm_lm18829_mmul_readdata,
    input wire [0:0] avm_lm18829_mmul_readdatavalid,
    input wire [0:0] avm_lm18829_mmul_waitrequest,
    input wire [0:0] avm_lm18829_mmul_writeack,
    input wire [31:0] avm_lm19230_mmul_readdata,
    input wire [0:0] avm_lm19230_mmul_readdatavalid,
    input wire [0:0] avm_lm19230_mmul_waitrequest,
    input wire [0:0] avm_lm19230_mmul_writeack,
    input wire [31:0] avm_lm19631_mmul_readdata,
    input wire [0:0] avm_lm19631_mmul_readdatavalid,
    input wire [0:0] avm_lm19631_mmul_waitrequest,
    input wire [0:0] avm_lm19631_mmul_writeack,
    input wire [31:0] avm_lm20032_mmul_readdata,
    input wire [0:0] avm_lm20032_mmul_readdatavalid,
    input wire [0:0] avm_lm20032_mmul_waitrequest,
    input wire [0:0] avm_lm20032_mmul_writeack,
    input wire [31:0] avm_lm20433_mmul_readdata,
    input wire [0:0] avm_lm20433_mmul_readdatavalid,
    input wire [0:0] avm_lm20433_mmul_waitrequest,
    input wire [0:0] avm_lm20433_mmul_writeack,
    input wire [511:0] avm_lm76_mmul_readdata,
    input wire [0:0] avm_lm76_mmul_readdatavalid,
    input wire [0:0] avm_lm76_mmul_waitrequest,
    input wire [0:0] avm_lm76_mmul_writeack,
    input wire [31:0] avm_lm802_mmul_readdata,
    input wire [0:0] avm_lm802_mmul_readdatavalid,
    input wire [0:0] avm_lm802_mmul_waitrequest,
    input wire [0:0] avm_lm802_mmul_writeack,
    input wire [31:0] avm_lm843_mmul_readdata,
    input wire [0:0] avm_lm843_mmul_readdatavalid,
    input wire [0:0] avm_lm843_mmul_waitrequest,
    input wire [0:0] avm_lm843_mmul_writeack,
    input wire [31:0] avm_lm884_mmul_readdata,
    input wire [0:0] avm_lm884_mmul_readdatavalid,
    input wire [0:0] avm_lm884_mmul_waitrequest,
    input wire [0:0] avm_lm884_mmul_writeack,
    input wire [31:0] avm_lm925_mmul_readdata,
    input wire [0:0] avm_lm925_mmul_readdatavalid,
    input wire [0:0] avm_lm925_mmul_waitrequest,
    input wire [0:0] avm_lm925_mmul_writeack,
    input wire [31:0] avm_lm966_mmul_readdata,
    input wire [0:0] avm_lm966_mmul_readdatavalid,
    input wire [0:0] avm_lm966_mmul_waitrequest,
    input wire [0:0] avm_lm966_mmul_writeack,
    input wire [511:0] avm_lm_mmul_readdata,
    input wire [0:0] avm_lm_mmul_readdatavalid,
    input wire [0:0] avm_lm_mmul_waitrequest,
    input wire [0:0] avm_lm_mmul_writeack,
    input wire [1023:0] avm_memcoalesce_load_mmul_fpgaunique_321_mmul_readdata,
    input wire [0:0] avm_memcoalesce_load_mmul_fpgaunique_321_mmul_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_mmul_fpgaunique_321_mmul_waitrequest,
    input wire [0:0] avm_memcoalesce_load_mmul_fpgaunique_321_mmul_writeack,
    input wire [1023:0] avm_memdep_95_mmul_readdata,
    input wire [0:0] avm_memdep_95_mmul_readdatavalid,
    input wire [0:0] avm_memdep_95_mmul_waitrequest,
    input wire [0:0] avm_memdep_95_mmul_writeack,
    input wire [31:0] avm_memdep_mmul_readdata,
    input wire [0:0] avm_memdep_mmul_readdatavalid,
    input wire [0:0] avm_memdep_mmul_waitrequest,
    input wire [0:0] avm_memdep_mmul_writeack,
    input wire [511:0] avm_unnamed_mmul7_mmul_readdata,
    input wire [0:0] avm_unnamed_mmul7_mmul_readdatavalid,
    input wire [0:0] avm_unnamed_mmul7_mmul_waitrequest,
    input wire [0:0] avm_unnamed_mmul7_mmul_writeack,
    input wire [0:0] clock2x,
    input wire [63:0] global_id_0,
    input wire [63:0] global_id_1,
    input wire [63:0] global_id_2,
    input wire [63:0] global_offset_0,
    input wire [63:0] global_offset_1,
    input wire [63:0] global_offset_2,
    input wire [63:0] global_size_0,
    input wire [63:0] global_size_1,
    input wire [63:0] global_size_2,
    input wire [31:0] group_id_0,
    input wire [31:0] group_id_1,
    input wire [31:0] group_id_2,
    input wire [287:0] kernel_arguments,
    input wire [0:0] kernel_stall_in,
    input wire [0:0] kernel_valid_in,
    input wire [31:0] local_id_0,
    input wire [31:0] local_id_1,
    input wire [31:0] local_id_2,
    input wire [0:0] local_router_hang,
    input wire [31:0] local_size_0,
    input wire [31:0] local_size_1,
    input wire [31:0] local_size_2,
    input wire [31:0] num_groups_0,
    input wire [31:0] num_groups_1,
    input wire [31:0] num_groups_2,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [31:0] work_dim,
    input wire [31:0] workgroup_size,
    output wire [31:0] avm_lm1007_mmul_address,
    output wire [0:0] avm_lm1007_mmul_burstcount,
    output wire [3:0] avm_lm1007_mmul_byteenable,
    output wire [0:0] avm_lm1007_mmul_enable,
    output wire [0:0] avm_lm1007_mmul_read,
    output wire [0:0] avm_lm1007_mmul_write,
    output wire [31:0] avm_lm1007_mmul_writedata,
    output wire [31:0] avm_lm1048_mmul_address,
    output wire [0:0] avm_lm1048_mmul_burstcount,
    output wire [3:0] avm_lm1048_mmul_byteenable,
    output wire [0:0] avm_lm1048_mmul_enable,
    output wire [0:0] avm_lm1048_mmul_read,
    output wire [0:0] avm_lm1048_mmul_write,
    output wire [31:0] avm_lm1048_mmul_writedata,
    output wire [31:0] avm_lm1089_mmul_address,
    output wire [0:0] avm_lm1089_mmul_burstcount,
    output wire [3:0] avm_lm1089_mmul_byteenable,
    output wire [0:0] avm_lm1089_mmul_enable,
    output wire [0:0] avm_lm1089_mmul_read,
    output wire [0:0] avm_lm1089_mmul_write,
    output wire [31:0] avm_lm1089_mmul_writedata,
    output wire [31:0] avm_lm11210_mmul_address,
    output wire [0:0] avm_lm11210_mmul_burstcount,
    output wire [3:0] avm_lm11210_mmul_byteenable,
    output wire [0:0] avm_lm11210_mmul_enable,
    output wire [0:0] avm_lm11210_mmul_read,
    output wire [0:0] avm_lm11210_mmul_write,
    output wire [31:0] avm_lm11210_mmul_writedata,
    output wire [31:0] avm_lm11611_mmul_address,
    output wire [0:0] avm_lm11611_mmul_burstcount,
    output wire [3:0] avm_lm11611_mmul_byteenable,
    output wire [0:0] avm_lm11611_mmul_enable,
    output wire [0:0] avm_lm11611_mmul_read,
    output wire [0:0] avm_lm11611_mmul_write,
    output wire [31:0] avm_lm11611_mmul_writedata,
    output wire [31:0] avm_lm12012_mmul_address,
    output wire [0:0] avm_lm12012_mmul_burstcount,
    output wire [3:0] avm_lm12012_mmul_byteenable,
    output wire [0:0] avm_lm12012_mmul_enable,
    output wire [0:0] avm_lm12012_mmul_read,
    output wire [0:0] avm_lm12012_mmul_write,
    output wire [31:0] avm_lm12012_mmul_writedata,
    output wire [31:0] avm_lm12413_mmul_address,
    output wire [0:0] avm_lm12413_mmul_burstcount,
    output wire [3:0] avm_lm12413_mmul_byteenable,
    output wire [0:0] avm_lm12413_mmul_enable,
    output wire [0:0] avm_lm12413_mmul_read,
    output wire [0:0] avm_lm12413_mmul_write,
    output wire [31:0] avm_lm12413_mmul_writedata,
    output wire [31:0] avm_lm12814_mmul_address,
    output wire [0:0] avm_lm12814_mmul_burstcount,
    output wire [3:0] avm_lm12814_mmul_byteenable,
    output wire [0:0] avm_lm12814_mmul_enable,
    output wire [0:0] avm_lm12814_mmul_read,
    output wire [0:0] avm_lm12814_mmul_write,
    output wire [31:0] avm_lm12814_mmul_writedata,
    output wire [31:0] avm_lm13215_mmul_address,
    output wire [0:0] avm_lm13215_mmul_burstcount,
    output wire [3:0] avm_lm13215_mmul_byteenable,
    output wire [0:0] avm_lm13215_mmul_enable,
    output wire [0:0] avm_lm13215_mmul_read,
    output wire [0:0] avm_lm13215_mmul_write,
    output wire [31:0] avm_lm13215_mmul_writedata,
    output wire [31:0] avm_lm13616_mmul_address,
    output wire [0:0] avm_lm13616_mmul_burstcount,
    output wire [3:0] avm_lm13616_mmul_byteenable,
    output wire [0:0] avm_lm13616_mmul_enable,
    output wire [0:0] avm_lm13616_mmul_read,
    output wire [0:0] avm_lm13616_mmul_write,
    output wire [31:0] avm_lm13616_mmul_writedata,
    output wire [31:0] avm_lm14017_mmul_address,
    output wire [0:0] avm_lm14017_mmul_burstcount,
    output wire [3:0] avm_lm14017_mmul_byteenable,
    output wire [0:0] avm_lm14017_mmul_enable,
    output wire [0:0] avm_lm14017_mmul_read,
    output wire [0:0] avm_lm14017_mmul_write,
    output wire [31:0] avm_lm14017_mmul_writedata,
    output wire [31:0] avm_lm14418_mmul_address,
    output wire [0:0] avm_lm14418_mmul_burstcount,
    output wire [3:0] avm_lm14418_mmul_byteenable,
    output wire [0:0] avm_lm14418_mmul_enable,
    output wire [0:0] avm_lm14418_mmul_read,
    output wire [0:0] avm_lm14418_mmul_write,
    output wire [31:0] avm_lm14418_mmul_writedata,
    output wire [31:0] avm_lm14819_mmul_address,
    output wire [0:0] avm_lm14819_mmul_burstcount,
    output wire [3:0] avm_lm14819_mmul_byteenable,
    output wire [0:0] avm_lm14819_mmul_enable,
    output wire [0:0] avm_lm14819_mmul_read,
    output wire [0:0] avm_lm14819_mmul_write,
    output wire [31:0] avm_lm14819_mmul_writedata,
    output wire [31:0] avm_lm15220_mmul_address,
    output wire [0:0] avm_lm15220_mmul_burstcount,
    output wire [3:0] avm_lm15220_mmul_byteenable,
    output wire [0:0] avm_lm15220_mmul_enable,
    output wire [0:0] avm_lm15220_mmul_read,
    output wire [0:0] avm_lm15220_mmul_write,
    output wire [31:0] avm_lm15220_mmul_writedata,
    output wire [31:0] avm_lm15621_mmul_address,
    output wire [0:0] avm_lm15621_mmul_burstcount,
    output wire [3:0] avm_lm15621_mmul_byteenable,
    output wire [0:0] avm_lm15621_mmul_enable,
    output wire [0:0] avm_lm15621_mmul_read,
    output wire [0:0] avm_lm15621_mmul_write,
    output wire [31:0] avm_lm15621_mmul_writedata,
    output wire [31:0] avm_lm16022_mmul_address,
    output wire [0:0] avm_lm16022_mmul_burstcount,
    output wire [3:0] avm_lm16022_mmul_byteenable,
    output wire [0:0] avm_lm16022_mmul_enable,
    output wire [0:0] avm_lm16022_mmul_read,
    output wire [0:0] avm_lm16022_mmul_write,
    output wire [31:0] avm_lm16022_mmul_writedata,
    output wire [31:0] avm_lm16423_mmul_address,
    output wire [0:0] avm_lm16423_mmul_burstcount,
    output wire [3:0] avm_lm16423_mmul_byteenable,
    output wire [0:0] avm_lm16423_mmul_enable,
    output wire [0:0] avm_lm16423_mmul_read,
    output wire [0:0] avm_lm16423_mmul_write,
    output wire [31:0] avm_lm16423_mmul_writedata,
    output wire [31:0] avm_lm16824_mmul_address,
    output wire [0:0] avm_lm16824_mmul_burstcount,
    output wire [3:0] avm_lm16824_mmul_byteenable,
    output wire [0:0] avm_lm16824_mmul_enable,
    output wire [0:0] avm_lm16824_mmul_read,
    output wire [0:0] avm_lm16824_mmul_write,
    output wire [31:0] avm_lm16824_mmul_writedata,
    output wire [31:0] avm_lm17225_mmul_address,
    output wire [0:0] avm_lm17225_mmul_burstcount,
    output wire [3:0] avm_lm17225_mmul_byteenable,
    output wire [0:0] avm_lm17225_mmul_enable,
    output wire [0:0] avm_lm17225_mmul_read,
    output wire [0:0] avm_lm17225_mmul_write,
    output wire [31:0] avm_lm17225_mmul_writedata,
    output wire [31:0] avm_lm17626_mmul_address,
    output wire [0:0] avm_lm17626_mmul_burstcount,
    output wire [3:0] avm_lm17626_mmul_byteenable,
    output wire [0:0] avm_lm17626_mmul_enable,
    output wire [0:0] avm_lm17626_mmul_read,
    output wire [0:0] avm_lm17626_mmul_write,
    output wire [31:0] avm_lm17626_mmul_writedata,
    output wire [31:0] avm_lm18027_mmul_address,
    output wire [0:0] avm_lm18027_mmul_burstcount,
    output wire [3:0] avm_lm18027_mmul_byteenable,
    output wire [0:0] avm_lm18027_mmul_enable,
    output wire [0:0] avm_lm18027_mmul_read,
    output wire [0:0] avm_lm18027_mmul_write,
    output wire [31:0] avm_lm18027_mmul_writedata,
    output wire [31:0] avm_lm18428_mmul_address,
    output wire [0:0] avm_lm18428_mmul_burstcount,
    output wire [3:0] avm_lm18428_mmul_byteenable,
    output wire [0:0] avm_lm18428_mmul_enable,
    output wire [0:0] avm_lm18428_mmul_read,
    output wire [0:0] avm_lm18428_mmul_write,
    output wire [31:0] avm_lm18428_mmul_writedata,
    output wire [31:0] avm_lm18829_mmul_address,
    output wire [0:0] avm_lm18829_mmul_burstcount,
    output wire [3:0] avm_lm18829_mmul_byteenable,
    output wire [0:0] avm_lm18829_mmul_enable,
    output wire [0:0] avm_lm18829_mmul_read,
    output wire [0:0] avm_lm18829_mmul_write,
    output wire [31:0] avm_lm18829_mmul_writedata,
    output wire [31:0] avm_lm19230_mmul_address,
    output wire [0:0] avm_lm19230_mmul_burstcount,
    output wire [3:0] avm_lm19230_mmul_byteenable,
    output wire [0:0] avm_lm19230_mmul_enable,
    output wire [0:0] avm_lm19230_mmul_read,
    output wire [0:0] avm_lm19230_mmul_write,
    output wire [31:0] avm_lm19230_mmul_writedata,
    output wire [31:0] avm_lm19631_mmul_address,
    output wire [0:0] avm_lm19631_mmul_burstcount,
    output wire [3:0] avm_lm19631_mmul_byteenable,
    output wire [0:0] avm_lm19631_mmul_enable,
    output wire [0:0] avm_lm19631_mmul_read,
    output wire [0:0] avm_lm19631_mmul_write,
    output wire [31:0] avm_lm19631_mmul_writedata,
    output wire [31:0] avm_lm20032_mmul_address,
    output wire [0:0] avm_lm20032_mmul_burstcount,
    output wire [3:0] avm_lm20032_mmul_byteenable,
    output wire [0:0] avm_lm20032_mmul_enable,
    output wire [0:0] avm_lm20032_mmul_read,
    output wire [0:0] avm_lm20032_mmul_write,
    output wire [31:0] avm_lm20032_mmul_writedata,
    output wire [31:0] avm_lm20433_mmul_address,
    output wire [0:0] avm_lm20433_mmul_burstcount,
    output wire [3:0] avm_lm20433_mmul_byteenable,
    output wire [0:0] avm_lm20433_mmul_enable,
    output wire [0:0] avm_lm20433_mmul_read,
    output wire [0:0] avm_lm20433_mmul_write,
    output wire [31:0] avm_lm20433_mmul_writedata,
    output wire [30:0] avm_lm76_mmul_address,
    output wire [4:0] avm_lm76_mmul_burstcount,
    output wire [63:0] avm_lm76_mmul_byteenable,
    output wire [0:0] avm_lm76_mmul_enable,
    output wire [0:0] avm_lm76_mmul_read,
    output wire [0:0] avm_lm76_mmul_write,
    output wire [511:0] avm_lm76_mmul_writedata,
    output wire [31:0] avm_lm802_mmul_address,
    output wire [0:0] avm_lm802_mmul_burstcount,
    output wire [3:0] avm_lm802_mmul_byteenable,
    output wire [0:0] avm_lm802_mmul_enable,
    output wire [0:0] avm_lm802_mmul_read,
    output wire [0:0] avm_lm802_mmul_write,
    output wire [31:0] avm_lm802_mmul_writedata,
    output wire [31:0] avm_lm843_mmul_address,
    output wire [0:0] avm_lm843_mmul_burstcount,
    output wire [3:0] avm_lm843_mmul_byteenable,
    output wire [0:0] avm_lm843_mmul_enable,
    output wire [0:0] avm_lm843_mmul_read,
    output wire [0:0] avm_lm843_mmul_write,
    output wire [31:0] avm_lm843_mmul_writedata,
    output wire [31:0] avm_lm884_mmul_address,
    output wire [0:0] avm_lm884_mmul_burstcount,
    output wire [3:0] avm_lm884_mmul_byteenable,
    output wire [0:0] avm_lm884_mmul_enable,
    output wire [0:0] avm_lm884_mmul_read,
    output wire [0:0] avm_lm884_mmul_write,
    output wire [31:0] avm_lm884_mmul_writedata,
    output wire [31:0] avm_lm925_mmul_address,
    output wire [0:0] avm_lm925_mmul_burstcount,
    output wire [3:0] avm_lm925_mmul_byteenable,
    output wire [0:0] avm_lm925_mmul_enable,
    output wire [0:0] avm_lm925_mmul_read,
    output wire [0:0] avm_lm925_mmul_write,
    output wire [31:0] avm_lm925_mmul_writedata,
    output wire [31:0] avm_lm966_mmul_address,
    output wire [0:0] avm_lm966_mmul_burstcount,
    output wire [3:0] avm_lm966_mmul_byteenable,
    output wire [0:0] avm_lm966_mmul_enable,
    output wire [0:0] avm_lm966_mmul_read,
    output wire [0:0] avm_lm966_mmul_write,
    output wire [31:0] avm_lm966_mmul_writedata,
    output wire [30:0] avm_lm_mmul_address,
    output wire [4:0] avm_lm_mmul_burstcount,
    output wire [63:0] avm_lm_mmul_byteenable,
    output wire [0:0] avm_lm_mmul_enable,
    output wire [0:0] avm_lm_mmul_read,
    output wire [0:0] avm_lm_mmul_write,
    output wire [511:0] avm_lm_mmul_writedata,
    output wire [31:0] avm_memcoalesce_load_mmul_fpgaunique_321_mmul_address,
    output wire [0:0] avm_memcoalesce_load_mmul_fpgaunique_321_mmul_burstcount,
    output wire [127:0] avm_memcoalesce_load_mmul_fpgaunique_321_mmul_byteenable,
    output wire [0:0] avm_memcoalesce_load_mmul_fpgaunique_321_mmul_enable,
    output wire [0:0] avm_memcoalesce_load_mmul_fpgaunique_321_mmul_read,
    output wire [0:0] avm_memcoalesce_load_mmul_fpgaunique_321_mmul_write,
    output wire [1023:0] avm_memcoalesce_load_mmul_fpgaunique_321_mmul_writedata,
    output wire [31:0] avm_memdep_95_mmul_address,
    output wire [0:0] avm_memdep_95_mmul_burstcount,
    output wire [127:0] avm_memdep_95_mmul_byteenable,
    output wire [0:0] avm_memdep_95_mmul_enable,
    output wire [0:0] avm_memdep_95_mmul_read,
    output wire [0:0] avm_memdep_95_mmul_write,
    output wire [1023:0] avm_memdep_95_mmul_writedata,
    output wire [31:0] avm_memdep_mmul_address,
    output wire [0:0] avm_memdep_mmul_burstcount,
    output wire [3:0] avm_memdep_mmul_byteenable,
    output wire [0:0] avm_memdep_mmul_enable,
    output wire [0:0] avm_memdep_mmul_read,
    output wire [0:0] avm_memdep_mmul_write,
    output wire [31:0] avm_memdep_mmul_writedata,
    output wire [30:0] avm_unnamed_mmul7_mmul_address,
    output wire [4:0] avm_unnamed_mmul7_mmul_burstcount,
    output wire [63:0] avm_unnamed_mmul7_mmul_byteenable,
    output wire [0:0] avm_unnamed_mmul7_mmul_enable,
    output wire [0:0] avm_unnamed_mmul7_mmul_read,
    output wire [0:0] avm_unnamed_mmul7_mmul_write,
    output wire [511:0] avm_unnamed_mmul7_mmul_writedata,
    output wire [0:0] clock2x_output,
    output wire [0:0] has_a_lsu_active,
    output wire [0:0] has_a_write_pending,
    output wire [0:0] kernel_stall_out,
    output wire [0:0] kernel_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] acl_clock2x_dummy_consumer_clock2x;
    wire acl_clock2x_dummy_consumer_clock2x_bitsignaltemp;
    wire [0:0] acl_clock2x_dummy_consumer_myout;
    wire acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    wire [63:0] arg_A_select_b;
    wire [31:0] arg_Awrk_select_b;
    wire [63:0] arg_B_select_b;
    wire [31:0] arg_Bwrk_select_b;
    wire [63:0] arg_C_select_b;
    wire [31:0] arg_N_select_b;
    wire [31:0] const_32_bit_zero_q;
    wire [31:0] embedded_issuer_done_hw_wg_id_in;
    wire [63:0] embedded_issuer_global_id_in_0;
    wire [63:0] embedded_issuer_global_id_in_1;
    wire [63:0] embedded_issuer_global_id_in_2;
    wire [31:0] embedded_issuer_group_id_in_0;
    wire [31:0] embedded_issuer_group_id_in_1;
    wire [31:0] embedded_issuer_group_id_in_2;
    wire [31:0] embedded_issuer_local_id_in_0;
    wire [31:0] embedded_issuer_local_id_in_1;
    wire [31:0] embedded_issuer_local_id_in_2;
    wire [0:0] embedded_issuer_stall_entry;
    wire embedded_issuer_stall_entry_bitsignaltemp;
    wire [0:0] embedded_issuer_stall_exit;
    wire embedded_issuer_stall_exit_bitsignaltemp;
    wire [0:0] embedded_issuer_valid_exit;
    wire embedded_issuer_valid_exit_bitsignaltemp;
    wire [0:0] embedded_issuer_valid_in;
    wire embedded_issuer_valid_in_bitsignaltemp;
    wire [31:0] embedded_issuer_workgroup_size;
    wire [63:0] embedded_issuer_global_id_out_0;
    wire [63:0] embedded_issuer_global_id_out_1;
    wire [31:0] embedded_issuer_group_id_out_0;
    wire [31:0] embedded_issuer_group_id_out_1;
    wire [31:0] embedded_issuer_local_id_out_0;
    wire [31:0] embedded_issuer_local_id_out_1;
    wire [0:0] embedded_issuer_stall_out;
    wire embedded_issuer_stall_out_bitsignaltemp;
    wire [0:0] embedded_issuer_valid_entry;
    wire embedded_issuer_valid_entry_bitsignaltemp;
    wire [63:0] ip_dsdk_adapt_cast188_b;
    wire [63:0] ip_dsdk_adapt_cast189_b;
    wire [31:0] mmul_function_out_lm1007_mmul_avm_address;
    wire [0:0] mmul_function_out_lm1007_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm1007_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm1007_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm1007_mmul_avm_read;
    wire [0:0] mmul_function_out_lm1007_mmul_avm_write;
    wire [31:0] mmul_function_out_lm1007_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm1048_mmul_avm_address;
    wire [0:0] mmul_function_out_lm1048_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm1048_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm1048_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm1048_mmul_avm_read;
    wire [0:0] mmul_function_out_lm1048_mmul_avm_write;
    wire [31:0] mmul_function_out_lm1048_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm1089_mmul_avm_address;
    wire [0:0] mmul_function_out_lm1089_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm1089_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm1089_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm1089_mmul_avm_read;
    wire [0:0] mmul_function_out_lm1089_mmul_avm_write;
    wire [31:0] mmul_function_out_lm1089_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm11210_mmul_avm_address;
    wire [0:0] mmul_function_out_lm11210_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm11210_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm11210_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm11210_mmul_avm_read;
    wire [0:0] mmul_function_out_lm11210_mmul_avm_write;
    wire [31:0] mmul_function_out_lm11210_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm11611_mmul_avm_address;
    wire [0:0] mmul_function_out_lm11611_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm11611_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm11611_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm11611_mmul_avm_read;
    wire [0:0] mmul_function_out_lm11611_mmul_avm_write;
    wire [31:0] mmul_function_out_lm11611_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm12012_mmul_avm_address;
    wire [0:0] mmul_function_out_lm12012_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm12012_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm12012_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm12012_mmul_avm_read;
    wire [0:0] mmul_function_out_lm12012_mmul_avm_write;
    wire [31:0] mmul_function_out_lm12012_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm12413_mmul_avm_address;
    wire [0:0] mmul_function_out_lm12413_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm12413_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm12413_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm12413_mmul_avm_read;
    wire [0:0] mmul_function_out_lm12413_mmul_avm_write;
    wire [31:0] mmul_function_out_lm12413_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm12814_mmul_avm_address;
    wire [0:0] mmul_function_out_lm12814_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm12814_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm12814_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm12814_mmul_avm_read;
    wire [0:0] mmul_function_out_lm12814_mmul_avm_write;
    wire [31:0] mmul_function_out_lm12814_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm13215_mmul_avm_address;
    wire [0:0] mmul_function_out_lm13215_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm13215_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm13215_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm13215_mmul_avm_read;
    wire [0:0] mmul_function_out_lm13215_mmul_avm_write;
    wire [31:0] mmul_function_out_lm13215_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm13616_mmul_avm_address;
    wire [0:0] mmul_function_out_lm13616_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm13616_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm13616_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm13616_mmul_avm_read;
    wire [0:0] mmul_function_out_lm13616_mmul_avm_write;
    wire [31:0] mmul_function_out_lm13616_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm14017_mmul_avm_address;
    wire [0:0] mmul_function_out_lm14017_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm14017_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm14017_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm14017_mmul_avm_read;
    wire [0:0] mmul_function_out_lm14017_mmul_avm_write;
    wire [31:0] mmul_function_out_lm14017_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm14418_mmul_avm_address;
    wire [0:0] mmul_function_out_lm14418_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm14418_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm14418_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm14418_mmul_avm_read;
    wire [0:0] mmul_function_out_lm14418_mmul_avm_write;
    wire [31:0] mmul_function_out_lm14418_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm14819_mmul_avm_address;
    wire [0:0] mmul_function_out_lm14819_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm14819_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm14819_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm14819_mmul_avm_read;
    wire [0:0] mmul_function_out_lm14819_mmul_avm_write;
    wire [31:0] mmul_function_out_lm14819_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm15220_mmul_avm_address;
    wire [0:0] mmul_function_out_lm15220_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm15220_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm15220_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm15220_mmul_avm_read;
    wire [0:0] mmul_function_out_lm15220_mmul_avm_write;
    wire [31:0] mmul_function_out_lm15220_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm15621_mmul_avm_address;
    wire [0:0] mmul_function_out_lm15621_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm15621_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm15621_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm15621_mmul_avm_read;
    wire [0:0] mmul_function_out_lm15621_mmul_avm_write;
    wire [31:0] mmul_function_out_lm15621_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm16022_mmul_avm_address;
    wire [0:0] mmul_function_out_lm16022_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm16022_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm16022_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm16022_mmul_avm_read;
    wire [0:0] mmul_function_out_lm16022_mmul_avm_write;
    wire [31:0] mmul_function_out_lm16022_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm16423_mmul_avm_address;
    wire [0:0] mmul_function_out_lm16423_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm16423_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm16423_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm16423_mmul_avm_read;
    wire [0:0] mmul_function_out_lm16423_mmul_avm_write;
    wire [31:0] mmul_function_out_lm16423_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm16824_mmul_avm_address;
    wire [0:0] mmul_function_out_lm16824_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm16824_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm16824_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm16824_mmul_avm_read;
    wire [0:0] mmul_function_out_lm16824_mmul_avm_write;
    wire [31:0] mmul_function_out_lm16824_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm17225_mmul_avm_address;
    wire [0:0] mmul_function_out_lm17225_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm17225_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm17225_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm17225_mmul_avm_read;
    wire [0:0] mmul_function_out_lm17225_mmul_avm_write;
    wire [31:0] mmul_function_out_lm17225_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm17626_mmul_avm_address;
    wire [0:0] mmul_function_out_lm17626_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm17626_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm17626_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm17626_mmul_avm_read;
    wire [0:0] mmul_function_out_lm17626_mmul_avm_write;
    wire [31:0] mmul_function_out_lm17626_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm18027_mmul_avm_address;
    wire [0:0] mmul_function_out_lm18027_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm18027_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm18027_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm18027_mmul_avm_read;
    wire [0:0] mmul_function_out_lm18027_mmul_avm_write;
    wire [31:0] mmul_function_out_lm18027_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm18428_mmul_avm_address;
    wire [0:0] mmul_function_out_lm18428_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm18428_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm18428_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm18428_mmul_avm_read;
    wire [0:0] mmul_function_out_lm18428_mmul_avm_write;
    wire [31:0] mmul_function_out_lm18428_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm18829_mmul_avm_address;
    wire [0:0] mmul_function_out_lm18829_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm18829_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm18829_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm18829_mmul_avm_read;
    wire [0:0] mmul_function_out_lm18829_mmul_avm_write;
    wire [31:0] mmul_function_out_lm18829_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm19230_mmul_avm_address;
    wire [0:0] mmul_function_out_lm19230_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm19230_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm19230_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm19230_mmul_avm_read;
    wire [0:0] mmul_function_out_lm19230_mmul_avm_write;
    wire [31:0] mmul_function_out_lm19230_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm19631_mmul_avm_address;
    wire [0:0] mmul_function_out_lm19631_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm19631_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm19631_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm19631_mmul_avm_read;
    wire [0:0] mmul_function_out_lm19631_mmul_avm_write;
    wire [31:0] mmul_function_out_lm19631_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm20032_mmul_avm_address;
    wire [0:0] mmul_function_out_lm20032_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm20032_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm20032_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm20032_mmul_avm_read;
    wire [0:0] mmul_function_out_lm20032_mmul_avm_write;
    wire [31:0] mmul_function_out_lm20032_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm20433_mmul_avm_address;
    wire [0:0] mmul_function_out_lm20433_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm20433_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm20433_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm20433_mmul_avm_read;
    wire [0:0] mmul_function_out_lm20433_mmul_avm_write;
    wire [31:0] mmul_function_out_lm20433_mmul_avm_writedata;
    wire [30:0] mmul_function_out_lm76_mmul_avm_address;
    wire [4:0] mmul_function_out_lm76_mmul_avm_burstcount;
    wire [63:0] mmul_function_out_lm76_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm76_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm76_mmul_avm_read;
    wire [0:0] mmul_function_out_lm76_mmul_avm_write;
    wire [511:0] mmul_function_out_lm76_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm802_mmul_avm_address;
    wire [0:0] mmul_function_out_lm802_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm802_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm802_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm802_mmul_avm_read;
    wire [0:0] mmul_function_out_lm802_mmul_avm_write;
    wire [31:0] mmul_function_out_lm802_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm843_mmul_avm_address;
    wire [0:0] mmul_function_out_lm843_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm843_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm843_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm843_mmul_avm_read;
    wire [0:0] mmul_function_out_lm843_mmul_avm_write;
    wire [31:0] mmul_function_out_lm843_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm884_mmul_avm_address;
    wire [0:0] mmul_function_out_lm884_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm884_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm884_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm884_mmul_avm_read;
    wire [0:0] mmul_function_out_lm884_mmul_avm_write;
    wire [31:0] mmul_function_out_lm884_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm925_mmul_avm_address;
    wire [0:0] mmul_function_out_lm925_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm925_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm925_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm925_mmul_avm_read;
    wire [0:0] mmul_function_out_lm925_mmul_avm_write;
    wire [31:0] mmul_function_out_lm925_mmul_avm_writedata;
    wire [31:0] mmul_function_out_lm966_mmul_avm_address;
    wire [0:0] mmul_function_out_lm966_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_lm966_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm966_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm966_mmul_avm_read;
    wire [0:0] mmul_function_out_lm966_mmul_avm_write;
    wire [31:0] mmul_function_out_lm966_mmul_avm_writedata;
    wire [30:0] mmul_function_out_lm_mmul_avm_address;
    wire [4:0] mmul_function_out_lm_mmul_avm_burstcount;
    wire [63:0] mmul_function_out_lm_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm_mmul_avm_read;
    wire [0:0] mmul_function_out_lm_mmul_avm_write;
    wire [511:0] mmul_function_out_lm_mmul_avm_writedata;
    wire [31:0] mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address;
    wire [0:0] mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount;
    wire [127:0] mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable;
    wire [0:0] mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read;
    wire [0:0] mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write;
    wire [1023:0] mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata;
    wire [31:0] mmul_function_out_memdep_95_mmul_avm_address;
    wire [0:0] mmul_function_out_memdep_95_mmul_avm_burstcount;
    wire [127:0] mmul_function_out_memdep_95_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_memdep_95_mmul_avm_enable;
    wire [0:0] mmul_function_out_memdep_95_mmul_avm_read;
    wire [0:0] mmul_function_out_memdep_95_mmul_avm_write;
    wire [1023:0] mmul_function_out_memdep_95_mmul_avm_writedata;
    wire [31:0] mmul_function_out_memdep_mmul_avm_address;
    wire [0:0] mmul_function_out_memdep_mmul_avm_burstcount;
    wire [3:0] mmul_function_out_memdep_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_memdep_mmul_avm_enable;
    wire [0:0] mmul_function_out_memdep_mmul_avm_read;
    wire [0:0] mmul_function_out_memdep_mmul_avm_write;
    wire [31:0] mmul_function_out_memdep_mmul_avm_writedata;
    wire [0:0] mmul_function_out_o_active_unnamed_mmul7;
    wire [63:0] mmul_function_out_primWireOut;
    wire [0:0] mmul_function_out_stall_out;
    wire [30:0] mmul_function_out_unnamed_mmul7_mmul_avm_address;
    wire [4:0] mmul_function_out_unnamed_mmul7_mmul_avm_burstcount;
    wire [63:0] mmul_function_out_unnamed_mmul7_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_unnamed_mmul7_mmul_avm_enable;
    wire [0:0] mmul_function_out_unnamed_mmul7_mmul_avm_read;
    wire [0:0] mmul_function_out_unnamed_mmul7_mmul_avm_write;
    wire [511:0] mmul_function_out_unnamed_mmul7_mmul_avm_writedata;
    wire [0:0] mmul_function_out_valid_out;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // const_32_bit_zero(CONSTANT,10)
    assign const_32_bit_zero_q = $unsigned(32'b00000000000000000000000000000000);

    // embedded_issuer(EXTIFACE,11)
    assign embedded_issuer_done_hw_wg_id_in = const_32_bit_zero_q;
    assign embedded_issuer_global_id_in_0 = global_id_0;
    assign embedded_issuer_global_id_in_1 = global_id_1;
    assign embedded_issuer_global_id_in_2 = mmul_function_out_primWireOut;
    assign embedded_issuer_group_id_in_0 = group_id_0;
    assign embedded_issuer_group_id_in_1 = group_id_1;
    assign embedded_issuer_group_id_in_2 = mmul_function_out_primWireOut[31:0];
    assign embedded_issuer_local_id_in_0 = local_id_0;
    assign embedded_issuer_local_id_in_1 = local_id_1;
    assign embedded_issuer_local_id_in_2 = mmul_function_out_primWireOut[31:0];
    assign embedded_issuer_stall_entry = mmul_function_out_stall_out;
    assign embedded_issuer_stall_exit = GND_q;
    assign embedded_issuer_valid_exit = mmul_function_out_valid_out;
    assign embedded_issuer_valid_in = kernel_valid_in;
    assign embedded_issuer_workgroup_size = workgroup_size;
    assign embedded_issuer_stall_entry_bitsignaltemp = embedded_issuer_stall_entry[0];
    assign embedded_issuer_stall_exit_bitsignaltemp = embedded_issuer_stall_exit[0];
    assign embedded_issuer_valid_exit_bitsignaltemp = embedded_issuer_valid_exit[0];
    assign embedded_issuer_valid_in_bitsignaltemp = embedded_issuer_valid_in[0];
    assign embedded_issuer_stall_out[0] = embedded_issuer_stall_out_bitsignaltemp;
    assign embedded_issuer_valid_entry[0] = embedded_issuer_valid_entry_bitsignaltemp;
    acl_embedded_workgroup_issuer_dspba #(
        .ASYNC_RESET(1),
        .GLOBAL_ID_WIDTH(64),
        .MAX_SIMULTANEOUS_WORKGROUPS(5),
        .MAX_WORKGROUP_SIZE(128),
        .SYNCHRONIZE_RESET(0),
        .WORKGROUP_EXIT_ORDER("fifo")
    ) theembedded_issuer (
        .done_hw_wg_id_in(const_32_bit_zero_q),
        .global_id_in_0(global_id_0),
        .global_id_in_1(global_id_1),
        .global_id_in_2(mmul_function_out_primWireOut),
        .group_id_in_0(group_id_0),
        .group_id_in_1(group_id_1),
        .group_id_in_2(mmul_function_out_primWireOut[31:0]),
        .local_id_in_0(local_id_0),
        .local_id_in_1(local_id_1),
        .local_id_in_2(mmul_function_out_primWireOut[31:0]),
        .stall_entry(embedded_issuer_stall_entry_bitsignaltemp),
        .stall_exit(embedded_issuer_stall_exit_bitsignaltemp),
        .valid_exit(embedded_issuer_valid_exit_bitsignaltemp),
        .valid_in(embedded_issuer_valid_in_bitsignaltemp),
        .workgroup_size(workgroup_size),
        .global_id_out_0(embedded_issuer_global_id_out_0),
        .global_id_out_1(embedded_issuer_global_id_out_1),
        .group_id_out_0(embedded_issuer_group_id_out_0),
        .group_id_out_1(embedded_issuer_group_id_out_1),
        .local_id_out_0(embedded_issuer_local_id_out_0),
        .local_id_out_1(embedded_issuer_local_id_out_1),
        .stall_out(embedded_issuer_stall_out_bitsignaltemp),
        .valid_entry(embedded_issuer_valid_entry_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // arg_N_select(BITSELECT,8)
    assign arg_N_select_b = kernel_arguments[31:0];

    // arg_C_select(BITSELECT,7)
    assign arg_C_select_b = kernel_arguments[223:160];

    // arg_Bwrk_select(BITSELECT,6)
    assign arg_Bwrk_select_b = kernel_arguments[287:256];

    // ip_dsdk_adapt_cast189(BITSELECT,200)
    assign ip_dsdk_adapt_cast189_b = {32'b00000000000000000000000000000000, arg_Bwrk_select_b[31:0]};

    // arg_B_select(BITSELECT,5)
    assign arg_B_select_b = kernel_arguments[159:96];

    // arg_Awrk_select(BITSELECT,4)
    assign arg_Awrk_select_b = kernel_arguments[255:224];

    // ip_dsdk_adapt_cast188(BITSELECT,199)
    assign ip_dsdk_adapt_cast188_b = {32'b00000000000000000000000000000000, arg_Awrk_select_b[31:0]};

    // arg_A_select(BITSELECT,3)
    assign arg_A_select_b = kernel_arguments[95:32];

    // mmul_function(BLACKBOX,201)
    mmul_function themmul_function (
        .in_arg_A(arg_A_select_b),
        .in_arg_Awrk(ip_dsdk_adapt_cast188_b),
        .in_arg_B(arg_B_select_b),
        .in_arg_Bwrk(ip_dsdk_adapt_cast189_b),
        .in_arg_C(arg_C_select_b),
        .in_arg_N(arg_N_select_b),
        .in_arg_acl_global_id_0(embedded_issuer_global_id_out_0),
        .in_arg_acl_global_id_1(embedded_issuer_global_id_out_1),
        .in_arg_acl_global_size_0(global_size_0),
        .in_arg_acl_global_size_1(global_size_1),
        .in_arg_acl_global_size_2(global_size_2),
        .in_arg_acl_group_id_0(embedded_issuer_group_id_out_0),
        .in_arg_acl_group_id_1(embedded_issuer_group_id_out_1),
        .in_arg_acl_local_id_0(embedded_issuer_local_id_out_0),
        .in_arg_acl_local_id_1(embedded_issuer_local_id_out_1),
        .in_arg_acl_local_size_0(local_size_0),
        .in_arg_acl_local_size_1(local_size_1),
        .in_arg_acl_local_size_2(local_size_2),
        .in_lm1007_mmul_avm_readdata(avm_lm1007_mmul_readdata),
        .in_lm1007_mmul_avm_readdatavalid(avm_lm1007_mmul_readdatavalid),
        .in_lm1007_mmul_avm_waitrequest(avm_lm1007_mmul_waitrequest),
        .in_lm1007_mmul_avm_writeack(avm_lm1007_mmul_writeack),
        .in_lm1048_mmul_avm_readdata(avm_lm1048_mmul_readdata),
        .in_lm1048_mmul_avm_readdatavalid(avm_lm1048_mmul_readdatavalid),
        .in_lm1048_mmul_avm_waitrequest(avm_lm1048_mmul_waitrequest),
        .in_lm1048_mmul_avm_writeack(avm_lm1048_mmul_writeack),
        .in_lm1089_mmul_avm_readdata(avm_lm1089_mmul_readdata),
        .in_lm1089_mmul_avm_readdatavalid(avm_lm1089_mmul_readdatavalid),
        .in_lm1089_mmul_avm_waitrequest(avm_lm1089_mmul_waitrequest),
        .in_lm1089_mmul_avm_writeack(avm_lm1089_mmul_writeack),
        .in_lm11210_mmul_avm_readdata(avm_lm11210_mmul_readdata),
        .in_lm11210_mmul_avm_readdatavalid(avm_lm11210_mmul_readdatavalid),
        .in_lm11210_mmul_avm_waitrequest(avm_lm11210_mmul_waitrequest),
        .in_lm11210_mmul_avm_writeack(avm_lm11210_mmul_writeack),
        .in_lm11611_mmul_avm_readdata(avm_lm11611_mmul_readdata),
        .in_lm11611_mmul_avm_readdatavalid(avm_lm11611_mmul_readdatavalid),
        .in_lm11611_mmul_avm_waitrequest(avm_lm11611_mmul_waitrequest),
        .in_lm11611_mmul_avm_writeack(avm_lm11611_mmul_writeack),
        .in_lm12012_mmul_avm_readdata(avm_lm12012_mmul_readdata),
        .in_lm12012_mmul_avm_readdatavalid(avm_lm12012_mmul_readdatavalid),
        .in_lm12012_mmul_avm_waitrequest(avm_lm12012_mmul_waitrequest),
        .in_lm12012_mmul_avm_writeack(avm_lm12012_mmul_writeack),
        .in_lm12413_mmul_avm_readdata(avm_lm12413_mmul_readdata),
        .in_lm12413_mmul_avm_readdatavalid(avm_lm12413_mmul_readdatavalid),
        .in_lm12413_mmul_avm_waitrequest(avm_lm12413_mmul_waitrequest),
        .in_lm12413_mmul_avm_writeack(avm_lm12413_mmul_writeack),
        .in_lm12814_mmul_avm_readdata(avm_lm12814_mmul_readdata),
        .in_lm12814_mmul_avm_readdatavalid(avm_lm12814_mmul_readdatavalid),
        .in_lm12814_mmul_avm_waitrequest(avm_lm12814_mmul_waitrequest),
        .in_lm12814_mmul_avm_writeack(avm_lm12814_mmul_writeack),
        .in_lm13215_mmul_avm_readdata(avm_lm13215_mmul_readdata),
        .in_lm13215_mmul_avm_readdatavalid(avm_lm13215_mmul_readdatavalid),
        .in_lm13215_mmul_avm_waitrequest(avm_lm13215_mmul_waitrequest),
        .in_lm13215_mmul_avm_writeack(avm_lm13215_mmul_writeack),
        .in_lm13616_mmul_avm_readdata(avm_lm13616_mmul_readdata),
        .in_lm13616_mmul_avm_readdatavalid(avm_lm13616_mmul_readdatavalid),
        .in_lm13616_mmul_avm_waitrequest(avm_lm13616_mmul_waitrequest),
        .in_lm13616_mmul_avm_writeack(avm_lm13616_mmul_writeack),
        .in_lm14017_mmul_avm_readdata(avm_lm14017_mmul_readdata),
        .in_lm14017_mmul_avm_readdatavalid(avm_lm14017_mmul_readdatavalid),
        .in_lm14017_mmul_avm_waitrequest(avm_lm14017_mmul_waitrequest),
        .in_lm14017_mmul_avm_writeack(avm_lm14017_mmul_writeack),
        .in_lm14418_mmul_avm_readdata(avm_lm14418_mmul_readdata),
        .in_lm14418_mmul_avm_readdatavalid(avm_lm14418_mmul_readdatavalid),
        .in_lm14418_mmul_avm_waitrequest(avm_lm14418_mmul_waitrequest),
        .in_lm14418_mmul_avm_writeack(avm_lm14418_mmul_writeack),
        .in_lm14819_mmul_avm_readdata(avm_lm14819_mmul_readdata),
        .in_lm14819_mmul_avm_readdatavalid(avm_lm14819_mmul_readdatavalid),
        .in_lm14819_mmul_avm_waitrequest(avm_lm14819_mmul_waitrequest),
        .in_lm14819_mmul_avm_writeack(avm_lm14819_mmul_writeack),
        .in_lm15220_mmul_avm_readdata(avm_lm15220_mmul_readdata),
        .in_lm15220_mmul_avm_readdatavalid(avm_lm15220_mmul_readdatavalid),
        .in_lm15220_mmul_avm_waitrequest(avm_lm15220_mmul_waitrequest),
        .in_lm15220_mmul_avm_writeack(avm_lm15220_mmul_writeack),
        .in_lm15621_mmul_avm_readdata(avm_lm15621_mmul_readdata),
        .in_lm15621_mmul_avm_readdatavalid(avm_lm15621_mmul_readdatavalid),
        .in_lm15621_mmul_avm_waitrequest(avm_lm15621_mmul_waitrequest),
        .in_lm15621_mmul_avm_writeack(avm_lm15621_mmul_writeack),
        .in_lm16022_mmul_avm_readdata(avm_lm16022_mmul_readdata),
        .in_lm16022_mmul_avm_readdatavalid(avm_lm16022_mmul_readdatavalid),
        .in_lm16022_mmul_avm_waitrequest(avm_lm16022_mmul_waitrequest),
        .in_lm16022_mmul_avm_writeack(avm_lm16022_mmul_writeack),
        .in_lm16423_mmul_avm_readdata(avm_lm16423_mmul_readdata),
        .in_lm16423_mmul_avm_readdatavalid(avm_lm16423_mmul_readdatavalid),
        .in_lm16423_mmul_avm_waitrequest(avm_lm16423_mmul_waitrequest),
        .in_lm16423_mmul_avm_writeack(avm_lm16423_mmul_writeack),
        .in_lm16824_mmul_avm_readdata(avm_lm16824_mmul_readdata),
        .in_lm16824_mmul_avm_readdatavalid(avm_lm16824_mmul_readdatavalid),
        .in_lm16824_mmul_avm_waitrequest(avm_lm16824_mmul_waitrequest),
        .in_lm16824_mmul_avm_writeack(avm_lm16824_mmul_writeack),
        .in_lm17225_mmul_avm_readdata(avm_lm17225_mmul_readdata),
        .in_lm17225_mmul_avm_readdatavalid(avm_lm17225_mmul_readdatavalid),
        .in_lm17225_mmul_avm_waitrequest(avm_lm17225_mmul_waitrequest),
        .in_lm17225_mmul_avm_writeack(avm_lm17225_mmul_writeack),
        .in_lm17626_mmul_avm_readdata(avm_lm17626_mmul_readdata),
        .in_lm17626_mmul_avm_readdatavalid(avm_lm17626_mmul_readdatavalid),
        .in_lm17626_mmul_avm_waitrequest(avm_lm17626_mmul_waitrequest),
        .in_lm17626_mmul_avm_writeack(avm_lm17626_mmul_writeack),
        .in_lm18027_mmul_avm_readdata(avm_lm18027_mmul_readdata),
        .in_lm18027_mmul_avm_readdatavalid(avm_lm18027_mmul_readdatavalid),
        .in_lm18027_mmul_avm_waitrequest(avm_lm18027_mmul_waitrequest),
        .in_lm18027_mmul_avm_writeack(avm_lm18027_mmul_writeack),
        .in_lm18428_mmul_avm_readdata(avm_lm18428_mmul_readdata),
        .in_lm18428_mmul_avm_readdatavalid(avm_lm18428_mmul_readdatavalid),
        .in_lm18428_mmul_avm_waitrequest(avm_lm18428_mmul_waitrequest),
        .in_lm18428_mmul_avm_writeack(avm_lm18428_mmul_writeack),
        .in_lm18829_mmul_avm_readdata(avm_lm18829_mmul_readdata),
        .in_lm18829_mmul_avm_readdatavalid(avm_lm18829_mmul_readdatavalid),
        .in_lm18829_mmul_avm_waitrequest(avm_lm18829_mmul_waitrequest),
        .in_lm18829_mmul_avm_writeack(avm_lm18829_mmul_writeack),
        .in_lm19230_mmul_avm_readdata(avm_lm19230_mmul_readdata),
        .in_lm19230_mmul_avm_readdatavalid(avm_lm19230_mmul_readdatavalid),
        .in_lm19230_mmul_avm_waitrequest(avm_lm19230_mmul_waitrequest),
        .in_lm19230_mmul_avm_writeack(avm_lm19230_mmul_writeack),
        .in_lm19631_mmul_avm_readdata(avm_lm19631_mmul_readdata),
        .in_lm19631_mmul_avm_readdatavalid(avm_lm19631_mmul_readdatavalid),
        .in_lm19631_mmul_avm_waitrequest(avm_lm19631_mmul_waitrequest),
        .in_lm19631_mmul_avm_writeack(avm_lm19631_mmul_writeack),
        .in_lm20032_mmul_avm_readdata(avm_lm20032_mmul_readdata),
        .in_lm20032_mmul_avm_readdatavalid(avm_lm20032_mmul_readdatavalid),
        .in_lm20032_mmul_avm_waitrequest(avm_lm20032_mmul_waitrequest),
        .in_lm20032_mmul_avm_writeack(avm_lm20032_mmul_writeack),
        .in_lm20433_mmul_avm_readdata(avm_lm20433_mmul_readdata),
        .in_lm20433_mmul_avm_readdatavalid(avm_lm20433_mmul_readdatavalid),
        .in_lm20433_mmul_avm_waitrequest(avm_lm20433_mmul_waitrequest),
        .in_lm20433_mmul_avm_writeack(avm_lm20433_mmul_writeack),
        .in_lm76_mmul_avm_readdata(avm_lm76_mmul_readdata),
        .in_lm76_mmul_avm_readdatavalid(avm_lm76_mmul_readdatavalid),
        .in_lm76_mmul_avm_waitrequest(avm_lm76_mmul_waitrequest),
        .in_lm76_mmul_avm_writeack(avm_lm76_mmul_writeack),
        .in_lm802_mmul_avm_readdata(avm_lm802_mmul_readdata),
        .in_lm802_mmul_avm_readdatavalid(avm_lm802_mmul_readdatavalid),
        .in_lm802_mmul_avm_waitrequest(avm_lm802_mmul_waitrequest),
        .in_lm802_mmul_avm_writeack(avm_lm802_mmul_writeack),
        .in_lm843_mmul_avm_readdata(avm_lm843_mmul_readdata),
        .in_lm843_mmul_avm_readdatavalid(avm_lm843_mmul_readdatavalid),
        .in_lm843_mmul_avm_waitrequest(avm_lm843_mmul_waitrequest),
        .in_lm843_mmul_avm_writeack(avm_lm843_mmul_writeack),
        .in_lm884_mmul_avm_readdata(avm_lm884_mmul_readdata),
        .in_lm884_mmul_avm_readdatavalid(avm_lm884_mmul_readdatavalid),
        .in_lm884_mmul_avm_waitrequest(avm_lm884_mmul_waitrequest),
        .in_lm884_mmul_avm_writeack(avm_lm884_mmul_writeack),
        .in_lm925_mmul_avm_readdata(avm_lm925_mmul_readdata),
        .in_lm925_mmul_avm_readdatavalid(avm_lm925_mmul_readdatavalid),
        .in_lm925_mmul_avm_waitrequest(avm_lm925_mmul_waitrequest),
        .in_lm925_mmul_avm_writeack(avm_lm925_mmul_writeack),
        .in_lm966_mmul_avm_readdata(avm_lm966_mmul_readdata),
        .in_lm966_mmul_avm_readdatavalid(avm_lm966_mmul_readdatavalid),
        .in_lm966_mmul_avm_waitrequest(avm_lm966_mmul_waitrequest),
        .in_lm966_mmul_avm_writeack(avm_lm966_mmul_writeack),
        .in_lm_mmul_avm_readdata(avm_lm_mmul_readdata),
        .in_lm_mmul_avm_readdatavalid(avm_lm_mmul_readdatavalid),
        .in_lm_mmul_avm_waitrequest(avm_lm_mmul_waitrequest),
        .in_lm_mmul_avm_writeack(avm_lm_mmul_writeack),
        .in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdata(avm_memcoalesce_load_mmul_fpgaunique_321_mmul_readdata),
        .in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdatavalid(avm_memcoalesce_load_mmul_fpgaunique_321_mmul_readdatavalid),
        .in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_waitrequest(avm_memcoalesce_load_mmul_fpgaunique_321_mmul_waitrequest),
        .in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writeack(avm_memcoalesce_load_mmul_fpgaunique_321_mmul_writeack),
        .in_memdep_95_mmul_avm_readdata(avm_memdep_95_mmul_readdata),
        .in_memdep_95_mmul_avm_readdatavalid(avm_memdep_95_mmul_readdatavalid),
        .in_memdep_95_mmul_avm_waitrequest(avm_memdep_95_mmul_waitrequest),
        .in_memdep_95_mmul_avm_writeack(avm_memdep_95_mmul_writeack),
        .in_memdep_mmul_avm_readdata(avm_memdep_mmul_readdata),
        .in_memdep_mmul_avm_readdatavalid(avm_memdep_mmul_readdatavalid),
        .in_memdep_mmul_avm_waitrequest(avm_memdep_mmul_waitrequest),
        .in_memdep_mmul_avm_writeack(avm_memdep_mmul_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_unnamed_mmul7_mmul_avm_readdata(avm_unnamed_mmul7_mmul_readdata),
        .in_unnamed_mmul7_mmul_avm_readdatavalid(avm_unnamed_mmul7_mmul_readdatavalid),
        .in_unnamed_mmul7_mmul_avm_waitrequest(avm_unnamed_mmul7_mmul_waitrequest),
        .in_unnamed_mmul7_mmul_avm_writeack(avm_unnamed_mmul7_mmul_writeack),
        .in_valid_in(embedded_issuer_valid_entry),
        .in_workgroup_size(workgroup_size),
        .out_lm1007_mmul_avm_address(mmul_function_out_lm1007_mmul_avm_address),
        .out_lm1007_mmul_avm_burstcount(mmul_function_out_lm1007_mmul_avm_burstcount),
        .out_lm1007_mmul_avm_byteenable(mmul_function_out_lm1007_mmul_avm_byteenable),
        .out_lm1007_mmul_avm_enable(mmul_function_out_lm1007_mmul_avm_enable),
        .out_lm1007_mmul_avm_read(mmul_function_out_lm1007_mmul_avm_read),
        .out_lm1007_mmul_avm_write(mmul_function_out_lm1007_mmul_avm_write),
        .out_lm1007_mmul_avm_writedata(mmul_function_out_lm1007_mmul_avm_writedata),
        .out_lm1048_mmul_avm_address(mmul_function_out_lm1048_mmul_avm_address),
        .out_lm1048_mmul_avm_burstcount(mmul_function_out_lm1048_mmul_avm_burstcount),
        .out_lm1048_mmul_avm_byteenable(mmul_function_out_lm1048_mmul_avm_byteenable),
        .out_lm1048_mmul_avm_enable(mmul_function_out_lm1048_mmul_avm_enable),
        .out_lm1048_mmul_avm_read(mmul_function_out_lm1048_mmul_avm_read),
        .out_lm1048_mmul_avm_write(mmul_function_out_lm1048_mmul_avm_write),
        .out_lm1048_mmul_avm_writedata(mmul_function_out_lm1048_mmul_avm_writedata),
        .out_lm1089_mmul_avm_address(mmul_function_out_lm1089_mmul_avm_address),
        .out_lm1089_mmul_avm_burstcount(mmul_function_out_lm1089_mmul_avm_burstcount),
        .out_lm1089_mmul_avm_byteenable(mmul_function_out_lm1089_mmul_avm_byteenable),
        .out_lm1089_mmul_avm_enable(mmul_function_out_lm1089_mmul_avm_enable),
        .out_lm1089_mmul_avm_read(mmul_function_out_lm1089_mmul_avm_read),
        .out_lm1089_mmul_avm_write(mmul_function_out_lm1089_mmul_avm_write),
        .out_lm1089_mmul_avm_writedata(mmul_function_out_lm1089_mmul_avm_writedata),
        .out_lm11210_mmul_avm_address(mmul_function_out_lm11210_mmul_avm_address),
        .out_lm11210_mmul_avm_burstcount(mmul_function_out_lm11210_mmul_avm_burstcount),
        .out_lm11210_mmul_avm_byteenable(mmul_function_out_lm11210_mmul_avm_byteenable),
        .out_lm11210_mmul_avm_enable(mmul_function_out_lm11210_mmul_avm_enable),
        .out_lm11210_mmul_avm_read(mmul_function_out_lm11210_mmul_avm_read),
        .out_lm11210_mmul_avm_write(mmul_function_out_lm11210_mmul_avm_write),
        .out_lm11210_mmul_avm_writedata(mmul_function_out_lm11210_mmul_avm_writedata),
        .out_lm11611_mmul_avm_address(mmul_function_out_lm11611_mmul_avm_address),
        .out_lm11611_mmul_avm_burstcount(mmul_function_out_lm11611_mmul_avm_burstcount),
        .out_lm11611_mmul_avm_byteenable(mmul_function_out_lm11611_mmul_avm_byteenable),
        .out_lm11611_mmul_avm_enable(mmul_function_out_lm11611_mmul_avm_enable),
        .out_lm11611_mmul_avm_read(mmul_function_out_lm11611_mmul_avm_read),
        .out_lm11611_mmul_avm_write(mmul_function_out_lm11611_mmul_avm_write),
        .out_lm11611_mmul_avm_writedata(mmul_function_out_lm11611_mmul_avm_writedata),
        .out_lm12012_mmul_avm_address(mmul_function_out_lm12012_mmul_avm_address),
        .out_lm12012_mmul_avm_burstcount(mmul_function_out_lm12012_mmul_avm_burstcount),
        .out_lm12012_mmul_avm_byteenable(mmul_function_out_lm12012_mmul_avm_byteenable),
        .out_lm12012_mmul_avm_enable(mmul_function_out_lm12012_mmul_avm_enable),
        .out_lm12012_mmul_avm_read(mmul_function_out_lm12012_mmul_avm_read),
        .out_lm12012_mmul_avm_write(mmul_function_out_lm12012_mmul_avm_write),
        .out_lm12012_mmul_avm_writedata(mmul_function_out_lm12012_mmul_avm_writedata),
        .out_lm12413_mmul_avm_address(mmul_function_out_lm12413_mmul_avm_address),
        .out_lm12413_mmul_avm_burstcount(mmul_function_out_lm12413_mmul_avm_burstcount),
        .out_lm12413_mmul_avm_byteenable(mmul_function_out_lm12413_mmul_avm_byteenable),
        .out_lm12413_mmul_avm_enable(mmul_function_out_lm12413_mmul_avm_enable),
        .out_lm12413_mmul_avm_read(mmul_function_out_lm12413_mmul_avm_read),
        .out_lm12413_mmul_avm_write(mmul_function_out_lm12413_mmul_avm_write),
        .out_lm12413_mmul_avm_writedata(mmul_function_out_lm12413_mmul_avm_writedata),
        .out_lm12814_mmul_avm_address(mmul_function_out_lm12814_mmul_avm_address),
        .out_lm12814_mmul_avm_burstcount(mmul_function_out_lm12814_mmul_avm_burstcount),
        .out_lm12814_mmul_avm_byteenable(mmul_function_out_lm12814_mmul_avm_byteenable),
        .out_lm12814_mmul_avm_enable(mmul_function_out_lm12814_mmul_avm_enable),
        .out_lm12814_mmul_avm_read(mmul_function_out_lm12814_mmul_avm_read),
        .out_lm12814_mmul_avm_write(mmul_function_out_lm12814_mmul_avm_write),
        .out_lm12814_mmul_avm_writedata(mmul_function_out_lm12814_mmul_avm_writedata),
        .out_lm13215_mmul_avm_address(mmul_function_out_lm13215_mmul_avm_address),
        .out_lm13215_mmul_avm_burstcount(mmul_function_out_lm13215_mmul_avm_burstcount),
        .out_lm13215_mmul_avm_byteenable(mmul_function_out_lm13215_mmul_avm_byteenable),
        .out_lm13215_mmul_avm_enable(mmul_function_out_lm13215_mmul_avm_enable),
        .out_lm13215_mmul_avm_read(mmul_function_out_lm13215_mmul_avm_read),
        .out_lm13215_mmul_avm_write(mmul_function_out_lm13215_mmul_avm_write),
        .out_lm13215_mmul_avm_writedata(mmul_function_out_lm13215_mmul_avm_writedata),
        .out_lm13616_mmul_avm_address(mmul_function_out_lm13616_mmul_avm_address),
        .out_lm13616_mmul_avm_burstcount(mmul_function_out_lm13616_mmul_avm_burstcount),
        .out_lm13616_mmul_avm_byteenable(mmul_function_out_lm13616_mmul_avm_byteenable),
        .out_lm13616_mmul_avm_enable(mmul_function_out_lm13616_mmul_avm_enable),
        .out_lm13616_mmul_avm_read(mmul_function_out_lm13616_mmul_avm_read),
        .out_lm13616_mmul_avm_write(mmul_function_out_lm13616_mmul_avm_write),
        .out_lm13616_mmul_avm_writedata(mmul_function_out_lm13616_mmul_avm_writedata),
        .out_lm14017_mmul_avm_address(mmul_function_out_lm14017_mmul_avm_address),
        .out_lm14017_mmul_avm_burstcount(mmul_function_out_lm14017_mmul_avm_burstcount),
        .out_lm14017_mmul_avm_byteenable(mmul_function_out_lm14017_mmul_avm_byteenable),
        .out_lm14017_mmul_avm_enable(mmul_function_out_lm14017_mmul_avm_enable),
        .out_lm14017_mmul_avm_read(mmul_function_out_lm14017_mmul_avm_read),
        .out_lm14017_mmul_avm_write(mmul_function_out_lm14017_mmul_avm_write),
        .out_lm14017_mmul_avm_writedata(mmul_function_out_lm14017_mmul_avm_writedata),
        .out_lm14418_mmul_avm_address(mmul_function_out_lm14418_mmul_avm_address),
        .out_lm14418_mmul_avm_burstcount(mmul_function_out_lm14418_mmul_avm_burstcount),
        .out_lm14418_mmul_avm_byteenable(mmul_function_out_lm14418_mmul_avm_byteenable),
        .out_lm14418_mmul_avm_enable(mmul_function_out_lm14418_mmul_avm_enable),
        .out_lm14418_mmul_avm_read(mmul_function_out_lm14418_mmul_avm_read),
        .out_lm14418_mmul_avm_write(mmul_function_out_lm14418_mmul_avm_write),
        .out_lm14418_mmul_avm_writedata(mmul_function_out_lm14418_mmul_avm_writedata),
        .out_lm14819_mmul_avm_address(mmul_function_out_lm14819_mmul_avm_address),
        .out_lm14819_mmul_avm_burstcount(mmul_function_out_lm14819_mmul_avm_burstcount),
        .out_lm14819_mmul_avm_byteenable(mmul_function_out_lm14819_mmul_avm_byteenable),
        .out_lm14819_mmul_avm_enable(mmul_function_out_lm14819_mmul_avm_enable),
        .out_lm14819_mmul_avm_read(mmul_function_out_lm14819_mmul_avm_read),
        .out_lm14819_mmul_avm_write(mmul_function_out_lm14819_mmul_avm_write),
        .out_lm14819_mmul_avm_writedata(mmul_function_out_lm14819_mmul_avm_writedata),
        .out_lm15220_mmul_avm_address(mmul_function_out_lm15220_mmul_avm_address),
        .out_lm15220_mmul_avm_burstcount(mmul_function_out_lm15220_mmul_avm_burstcount),
        .out_lm15220_mmul_avm_byteenable(mmul_function_out_lm15220_mmul_avm_byteenable),
        .out_lm15220_mmul_avm_enable(mmul_function_out_lm15220_mmul_avm_enable),
        .out_lm15220_mmul_avm_read(mmul_function_out_lm15220_mmul_avm_read),
        .out_lm15220_mmul_avm_write(mmul_function_out_lm15220_mmul_avm_write),
        .out_lm15220_mmul_avm_writedata(mmul_function_out_lm15220_mmul_avm_writedata),
        .out_lm15621_mmul_avm_address(mmul_function_out_lm15621_mmul_avm_address),
        .out_lm15621_mmul_avm_burstcount(mmul_function_out_lm15621_mmul_avm_burstcount),
        .out_lm15621_mmul_avm_byteenable(mmul_function_out_lm15621_mmul_avm_byteenable),
        .out_lm15621_mmul_avm_enable(mmul_function_out_lm15621_mmul_avm_enable),
        .out_lm15621_mmul_avm_read(mmul_function_out_lm15621_mmul_avm_read),
        .out_lm15621_mmul_avm_write(mmul_function_out_lm15621_mmul_avm_write),
        .out_lm15621_mmul_avm_writedata(mmul_function_out_lm15621_mmul_avm_writedata),
        .out_lm16022_mmul_avm_address(mmul_function_out_lm16022_mmul_avm_address),
        .out_lm16022_mmul_avm_burstcount(mmul_function_out_lm16022_mmul_avm_burstcount),
        .out_lm16022_mmul_avm_byteenable(mmul_function_out_lm16022_mmul_avm_byteenable),
        .out_lm16022_mmul_avm_enable(mmul_function_out_lm16022_mmul_avm_enable),
        .out_lm16022_mmul_avm_read(mmul_function_out_lm16022_mmul_avm_read),
        .out_lm16022_mmul_avm_write(mmul_function_out_lm16022_mmul_avm_write),
        .out_lm16022_mmul_avm_writedata(mmul_function_out_lm16022_mmul_avm_writedata),
        .out_lm16423_mmul_avm_address(mmul_function_out_lm16423_mmul_avm_address),
        .out_lm16423_mmul_avm_burstcount(mmul_function_out_lm16423_mmul_avm_burstcount),
        .out_lm16423_mmul_avm_byteenable(mmul_function_out_lm16423_mmul_avm_byteenable),
        .out_lm16423_mmul_avm_enable(mmul_function_out_lm16423_mmul_avm_enable),
        .out_lm16423_mmul_avm_read(mmul_function_out_lm16423_mmul_avm_read),
        .out_lm16423_mmul_avm_write(mmul_function_out_lm16423_mmul_avm_write),
        .out_lm16423_mmul_avm_writedata(mmul_function_out_lm16423_mmul_avm_writedata),
        .out_lm16824_mmul_avm_address(mmul_function_out_lm16824_mmul_avm_address),
        .out_lm16824_mmul_avm_burstcount(mmul_function_out_lm16824_mmul_avm_burstcount),
        .out_lm16824_mmul_avm_byteenable(mmul_function_out_lm16824_mmul_avm_byteenable),
        .out_lm16824_mmul_avm_enable(mmul_function_out_lm16824_mmul_avm_enable),
        .out_lm16824_mmul_avm_read(mmul_function_out_lm16824_mmul_avm_read),
        .out_lm16824_mmul_avm_write(mmul_function_out_lm16824_mmul_avm_write),
        .out_lm16824_mmul_avm_writedata(mmul_function_out_lm16824_mmul_avm_writedata),
        .out_lm17225_mmul_avm_address(mmul_function_out_lm17225_mmul_avm_address),
        .out_lm17225_mmul_avm_burstcount(mmul_function_out_lm17225_mmul_avm_burstcount),
        .out_lm17225_mmul_avm_byteenable(mmul_function_out_lm17225_mmul_avm_byteenable),
        .out_lm17225_mmul_avm_enable(mmul_function_out_lm17225_mmul_avm_enable),
        .out_lm17225_mmul_avm_read(mmul_function_out_lm17225_mmul_avm_read),
        .out_lm17225_mmul_avm_write(mmul_function_out_lm17225_mmul_avm_write),
        .out_lm17225_mmul_avm_writedata(mmul_function_out_lm17225_mmul_avm_writedata),
        .out_lm17626_mmul_avm_address(mmul_function_out_lm17626_mmul_avm_address),
        .out_lm17626_mmul_avm_burstcount(mmul_function_out_lm17626_mmul_avm_burstcount),
        .out_lm17626_mmul_avm_byteenable(mmul_function_out_lm17626_mmul_avm_byteenable),
        .out_lm17626_mmul_avm_enable(mmul_function_out_lm17626_mmul_avm_enable),
        .out_lm17626_mmul_avm_read(mmul_function_out_lm17626_mmul_avm_read),
        .out_lm17626_mmul_avm_write(mmul_function_out_lm17626_mmul_avm_write),
        .out_lm17626_mmul_avm_writedata(mmul_function_out_lm17626_mmul_avm_writedata),
        .out_lm18027_mmul_avm_address(mmul_function_out_lm18027_mmul_avm_address),
        .out_lm18027_mmul_avm_burstcount(mmul_function_out_lm18027_mmul_avm_burstcount),
        .out_lm18027_mmul_avm_byteenable(mmul_function_out_lm18027_mmul_avm_byteenable),
        .out_lm18027_mmul_avm_enable(mmul_function_out_lm18027_mmul_avm_enable),
        .out_lm18027_mmul_avm_read(mmul_function_out_lm18027_mmul_avm_read),
        .out_lm18027_mmul_avm_write(mmul_function_out_lm18027_mmul_avm_write),
        .out_lm18027_mmul_avm_writedata(mmul_function_out_lm18027_mmul_avm_writedata),
        .out_lm18428_mmul_avm_address(mmul_function_out_lm18428_mmul_avm_address),
        .out_lm18428_mmul_avm_burstcount(mmul_function_out_lm18428_mmul_avm_burstcount),
        .out_lm18428_mmul_avm_byteenable(mmul_function_out_lm18428_mmul_avm_byteenable),
        .out_lm18428_mmul_avm_enable(mmul_function_out_lm18428_mmul_avm_enable),
        .out_lm18428_mmul_avm_read(mmul_function_out_lm18428_mmul_avm_read),
        .out_lm18428_mmul_avm_write(mmul_function_out_lm18428_mmul_avm_write),
        .out_lm18428_mmul_avm_writedata(mmul_function_out_lm18428_mmul_avm_writedata),
        .out_lm18829_mmul_avm_address(mmul_function_out_lm18829_mmul_avm_address),
        .out_lm18829_mmul_avm_burstcount(mmul_function_out_lm18829_mmul_avm_burstcount),
        .out_lm18829_mmul_avm_byteenable(mmul_function_out_lm18829_mmul_avm_byteenable),
        .out_lm18829_mmul_avm_enable(mmul_function_out_lm18829_mmul_avm_enable),
        .out_lm18829_mmul_avm_read(mmul_function_out_lm18829_mmul_avm_read),
        .out_lm18829_mmul_avm_write(mmul_function_out_lm18829_mmul_avm_write),
        .out_lm18829_mmul_avm_writedata(mmul_function_out_lm18829_mmul_avm_writedata),
        .out_lm19230_mmul_avm_address(mmul_function_out_lm19230_mmul_avm_address),
        .out_lm19230_mmul_avm_burstcount(mmul_function_out_lm19230_mmul_avm_burstcount),
        .out_lm19230_mmul_avm_byteenable(mmul_function_out_lm19230_mmul_avm_byteenable),
        .out_lm19230_mmul_avm_enable(mmul_function_out_lm19230_mmul_avm_enable),
        .out_lm19230_mmul_avm_read(mmul_function_out_lm19230_mmul_avm_read),
        .out_lm19230_mmul_avm_write(mmul_function_out_lm19230_mmul_avm_write),
        .out_lm19230_mmul_avm_writedata(mmul_function_out_lm19230_mmul_avm_writedata),
        .out_lm19631_mmul_avm_address(mmul_function_out_lm19631_mmul_avm_address),
        .out_lm19631_mmul_avm_burstcount(mmul_function_out_lm19631_mmul_avm_burstcount),
        .out_lm19631_mmul_avm_byteenable(mmul_function_out_lm19631_mmul_avm_byteenable),
        .out_lm19631_mmul_avm_enable(mmul_function_out_lm19631_mmul_avm_enable),
        .out_lm19631_mmul_avm_read(mmul_function_out_lm19631_mmul_avm_read),
        .out_lm19631_mmul_avm_write(mmul_function_out_lm19631_mmul_avm_write),
        .out_lm19631_mmul_avm_writedata(mmul_function_out_lm19631_mmul_avm_writedata),
        .out_lm20032_mmul_avm_address(mmul_function_out_lm20032_mmul_avm_address),
        .out_lm20032_mmul_avm_burstcount(mmul_function_out_lm20032_mmul_avm_burstcount),
        .out_lm20032_mmul_avm_byteenable(mmul_function_out_lm20032_mmul_avm_byteenable),
        .out_lm20032_mmul_avm_enable(mmul_function_out_lm20032_mmul_avm_enable),
        .out_lm20032_mmul_avm_read(mmul_function_out_lm20032_mmul_avm_read),
        .out_lm20032_mmul_avm_write(mmul_function_out_lm20032_mmul_avm_write),
        .out_lm20032_mmul_avm_writedata(mmul_function_out_lm20032_mmul_avm_writedata),
        .out_lm20433_mmul_avm_address(mmul_function_out_lm20433_mmul_avm_address),
        .out_lm20433_mmul_avm_burstcount(mmul_function_out_lm20433_mmul_avm_burstcount),
        .out_lm20433_mmul_avm_byteenable(mmul_function_out_lm20433_mmul_avm_byteenable),
        .out_lm20433_mmul_avm_enable(mmul_function_out_lm20433_mmul_avm_enable),
        .out_lm20433_mmul_avm_read(mmul_function_out_lm20433_mmul_avm_read),
        .out_lm20433_mmul_avm_write(mmul_function_out_lm20433_mmul_avm_write),
        .out_lm20433_mmul_avm_writedata(mmul_function_out_lm20433_mmul_avm_writedata),
        .out_lm76_mmul_avm_address(mmul_function_out_lm76_mmul_avm_address),
        .out_lm76_mmul_avm_burstcount(mmul_function_out_lm76_mmul_avm_burstcount),
        .out_lm76_mmul_avm_byteenable(mmul_function_out_lm76_mmul_avm_byteenable),
        .out_lm76_mmul_avm_enable(mmul_function_out_lm76_mmul_avm_enable),
        .out_lm76_mmul_avm_read(mmul_function_out_lm76_mmul_avm_read),
        .out_lm76_mmul_avm_write(mmul_function_out_lm76_mmul_avm_write),
        .out_lm76_mmul_avm_writedata(mmul_function_out_lm76_mmul_avm_writedata),
        .out_lm802_mmul_avm_address(mmul_function_out_lm802_mmul_avm_address),
        .out_lm802_mmul_avm_burstcount(mmul_function_out_lm802_mmul_avm_burstcount),
        .out_lm802_mmul_avm_byteenable(mmul_function_out_lm802_mmul_avm_byteenable),
        .out_lm802_mmul_avm_enable(mmul_function_out_lm802_mmul_avm_enable),
        .out_lm802_mmul_avm_read(mmul_function_out_lm802_mmul_avm_read),
        .out_lm802_mmul_avm_write(mmul_function_out_lm802_mmul_avm_write),
        .out_lm802_mmul_avm_writedata(mmul_function_out_lm802_mmul_avm_writedata),
        .out_lm843_mmul_avm_address(mmul_function_out_lm843_mmul_avm_address),
        .out_lm843_mmul_avm_burstcount(mmul_function_out_lm843_mmul_avm_burstcount),
        .out_lm843_mmul_avm_byteenable(mmul_function_out_lm843_mmul_avm_byteenable),
        .out_lm843_mmul_avm_enable(mmul_function_out_lm843_mmul_avm_enable),
        .out_lm843_mmul_avm_read(mmul_function_out_lm843_mmul_avm_read),
        .out_lm843_mmul_avm_write(mmul_function_out_lm843_mmul_avm_write),
        .out_lm843_mmul_avm_writedata(mmul_function_out_lm843_mmul_avm_writedata),
        .out_lm884_mmul_avm_address(mmul_function_out_lm884_mmul_avm_address),
        .out_lm884_mmul_avm_burstcount(mmul_function_out_lm884_mmul_avm_burstcount),
        .out_lm884_mmul_avm_byteenable(mmul_function_out_lm884_mmul_avm_byteenable),
        .out_lm884_mmul_avm_enable(mmul_function_out_lm884_mmul_avm_enable),
        .out_lm884_mmul_avm_read(mmul_function_out_lm884_mmul_avm_read),
        .out_lm884_mmul_avm_write(mmul_function_out_lm884_mmul_avm_write),
        .out_lm884_mmul_avm_writedata(mmul_function_out_lm884_mmul_avm_writedata),
        .out_lm925_mmul_avm_address(mmul_function_out_lm925_mmul_avm_address),
        .out_lm925_mmul_avm_burstcount(mmul_function_out_lm925_mmul_avm_burstcount),
        .out_lm925_mmul_avm_byteenable(mmul_function_out_lm925_mmul_avm_byteenable),
        .out_lm925_mmul_avm_enable(mmul_function_out_lm925_mmul_avm_enable),
        .out_lm925_mmul_avm_read(mmul_function_out_lm925_mmul_avm_read),
        .out_lm925_mmul_avm_write(mmul_function_out_lm925_mmul_avm_write),
        .out_lm925_mmul_avm_writedata(mmul_function_out_lm925_mmul_avm_writedata),
        .out_lm966_mmul_avm_address(mmul_function_out_lm966_mmul_avm_address),
        .out_lm966_mmul_avm_burstcount(mmul_function_out_lm966_mmul_avm_burstcount),
        .out_lm966_mmul_avm_byteenable(mmul_function_out_lm966_mmul_avm_byteenable),
        .out_lm966_mmul_avm_enable(mmul_function_out_lm966_mmul_avm_enable),
        .out_lm966_mmul_avm_read(mmul_function_out_lm966_mmul_avm_read),
        .out_lm966_mmul_avm_write(mmul_function_out_lm966_mmul_avm_write),
        .out_lm966_mmul_avm_writedata(mmul_function_out_lm966_mmul_avm_writedata),
        .out_lm_mmul_avm_address(mmul_function_out_lm_mmul_avm_address),
        .out_lm_mmul_avm_burstcount(mmul_function_out_lm_mmul_avm_burstcount),
        .out_lm_mmul_avm_byteenable(mmul_function_out_lm_mmul_avm_byteenable),
        .out_lm_mmul_avm_enable(mmul_function_out_lm_mmul_avm_enable),
        .out_lm_mmul_avm_read(mmul_function_out_lm_mmul_avm_read),
        .out_lm_mmul_avm_write(mmul_function_out_lm_mmul_avm_write),
        .out_lm_mmul_avm_writedata(mmul_function_out_lm_mmul_avm_writedata),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address(mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount(mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable(mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable(mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read(mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write(mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata(mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata),
        .out_memdep_95_mmul_avm_address(mmul_function_out_memdep_95_mmul_avm_address),
        .out_memdep_95_mmul_avm_burstcount(mmul_function_out_memdep_95_mmul_avm_burstcount),
        .out_memdep_95_mmul_avm_byteenable(mmul_function_out_memdep_95_mmul_avm_byteenable),
        .out_memdep_95_mmul_avm_enable(mmul_function_out_memdep_95_mmul_avm_enable),
        .out_memdep_95_mmul_avm_read(mmul_function_out_memdep_95_mmul_avm_read),
        .out_memdep_95_mmul_avm_write(mmul_function_out_memdep_95_mmul_avm_write),
        .out_memdep_95_mmul_avm_writedata(mmul_function_out_memdep_95_mmul_avm_writedata),
        .out_memdep_mmul_avm_address(mmul_function_out_memdep_mmul_avm_address),
        .out_memdep_mmul_avm_burstcount(mmul_function_out_memdep_mmul_avm_burstcount),
        .out_memdep_mmul_avm_byteenable(mmul_function_out_memdep_mmul_avm_byteenable),
        .out_memdep_mmul_avm_enable(mmul_function_out_memdep_mmul_avm_enable),
        .out_memdep_mmul_avm_read(mmul_function_out_memdep_mmul_avm_read),
        .out_memdep_mmul_avm_write(mmul_function_out_memdep_mmul_avm_write),
        .out_memdep_mmul_avm_writedata(mmul_function_out_memdep_mmul_avm_writedata),
        .out_o_active_unnamed_mmul7(mmul_function_out_o_active_unnamed_mmul7),
        .out_primWireOut(mmul_function_out_primWireOut),
        .out_stall_out(mmul_function_out_stall_out),
        .out_unnamed_mmul7_mmul_avm_address(mmul_function_out_unnamed_mmul7_mmul_avm_address),
        .out_unnamed_mmul7_mmul_avm_burstcount(mmul_function_out_unnamed_mmul7_mmul_avm_burstcount),
        .out_unnamed_mmul7_mmul_avm_byteenable(mmul_function_out_unnamed_mmul7_mmul_avm_byteenable),
        .out_unnamed_mmul7_mmul_avm_enable(mmul_function_out_unnamed_mmul7_mmul_avm_enable),
        .out_unnamed_mmul7_mmul_avm_read(mmul_function_out_unnamed_mmul7_mmul_avm_read),
        .out_unnamed_mmul7_mmul_avm_write(mmul_function_out_unnamed_mmul7_mmul_avm_write),
        .out_unnamed_mmul7_mmul_avm_writedata(mmul_function_out_unnamed_mmul7_mmul_avm_writedata),
        .out_valid_out(mmul_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1007_mmul_address(GPOUT,202)
    assign avm_lm1007_mmul_address = mmul_function_out_lm1007_mmul_avm_address;

    // avm_lm1007_mmul_burstcount(GPOUT,203)
    assign avm_lm1007_mmul_burstcount = mmul_function_out_lm1007_mmul_avm_burstcount;

    // avm_lm1007_mmul_byteenable(GPOUT,204)
    assign avm_lm1007_mmul_byteenable = mmul_function_out_lm1007_mmul_avm_byteenable;

    // avm_lm1007_mmul_enable(GPOUT,205)
    assign avm_lm1007_mmul_enable = mmul_function_out_lm1007_mmul_avm_enable;

    // avm_lm1007_mmul_read(GPOUT,206)
    assign avm_lm1007_mmul_read = mmul_function_out_lm1007_mmul_avm_read;

    // avm_lm1007_mmul_write(GPOUT,207)
    assign avm_lm1007_mmul_write = mmul_function_out_lm1007_mmul_avm_write;

    // avm_lm1007_mmul_writedata(GPOUT,208)
    assign avm_lm1007_mmul_writedata = mmul_function_out_lm1007_mmul_avm_writedata;

    // avm_lm1048_mmul_address(GPOUT,209)
    assign avm_lm1048_mmul_address = mmul_function_out_lm1048_mmul_avm_address;

    // avm_lm1048_mmul_burstcount(GPOUT,210)
    assign avm_lm1048_mmul_burstcount = mmul_function_out_lm1048_mmul_avm_burstcount;

    // avm_lm1048_mmul_byteenable(GPOUT,211)
    assign avm_lm1048_mmul_byteenable = mmul_function_out_lm1048_mmul_avm_byteenable;

    // avm_lm1048_mmul_enable(GPOUT,212)
    assign avm_lm1048_mmul_enable = mmul_function_out_lm1048_mmul_avm_enable;

    // avm_lm1048_mmul_read(GPOUT,213)
    assign avm_lm1048_mmul_read = mmul_function_out_lm1048_mmul_avm_read;

    // avm_lm1048_mmul_write(GPOUT,214)
    assign avm_lm1048_mmul_write = mmul_function_out_lm1048_mmul_avm_write;

    // avm_lm1048_mmul_writedata(GPOUT,215)
    assign avm_lm1048_mmul_writedata = mmul_function_out_lm1048_mmul_avm_writedata;

    // avm_lm1089_mmul_address(GPOUT,216)
    assign avm_lm1089_mmul_address = mmul_function_out_lm1089_mmul_avm_address;

    // avm_lm1089_mmul_burstcount(GPOUT,217)
    assign avm_lm1089_mmul_burstcount = mmul_function_out_lm1089_mmul_avm_burstcount;

    // avm_lm1089_mmul_byteenable(GPOUT,218)
    assign avm_lm1089_mmul_byteenable = mmul_function_out_lm1089_mmul_avm_byteenable;

    // avm_lm1089_mmul_enable(GPOUT,219)
    assign avm_lm1089_mmul_enable = mmul_function_out_lm1089_mmul_avm_enable;

    // avm_lm1089_mmul_read(GPOUT,220)
    assign avm_lm1089_mmul_read = mmul_function_out_lm1089_mmul_avm_read;

    // avm_lm1089_mmul_write(GPOUT,221)
    assign avm_lm1089_mmul_write = mmul_function_out_lm1089_mmul_avm_write;

    // avm_lm1089_mmul_writedata(GPOUT,222)
    assign avm_lm1089_mmul_writedata = mmul_function_out_lm1089_mmul_avm_writedata;

    // avm_lm11210_mmul_address(GPOUT,223)
    assign avm_lm11210_mmul_address = mmul_function_out_lm11210_mmul_avm_address;

    // avm_lm11210_mmul_burstcount(GPOUT,224)
    assign avm_lm11210_mmul_burstcount = mmul_function_out_lm11210_mmul_avm_burstcount;

    // avm_lm11210_mmul_byteenable(GPOUT,225)
    assign avm_lm11210_mmul_byteenable = mmul_function_out_lm11210_mmul_avm_byteenable;

    // avm_lm11210_mmul_enable(GPOUT,226)
    assign avm_lm11210_mmul_enable = mmul_function_out_lm11210_mmul_avm_enable;

    // avm_lm11210_mmul_read(GPOUT,227)
    assign avm_lm11210_mmul_read = mmul_function_out_lm11210_mmul_avm_read;

    // avm_lm11210_mmul_write(GPOUT,228)
    assign avm_lm11210_mmul_write = mmul_function_out_lm11210_mmul_avm_write;

    // avm_lm11210_mmul_writedata(GPOUT,229)
    assign avm_lm11210_mmul_writedata = mmul_function_out_lm11210_mmul_avm_writedata;

    // avm_lm11611_mmul_address(GPOUT,230)
    assign avm_lm11611_mmul_address = mmul_function_out_lm11611_mmul_avm_address;

    // avm_lm11611_mmul_burstcount(GPOUT,231)
    assign avm_lm11611_mmul_burstcount = mmul_function_out_lm11611_mmul_avm_burstcount;

    // avm_lm11611_mmul_byteenable(GPOUT,232)
    assign avm_lm11611_mmul_byteenable = mmul_function_out_lm11611_mmul_avm_byteenable;

    // avm_lm11611_mmul_enable(GPOUT,233)
    assign avm_lm11611_mmul_enable = mmul_function_out_lm11611_mmul_avm_enable;

    // avm_lm11611_mmul_read(GPOUT,234)
    assign avm_lm11611_mmul_read = mmul_function_out_lm11611_mmul_avm_read;

    // avm_lm11611_mmul_write(GPOUT,235)
    assign avm_lm11611_mmul_write = mmul_function_out_lm11611_mmul_avm_write;

    // avm_lm11611_mmul_writedata(GPOUT,236)
    assign avm_lm11611_mmul_writedata = mmul_function_out_lm11611_mmul_avm_writedata;

    // avm_lm12012_mmul_address(GPOUT,237)
    assign avm_lm12012_mmul_address = mmul_function_out_lm12012_mmul_avm_address;

    // avm_lm12012_mmul_burstcount(GPOUT,238)
    assign avm_lm12012_mmul_burstcount = mmul_function_out_lm12012_mmul_avm_burstcount;

    // avm_lm12012_mmul_byteenable(GPOUT,239)
    assign avm_lm12012_mmul_byteenable = mmul_function_out_lm12012_mmul_avm_byteenable;

    // avm_lm12012_mmul_enable(GPOUT,240)
    assign avm_lm12012_mmul_enable = mmul_function_out_lm12012_mmul_avm_enable;

    // avm_lm12012_mmul_read(GPOUT,241)
    assign avm_lm12012_mmul_read = mmul_function_out_lm12012_mmul_avm_read;

    // avm_lm12012_mmul_write(GPOUT,242)
    assign avm_lm12012_mmul_write = mmul_function_out_lm12012_mmul_avm_write;

    // avm_lm12012_mmul_writedata(GPOUT,243)
    assign avm_lm12012_mmul_writedata = mmul_function_out_lm12012_mmul_avm_writedata;

    // avm_lm12413_mmul_address(GPOUT,244)
    assign avm_lm12413_mmul_address = mmul_function_out_lm12413_mmul_avm_address;

    // avm_lm12413_mmul_burstcount(GPOUT,245)
    assign avm_lm12413_mmul_burstcount = mmul_function_out_lm12413_mmul_avm_burstcount;

    // avm_lm12413_mmul_byteenable(GPOUT,246)
    assign avm_lm12413_mmul_byteenable = mmul_function_out_lm12413_mmul_avm_byteenable;

    // avm_lm12413_mmul_enable(GPOUT,247)
    assign avm_lm12413_mmul_enable = mmul_function_out_lm12413_mmul_avm_enable;

    // avm_lm12413_mmul_read(GPOUT,248)
    assign avm_lm12413_mmul_read = mmul_function_out_lm12413_mmul_avm_read;

    // avm_lm12413_mmul_write(GPOUT,249)
    assign avm_lm12413_mmul_write = mmul_function_out_lm12413_mmul_avm_write;

    // avm_lm12413_mmul_writedata(GPOUT,250)
    assign avm_lm12413_mmul_writedata = mmul_function_out_lm12413_mmul_avm_writedata;

    // avm_lm12814_mmul_address(GPOUT,251)
    assign avm_lm12814_mmul_address = mmul_function_out_lm12814_mmul_avm_address;

    // avm_lm12814_mmul_burstcount(GPOUT,252)
    assign avm_lm12814_mmul_burstcount = mmul_function_out_lm12814_mmul_avm_burstcount;

    // avm_lm12814_mmul_byteenable(GPOUT,253)
    assign avm_lm12814_mmul_byteenable = mmul_function_out_lm12814_mmul_avm_byteenable;

    // avm_lm12814_mmul_enable(GPOUT,254)
    assign avm_lm12814_mmul_enable = mmul_function_out_lm12814_mmul_avm_enable;

    // avm_lm12814_mmul_read(GPOUT,255)
    assign avm_lm12814_mmul_read = mmul_function_out_lm12814_mmul_avm_read;

    // avm_lm12814_mmul_write(GPOUT,256)
    assign avm_lm12814_mmul_write = mmul_function_out_lm12814_mmul_avm_write;

    // avm_lm12814_mmul_writedata(GPOUT,257)
    assign avm_lm12814_mmul_writedata = mmul_function_out_lm12814_mmul_avm_writedata;

    // avm_lm13215_mmul_address(GPOUT,258)
    assign avm_lm13215_mmul_address = mmul_function_out_lm13215_mmul_avm_address;

    // avm_lm13215_mmul_burstcount(GPOUT,259)
    assign avm_lm13215_mmul_burstcount = mmul_function_out_lm13215_mmul_avm_burstcount;

    // avm_lm13215_mmul_byteenable(GPOUT,260)
    assign avm_lm13215_mmul_byteenable = mmul_function_out_lm13215_mmul_avm_byteenable;

    // avm_lm13215_mmul_enable(GPOUT,261)
    assign avm_lm13215_mmul_enable = mmul_function_out_lm13215_mmul_avm_enable;

    // avm_lm13215_mmul_read(GPOUT,262)
    assign avm_lm13215_mmul_read = mmul_function_out_lm13215_mmul_avm_read;

    // avm_lm13215_mmul_write(GPOUT,263)
    assign avm_lm13215_mmul_write = mmul_function_out_lm13215_mmul_avm_write;

    // avm_lm13215_mmul_writedata(GPOUT,264)
    assign avm_lm13215_mmul_writedata = mmul_function_out_lm13215_mmul_avm_writedata;

    // avm_lm13616_mmul_address(GPOUT,265)
    assign avm_lm13616_mmul_address = mmul_function_out_lm13616_mmul_avm_address;

    // avm_lm13616_mmul_burstcount(GPOUT,266)
    assign avm_lm13616_mmul_burstcount = mmul_function_out_lm13616_mmul_avm_burstcount;

    // avm_lm13616_mmul_byteenable(GPOUT,267)
    assign avm_lm13616_mmul_byteenable = mmul_function_out_lm13616_mmul_avm_byteenable;

    // avm_lm13616_mmul_enable(GPOUT,268)
    assign avm_lm13616_mmul_enable = mmul_function_out_lm13616_mmul_avm_enable;

    // avm_lm13616_mmul_read(GPOUT,269)
    assign avm_lm13616_mmul_read = mmul_function_out_lm13616_mmul_avm_read;

    // avm_lm13616_mmul_write(GPOUT,270)
    assign avm_lm13616_mmul_write = mmul_function_out_lm13616_mmul_avm_write;

    // avm_lm13616_mmul_writedata(GPOUT,271)
    assign avm_lm13616_mmul_writedata = mmul_function_out_lm13616_mmul_avm_writedata;

    // avm_lm14017_mmul_address(GPOUT,272)
    assign avm_lm14017_mmul_address = mmul_function_out_lm14017_mmul_avm_address;

    // avm_lm14017_mmul_burstcount(GPOUT,273)
    assign avm_lm14017_mmul_burstcount = mmul_function_out_lm14017_mmul_avm_burstcount;

    // avm_lm14017_mmul_byteenable(GPOUT,274)
    assign avm_lm14017_mmul_byteenable = mmul_function_out_lm14017_mmul_avm_byteenable;

    // avm_lm14017_mmul_enable(GPOUT,275)
    assign avm_lm14017_mmul_enable = mmul_function_out_lm14017_mmul_avm_enable;

    // avm_lm14017_mmul_read(GPOUT,276)
    assign avm_lm14017_mmul_read = mmul_function_out_lm14017_mmul_avm_read;

    // avm_lm14017_mmul_write(GPOUT,277)
    assign avm_lm14017_mmul_write = mmul_function_out_lm14017_mmul_avm_write;

    // avm_lm14017_mmul_writedata(GPOUT,278)
    assign avm_lm14017_mmul_writedata = mmul_function_out_lm14017_mmul_avm_writedata;

    // avm_lm14418_mmul_address(GPOUT,279)
    assign avm_lm14418_mmul_address = mmul_function_out_lm14418_mmul_avm_address;

    // avm_lm14418_mmul_burstcount(GPOUT,280)
    assign avm_lm14418_mmul_burstcount = mmul_function_out_lm14418_mmul_avm_burstcount;

    // avm_lm14418_mmul_byteenable(GPOUT,281)
    assign avm_lm14418_mmul_byteenable = mmul_function_out_lm14418_mmul_avm_byteenable;

    // avm_lm14418_mmul_enable(GPOUT,282)
    assign avm_lm14418_mmul_enable = mmul_function_out_lm14418_mmul_avm_enable;

    // avm_lm14418_mmul_read(GPOUT,283)
    assign avm_lm14418_mmul_read = mmul_function_out_lm14418_mmul_avm_read;

    // avm_lm14418_mmul_write(GPOUT,284)
    assign avm_lm14418_mmul_write = mmul_function_out_lm14418_mmul_avm_write;

    // avm_lm14418_mmul_writedata(GPOUT,285)
    assign avm_lm14418_mmul_writedata = mmul_function_out_lm14418_mmul_avm_writedata;

    // avm_lm14819_mmul_address(GPOUT,286)
    assign avm_lm14819_mmul_address = mmul_function_out_lm14819_mmul_avm_address;

    // avm_lm14819_mmul_burstcount(GPOUT,287)
    assign avm_lm14819_mmul_burstcount = mmul_function_out_lm14819_mmul_avm_burstcount;

    // avm_lm14819_mmul_byteenable(GPOUT,288)
    assign avm_lm14819_mmul_byteenable = mmul_function_out_lm14819_mmul_avm_byteenable;

    // avm_lm14819_mmul_enable(GPOUT,289)
    assign avm_lm14819_mmul_enable = mmul_function_out_lm14819_mmul_avm_enable;

    // avm_lm14819_mmul_read(GPOUT,290)
    assign avm_lm14819_mmul_read = mmul_function_out_lm14819_mmul_avm_read;

    // avm_lm14819_mmul_write(GPOUT,291)
    assign avm_lm14819_mmul_write = mmul_function_out_lm14819_mmul_avm_write;

    // avm_lm14819_mmul_writedata(GPOUT,292)
    assign avm_lm14819_mmul_writedata = mmul_function_out_lm14819_mmul_avm_writedata;

    // avm_lm15220_mmul_address(GPOUT,293)
    assign avm_lm15220_mmul_address = mmul_function_out_lm15220_mmul_avm_address;

    // avm_lm15220_mmul_burstcount(GPOUT,294)
    assign avm_lm15220_mmul_burstcount = mmul_function_out_lm15220_mmul_avm_burstcount;

    // avm_lm15220_mmul_byteenable(GPOUT,295)
    assign avm_lm15220_mmul_byteenable = mmul_function_out_lm15220_mmul_avm_byteenable;

    // avm_lm15220_mmul_enable(GPOUT,296)
    assign avm_lm15220_mmul_enable = mmul_function_out_lm15220_mmul_avm_enable;

    // avm_lm15220_mmul_read(GPOUT,297)
    assign avm_lm15220_mmul_read = mmul_function_out_lm15220_mmul_avm_read;

    // avm_lm15220_mmul_write(GPOUT,298)
    assign avm_lm15220_mmul_write = mmul_function_out_lm15220_mmul_avm_write;

    // avm_lm15220_mmul_writedata(GPOUT,299)
    assign avm_lm15220_mmul_writedata = mmul_function_out_lm15220_mmul_avm_writedata;

    // avm_lm15621_mmul_address(GPOUT,300)
    assign avm_lm15621_mmul_address = mmul_function_out_lm15621_mmul_avm_address;

    // avm_lm15621_mmul_burstcount(GPOUT,301)
    assign avm_lm15621_mmul_burstcount = mmul_function_out_lm15621_mmul_avm_burstcount;

    // avm_lm15621_mmul_byteenable(GPOUT,302)
    assign avm_lm15621_mmul_byteenable = mmul_function_out_lm15621_mmul_avm_byteenable;

    // avm_lm15621_mmul_enable(GPOUT,303)
    assign avm_lm15621_mmul_enable = mmul_function_out_lm15621_mmul_avm_enable;

    // avm_lm15621_mmul_read(GPOUT,304)
    assign avm_lm15621_mmul_read = mmul_function_out_lm15621_mmul_avm_read;

    // avm_lm15621_mmul_write(GPOUT,305)
    assign avm_lm15621_mmul_write = mmul_function_out_lm15621_mmul_avm_write;

    // avm_lm15621_mmul_writedata(GPOUT,306)
    assign avm_lm15621_mmul_writedata = mmul_function_out_lm15621_mmul_avm_writedata;

    // avm_lm16022_mmul_address(GPOUT,307)
    assign avm_lm16022_mmul_address = mmul_function_out_lm16022_mmul_avm_address;

    // avm_lm16022_mmul_burstcount(GPOUT,308)
    assign avm_lm16022_mmul_burstcount = mmul_function_out_lm16022_mmul_avm_burstcount;

    // avm_lm16022_mmul_byteenable(GPOUT,309)
    assign avm_lm16022_mmul_byteenable = mmul_function_out_lm16022_mmul_avm_byteenable;

    // avm_lm16022_mmul_enable(GPOUT,310)
    assign avm_lm16022_mmul_enable = mmul_function_out_lm16022_mmul_avm_enable;

    // avm_lm16022_mmul_read(GPOUT,311)
    assign avm_lm16022_mmul_read = mmul_function_out_lm16022_mmul_avm_read;

    // avm_lm16022_mmul_write(GPOUT,312)
    assign avm_lm16022_mmul_write = mmul_function_out_lm16022_mmul_avm_write;

    // avm_lm16022_mmul_writedata(GPOUT,313)
    assign avm_lm16022_mmul_writedata = mmul_function_out_lm16022_mmul_avm_writedata;

    // avm_lm16423_mmul_address(GPOUT,314)
    assign avm_lm16423_mmul_address = mmul_function_out_lm16423_mmul_avm_address;

    // avm_lm16423_mmul_burstcount(GPOUT,315)
    assign avm_lm16423_mmul_burstcount = mmul_function_out_lm16423_mmul_avm_burstcount;

    // avm_lm16423_mmul_byteenable(GPOUT,316)
    assign avm_lm16423_mmul_byteenable = mmul_function_out_lm16423_mmul_avm_byteenable;

    // avm_lm16423_mmul_enable(GPOUT,317)
    assign avm_lm16423_mmul_enable = mmul_function_out_lm16423_mmul_avm_enable;

    // avm_lm16423_mmul_read(GPOUT,318)
    assign avm_lm16423_mmul_read = mmul_function_out_lm16423_mmul_avm_read;

    // avm_lm16423_mmul_write(GPOUT,319)
    assign avm_lm16423_mmul_write = mmul_function_out_lm16423_mmul_avm_write;

    // avm_lm16423_mmul_writedata(GPOUT,320)
    assign avm_lm16423_mmul_writedata = mmul_function_out_lm16423_mmul_avm_writedata;

    // avm_lm16824_mmul_address(GPOUT,321)
    assign avm_lm16824_mmul_address = mmul_function_out_lm16824_mmul_avm_address;

    // avm_lm16824_mmul_burstcount(GPOUT,322)
    assign avm_lm16824_mmul_burstcount = mmul_function_out_lm16824_mmul_avm_burstcount;

    // avm_lm16824_mmul_byteenable(GPOUT,323)
    assign avm_lm16824_mmul_byteenable = mmul_function_out_lm16824_mmul_avm_byteenable;

    // avm_lm16824_mmul_enable(GPOUT,324)
    assign avm_lm16824_mmul_enable = mmul_function_out_lm16824_mmul_avm_enable;

    // avm_lm16824_mmul_read(GPOUT,325)
    assign avm_lm16824_mmul_read = mmul_function_out_lm16824_mmul_avm_read;

    // avm_lm16824_mmul_write(GPOUT,326)
    assign avm_lm16824_mmul_write = mmul_function_out_lm16824_mmul_avm_write;

    // avm_lm16824_mmul_writedata(GPOUT,327)
    assign avm_lm16824_mmul_writedata = mmul_function_out_lm16824_mmul_avm_writedata;

    // avm_lm17225_mmul_address(GPOUT,328)
    assign avm_lm17225_mmul_address = mmul_function_out_lm17225_mmul_avm_address;

    // avm_lm17225_mmul_burstcount(GPOUT,329)
    assign avm_lm17225_mmul_burstcount = mmul_function_out_lm17225_mmul_avm_burstcount;

    // avm_lm17225_mmul_byteenable(GPOUT,330)
    assign avm_lm17225_mmul_byteenable = mmul_function_out_lm17225_mmul_avm_byteenable;

    // avm_lm17225_mmul_enable(GPOUT,331)
    assign avm_lm17225_mmul_enable = mmul_function_out_lm17225_mmul_avm_enable;

    // avm_lm17225_mmul_read(GPOUT,332)
    assign avm_lm17225_mmul_read = mmul_function_out_lm17225_mmul_avm_read;

    // avm_lm17225_mmul_write(GPOUT,333)
    assign avm_lm17225_mmul_write = mmul_function_out_lm17225_mmul_avm_write;

    // avm_lm17225_mmul_writedata(GPOUT,334)
    assign avm_lm17225_mmul_writedata = mmul_function_out_lm17225_mmul_avm_writedata;

    // avm_lm17626_mmul_address(GPOUT,335)
    assign avm_lm17626_mmul_address = mmul_function_out_lm17626_mmul_avm_address;

    // avm_lm17626_mmul_burstcount(GPOUT,336)
    assign avm_lm17626_mmul_burstcount = mmul_function_out_lm17626_mmul_avm_burstcount;

    // avm_lm17626_mmul_byteenable(GPOUT,337)
    assign avm_lm17626_mmul_byteenable = mmul_function_out_lm17626_mmul_avm_byteenable;

    // avm_lm17626_mmul_enable(GPOUT,338)
    assign avm_lm17626_mmul_enable = mmul_function_out_lm17626_mmul_avm_enable;

    // avm_lm17626_mmul_read(GPOUT,339)
    assign avm_lm17626_mmul_read = mmul_function_out_lm17626_mmul_avm_read;

    // avm_lm17626_mmul_write(GPOUT,340)
    assign avm_lm17626_mmul_write = mmul_function_out_lm17626_mmul_avm_write;

    // avm_lm17626_mmul_writedata(GPOUT,341)
    assign avm_lm17626_mmul_writedata = mmul_function_out_lm17626_mmul_avm_writedata;

    // avm_lm18027_mmul_address(GPOUT,342)
    assign avm_lm18027_mmul_address = mmul_function_out_lm18027_mmul_avm_address;

    // avm_lm18027_mmul_burstcount(GPOUT,343)
    assign avm_lm18027_mmul_burstcount = mmul_function_out_lm18027_mmul_avm_burstcount;

    // avm_lm18027_mmul_byteenable(GPOUT,344)
    assign avm_lm18027_mmul_byteenable = mmul_function_out_lm18027_mmul_avm_byteenable;

    // avm_lm18027_mmul_enable(GPOUT,345)
    assign avm_lm18027_mmul_enable = mmul_function_out_lm18027_mmul_avm_enable;

    // avm_lm18027_mmul_read(GPOUT,346)
    assign avm_lm18027_mmul_read = mmul_function_out_lm18027_mmul_avm_read;

    // avm_lm18027_mmul_write(GPOUT,347)
    assign avm_lm18027_mmul_write = mmul_function_out_lm18027_mmul_avm_write;

    // avm_lm18027_mmul_writedata(GPOUT,348)
    assign avm_lm18027_mmul_writedata = mmul_function_out_lm18027_mmul_avm_writedata;

    // avm_lm18428_mmul_address(GPOUT,349)
    assign avm_lm18428_mmul_address = mmul_function_out_lm18428_mmul_avm_address;

    // avm_lm18428_mmul_burstcount(GPOUT,350)
    assign avm_lm18428_mmul_burstcount = mmul_function_out_lm18428_mmul_avm_burstcount;

    // avm_lm18428_mmul_byteenable(GPOUT,351)
    assign avm_lm18428_mmul_byteenable = mmul_function_out_lm18428_mmul_avm_byteenable;

    // avm_lm18428_mmul_enable(GPOUT,352)
    assign avm_lm18428_mmul_enable = mmul_function_out_lm18428_mmul_avm_enable;

    // avm_lm18428_mmul_read(GPOUT,353)
    assign avm_lm18428_mmul_read = mmul_function_out_lm18428_mmul_avm_read;

    // avm_lm18428_mmul_write(GPOUT,354)
    assign avm_lm18428_mmul_write = mmul_function_out_lm18428_mmul_avm_write;

    // avm_lm18428_mmul_writedata(GPOUT,355)
    assign avm_lm18428_mmul_writedata = mmul_function_out_lm18428_mmul_avm_writedata;

    // avm_lm18829_mmul_address(GPOUT,356)
    assign avm_lm18829_mmul_address = mmul_function_out_lm18829_mmul_avm_address;

    // avm_lm18829_mmul_burstcount(GPOUT,357)
    assign avm_lm18829_mmul_burstcount = mmul_function_out_lm18829_mmul_avm_burstcount;

    // avm_lm18829_mmul_byteenable(GPOUT,358)
    assign avm_lm18829_mmul_byteenable = mmul_function_out_lm18829_mmul_avm_byteenable;

    // avm_lm18829_mmul_enable(GPOUT,359)
    assign avm_lm18829_mmul_enable = mmul_function_out_lm18829_mmul_avm_enable;

    // avm_lm18829_mmul_read(GPOUT,360)
    assign avm_lm18829_mmul_read = mmul_function_out_lm18829_mmul_avm_read;

    // avm_lm18829_mmul_write(GPOUT,361)
    assign avm_lm18829_mmul_write = mmul_function_out_lm18829_mmul_avm_write;

    // avm_lm18829_mmul_writedata(GPOUT,362)
    assign avm_lm18829_mmul_writedata = mmul_function_out_lm18829_mmul_avm_writedata;

    // avm_lm19230_mmul_address(GPOUT,363)
    assign avm_lm19230_mmul_address = mmul_function_out_lm19230_mmul_avm_address;

    // avm_lm19230_mmul_burstcount(GPOUT,364)
    assign avm_lm19230_mmul_burstcount = mmul_function_out_lm19230_mmul_avm_burstcount;

    // avm_lm19230_mmul_byteenable(GPOUT,365)
    assign avm_lm19230_mmul_byteenable = mmul_function_out_lm19230_mmul_avm_byteenable;

    // avm_lm19230_mmul_enable(GPOUT,366)
    assign avm_lm19230_mmul_enable = mmul_function_out_lm19230_mmul_avm_enable;

    // avm_lm19230_mmul_read(GPOUT,367)
    assign avm_lm19230_mmul_read = mmul_function_out_lm19230_mmul_avm_read;

    // avm_lm19230_mmul_write(GPOUT,368)
    assign avm_lm19230_mmul_write = mmul_function_out_lm19230_mmul_avm_write;

    // avm_lm19230_mmul_writedata(GPOUT,369)
    assign avm_lm19230_mmul_writedata = mmul_function_out_lm19230_mmul_avm_writedata;

    // avm_lm19631_mmul_address(GPOUT,370)
    assign avm_lm19631_mmul_address = mmul_function_out_lm19631_mmul_avm_address;

    // avm_lm19631_mmul_burstcount(GPOUT,371)
    assign avm_lm19631_mmul_burstcount = mmul_function_out_lm19631_mmul_avm_burstcount;

    // avm_lm19631_mmul_byteenable(GPOUT,372)
    assign avm_lm19631_mmul_byteenable = mmul_function_out_lm19631_mmul_avm_byteenable;

    // avm_lm19631_mmul_enable(GPOUT,373)
    assign avm_lm19631_mmul_enable = mmul_function_out_lm19631_mmul_avm_enable;

    // avm_lm19631_mmul_read(GPOUT,374)
    assign avm_lm19631_mmul_read = mmul_function_out_lm19631_mmul_avm_read;

    // avm_lm19631_mmul_write(GPOUT,375)
    assign avm_lm19631_mmul_write = mmul_function_out_lm19631_mmul_avm_write;

    // avm_lm19631_mmul_writedata(GPOUT,376)
    assign avm_lm19631_mmul_writedata = mmul_function_out_lm19631_mmul_avm_writedata;

    // avm_lm20032_mmul_address(GPOUT,377)
    assign avm_lm20032_mmul_address = mmul_function_out_lm20032_mmul_avm_address;

    // avm_lm20032_mmul_burstcount(GPOUT,378)
    assign avm_lm20032_mmul_burstcount = mmul_function_out_lm20032_mmul_avm_burstcount;

    // avm_lm20032_mmul_byteenable(GPOUT,379)
    assign avm_lm20032_mmul_byteenable = mmul_function_out_lm20032_mmul_avm_byteenable;

    // avm_lm20032_mmul_enable(GPOUT,380)
    assign avm_lm20032_mmul_enable = mmul_function_out_lm20032_mmul_avm_enable;

    // avm_lm20032_mmul_read(GPOUT,381)
    assign avm_lm20032_mmul_read = mmul_function_out_lm20032_mmul_avm_read;

    // avm_lm20032_mmul_write(GPOUT,382)
    assign avm_lm20032_mmul_write = mmul_function_out_lm20032_mmul_avm_write;

    // avm_lm20032_mmul_writedata(GPOUT,383)
    assign avm_lm20032_mmul_writedata = mmul_function_out_lm20032_mmul_avm_writedata;

    // avm_lm20433_mmul_address(GPOUT,384)
    assign avm_lm20433_mmul_address = mmul_function_out_lm20433_mmul_avm_address;

    // avm_lm20433_mmul_burstcount(GPOUT,385)
    assign avm_lm20433_mmul_burstcount = mmul_function_out_lm20433_mmul_avm_burstcount;

    // avm_lm20433_mmul_byteenable(GPOUT,386)
    assign avm_lm20433_mmul_byteenable = mmul_function_out_lm20433_mmul_avm_byteenable;

    // avm_lm20433_mmul_enable(GPOUT,387)
    assign avm_lm20433_mmul_enable = mmul_function_out_lm20433_mmul_avm_enable;

    // avm_lm20433_mmul_read(GPOUT,388)
    assign avm_lm20433_mmul_read = mmul_function_out_lm20433_mmul_avm_read;

    // avm_lm20433_mmul_write(GPOUT,389)
    assign avm_lm20433_mmul_write = mmul_function_out_lm20433_mmul_avm_write;

    // avm_lm20433_mmul_writedata(GPOUT,390)
    assign avm_lm20433_mmul_writedata = mmul_function_out_lm20433_mmul_avm_writedata;

    // avm_lm76_mmul_address(GPOUT,391)
    assign avm_lm76_mmul_address = mmul_function_out_lm76_mmul_avm_address;

    // avm_lm76_mmul_burstcount(GPOUT,392)
    assign avm_lm76_mmul_burstcount = mmul_function_out_lm76_mmul_avm_burstcount;

    // avm_lm76_mmul_byteenable(GPOUT,393)
    assign avm_lm76_mmul_byteenable = mmul_function_out_lm76_mmul_avm_byteenable;

    // avm_lm76_mmul_enable(GPOUT,394)
    assign avm_lm76_mmul_enable = mmul_function_out_lm76_mmul_avm_enable;

    // avm_lm76_mmul_read(GPOUT,395)
    assign avm_lm76_mmul_read = mmul_function_out_lm76_mmul_avm_read;

    // avm_lm76_mmul_write(GPOUT,396)
    assign avm_lm76_mmul_write = mmul_function_out_lm76_mmul_avm_write;

    // avm_lm76_mmul_writedata(GPOUT,397)
    assign avm_lm76_mmul_writedata = mmul_function_out_lm76_mmul_avm_writedata;

    // avm_lm802_mmul_address(GPOUT,398)
    assign avm_lm802_mmul_address = mmul_function_out_lm802_mmul_avm_address;

    // avm_lm802_mmul_burstcount(GPOUT,399)
    assign avm_lm802_mmul_burstcount = mmul_function_out_lm802_mmul_avm_burstcount;

    // avm_lm802_mmul_byteenable(GPOUT,400)
    assign avm_lm802_mmul_byteenable = mmul_function_out_lm802_mmul_avm_byteenable;

    // avm_lm802_mmul_enable(GPOUT,401)
    assign avm_lm802_mmul_enable = mmul_function_out_lm802_mmul_avm_enable;

    // avm_lm802_mmul_read(GPOUT,402)
    assign avm_lm802_mmul_read = mmul_function_out_lm802_mmul_avm_read;

    // avm_lm802_mmul_write(GPOUT,403)
    assign avm_lm802_mmul_write = mmul_function_out_lm802_mmul_avm_write;

    // avm_lm802_mmul_writedata(GPOUT,404)
    assign avm_lm802_mmul_writedata = mmul_function_out_lm802_mmul_avm_writedata;

    // avm_lm843_mmul_address(GPOUT,405)
    assign avm_lm843_mmul_address = mmul_function_out_lm843_mmul_avm_address;

    // avm_lm843_mmul_burstcount(GPOUT,406)
    assign avm_lm843_mmul_burstcount = mmul_function_out_lm843_mmul_avm_burstcount;

    // avm_lm843_mmul_byteenable(GPOUT,407)
    assign avm_lm843_mmul_byteenable = mmul_function_out_lm843_mmul_avm_byteenable;

    // avm_lm843_mmul_enable(GPOUT,408)
    assign avm_lm843_mmul_enable = mmul_function_out_lm843_mmul_avm_enable;

    // avm_lm843_mmul_read(GPOUT,409)
    assign avm_lm843_mmul_read = mmul_function_out_lm843_mmul_avm_read;

    // avm_lm843_mmul_write(GPOUT,410)
    assign avm_lm843_mmul_write = mmul_function_out_lm843_mmul_avm_write;

    // avm_lm843_mmul_writedata(GPOUT,411)
    assign avm_lm843_mmul_writedata = mmul_function_out_lm843_mmul_avm_writedata;

    // avm_lm884_mmul_address(GPOUT,412)
    assign avm_lm884_mmul_address = mmul_function_out_lm884_mmul_avm_address;

    // avm_lm884_mmul_burstcount(GPOUT,413)
    assign avm_lm884_mmul_burstcount = mmul_function_out_lm884_mmul_avm_burstcount;

    // avm_lm884_mmul_byteenable(GPOUT,414)
    assign avm_lm884_mmul_byteenable = mmul_function_out_lm884_mmul_avm_byteenable;

    // avm_lm884_mmul_enable(GPOUT,415)
    assign avm_lm884_mmul_enable = mmul_function_out_lm884_mmul_avm_enable;

    // avm_lm884_mmul_read(GPOUT,416)
    assign avm_lm884_mmul_read = mmul_function_out_lm884_mmul_avm_read;

    // avm_lm884_mmul_write(GPOUT,417)
    assign avm_lm884_mmul_write = mmul_function_out_lm884_mmul_avm_write;

    // avm_lm884_mmul_writedata(GPOUT,418)
    assign avm_lm884_mmul_writedata = mmul_function_out_lm884_mmul_avm_writedata;

    // avm_lm925_mmul_address(GPOUT,419)
    assign avm_lm925_mmul_address = mmul_function_out_lm925_mmul_avm_address;

    // avm_lm925_mmul_burstcount(GPOUT,420)
    assign avm_lm925_mmul_burstcount = mmul_function_out_lm925_mmul_avm_burstcount;

    // avm_lm925_mmul_byteenable(GPOUT,421)
    assign avm_lm925_mmul_byteenable = mmul_function_out_lm925_mmul_avm_byteenable;

    // avm_lm925_mmul_enable(GPOUT,422)
    assign avm_lm925_mmul_enable = mmul_function_out_lm925_mmul_avm_enable;

    // avm_lm925_mmul_read(GPOUT,423)
    assign avm_lm925_mmul_read = mmul_function_out_lm925_mmul_avm_read;

    // avm_lm925_mmul_write(GPOUT,424)
    assign avm_lm925_mmul_write = mmul_function_out_lm925_mmul_avm_write;

    // avm_lm925_mmul_writedata(GPOUT,425)
    assign avm_lm925_mmul_writedata = mmul_function_out_lm925_mmul_avm_writedata;

    // avm_lm966_mmul_address(GPOUT,426)
    assign avm_lm966_mmul_address = mmul_function_out_lm966_mmul_avm_address;

    // avm_lm966_mmul_burstcount(GPOUT,427)
    assign avm_lm966_mmul_burstcount = mmul_function_out_lm966_mmul_avm_burstcount;

    // avm_lm966_mmul_byteenable(GPOUT,428)
    assign avm_lm966_mmul_byteenable = mmul_function_out_lm966_mmul_avm_byteenable;

    // avm_lm966_mmul_enable(GPOUT,429)
    assign avm_lm966_mmul_enable = mmul_function_out_lm966_mmul_avm_enable;

    // avm_lm966_mmul_read(GPOUT,430)
    assign avm_lm966_mmul_read = mmul_function_out_lm966_mmul_avm_read;

    // avm_lm966_mmul_write(GPOUT,431)
    assign avm_lm966_mmul_write = mmul_function_out_lm966_mmul_avm_write;

    // avm_lm966_mmul_writedata(GPOUT,432)
    assign avm_lm966_mmul_writedata = mmul_function_out_lm966_mmul_avm_writedata;

    // avm_lm_mmul_address(GPOUT,433)
    assign avm_lm_mmul_address = mmul_function_out_lm_mmul_avm_address;

    // avm_lm_mmul_burstcount(GPOUT,434)
    assign avm_lm_mmul_burstcount = mmul_function_out_lm_mmul_avm_burstcount;

    // avm_lm_mmul_byteenable(GPOUT,435)
    assign avm_lm_mmul_byteenable = mmul_function_out_lm_mmul_avm_byteenable;

    // avm_lm_mmul_enable(GPOUT,436)
    assign avm_lm_mmul_enable = mmul_function_out_lm_mmul_avm_enable;

    // avm_lm_mmul_read(GPOUT,437)
    assign avm_lm_mmul_read = mmul_function_out_lm_mmul_avm_read;

    // avm_lm_mmul_write(GPOUT,438)
    assign avm_lm_mmul_write = mmul_function_out_lm_mmul_avm_write;

    // avm_lm_mmul_writedata(GPOUT,439)
    assign avm_lm_mmul_writedata = mmul_function_out_lm_mmul_avm_writedata;

    // avm_memcoalesce_load_mmul_fpgaunique_321_mmul_address(GPOUT,440)
    assign avm_memcoalesce_load_mmul_fpgaunique_321_mmul_address = mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address;

    // avm_memcoalesce_load_mmul_fpgaunique_321_mmul_burstcount(GPOUT,441)
    assign avm_memcoalesce_load_mmul_fpgaunique_321_mmul_burstcount = mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount;

    // avm_memcoalesce_load_mmul_fpgaunique_321_mmul_byteenable(GPOUT,442)
    assign avm_memcoalesce_load_mmul_fpgaunique_321_mmul_byteenable = mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable;

    // avm_memcoalesce_load_mmul_fpgaunique_321_mmul_enable(GPOUT,443)
    assign avm_memcoalesce_load_mmul_fpgaunique_321_mmul_enable = mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable;

    // avm_memcoalesce_load_mmul_fpgaunique_321_mmul_read(GPOUT,444)
    assign avm_memcoalesce_load_mmul_fpgaunique_321_mmul_read = mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read;

    // avm_memcoalesce_load_mmul_fpgaunique_321_mmul_write(GPOUT,445)
    assign avm_memcoalesce_load_mmul_fpgaunique_321_mmul_write = mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write;

    // avm_memcoalesce_load_mmul_fpgaunique_321_mmul_writedata(GPOUT,446)
    assign avm_memcoalesce_load_mmul_fpgaunique_321_mmul_writedata = mmul_function_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata;

    // avm_memdep_95_mmul_address(GPOUT,447)
    assign avm_memdep_95_mmul_address = mmul_function_out_memdep_95_mmul_avm_address;

    // avm_memdep_95_mmul_burstcount(GPOUT,448)
    assign avm_memdep_95_mmul_burstcount = mmul_function_out_memdep_95_mmul_avm_burstcount;

    // avm_memdep_95_mmul_byteenable(GPOUT,449)
    assign avm_memdep_95_mmul_byteenable = mmul_function_out_memdep_95_mmul_avm_byteenable;

    // avm_memdep_95_mmul_enable(GPOUT,450)
    assign avm_memdep_95_mmul_enable = mmul_function_out_memdep_95_mmul_avm_enable;

    // avm_memdep_95_mmul_read(GPOUT,451)
    assign avm_memdep_95_mmul_read = mmul_function_out_memdep_95_mmul_avm_read;

    // avm_memdep_95_mmul_write(GPOUT,452)
    assign avm_memdep_95_mmul_write = mmul_function_out_memdep_95_mmul_avm_write;

    // avm_memdep_95_mmul_writedata(GPOUT,453)
    assign avm_memdep_95_mmul_writedata = mmul_function_out_memdep_95_mmul_avm_writedata;

    // avm_memdep_mmul_address(GPOUT,454)
    assign avm_memdep_mmul_address = mmul_function_out_memdep_mmul_avm_address;

    // avm_memdep_mmul_burstcount(GPOUT,455)
    assign avm_memdep_mmul_burstcount = mmul_function_out_memdep_mmul_avm_burstcount;

    // avm_memdep_mmul_byteenable(GPOUT,456)
    assign avm_memdep_mmul_byteenable = mmul_function_out_memdep_mmul_avm_byteenable;

    // avm_memdep_mmul_enable(GPOUT,457)
    assign avm_memdep_mmul_enable = mmul_function_out_memdep_mmul_avm_enable;

    // avm_memdep_mmul_read(GPOUT,458)
    assign avm_memdep_mmul_read = mmul_function_out_memdep_mmul_avm_read;

    // avm_memdep_mmul_write(GPOUT,459)
    assign avm_memdep_mmul_write = mmul_function_out_memdep_mmul_avm_write;

    // avm_memdep_mmul_writedata(GPOUT,460)
    assign avm_memdep_mmul_writedata = mmul_function_out_memdep_mmul_avm_writedata;

    // avm_unnamed_mmul7_mmul_address(GPOUT,461)
    assign avm_unnamed_mmul7_mmul_address = mmul_function_out_unnamed_mmul7_mmul_avm_address;

    // avm_unnamed_mmul7_mmul_burstcount(GPOUT,462)
    assign avm_unnamed_mmul7_mmul_burstcount = mmul_function_out_unnamed_mmul7_mmul_avm_burstcount;

    // avm_unnamed_mmul7_mmul_byteenable(GPOUT,463)
    assign avm_unnamed_mmul7_mmul_byteenable = mmul_function_out_unnamed_mmul7_mmul_avm_byteenable;

    // avm_unnamed_mmul7_mmul_enable(GPOUT,464)
    assign avm_unnamed_mmul7_mmul_enable = mmul_function_out_unnamed_mmul7_mmul_avm_enable;

    // avm_unnamed_mmul7_mmul_read(GPOUT,465)
    assign avm_unnamed_mmul7_mmul_read = mmul_function_out_unnamed_mmul7_mmul_avm_read;

    // avm_unnamed_mmul7_mmul_write(GPOUT,466)
    assign avm_unnamed_mmul7_mmul_write = mmul_function_out_unnamed_mmul7_mmul_avm_write;

    // avm_unnamed_mmul7_mmul_writedata(GPOUT,467)
    assign avm_unnamed_mmul7_mmul_writedata = mmul_function_out_unnamed_mmul7_mmul_avm_writedata;

    // acl_clock2x_dummy_consumer(EXTIFACE,2)
    assign acl_clock2x_dummy_consumer_clock2x = clock2x;
    assign acl_clock2x_dummy_consumer_clock2x_bitsignaltemp = acl_clock2x_dummy_consumer_clock2x[0];
    assign acl_clock2x_dummy_consumer_myout[0] = acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    acl_clock2x_holder theacl_clock2x_dummy_consumer (
        .clock2x(acl_clock2x_dummy_consumer_clock2x_bitsignaltemp),
        .myout(acl_clock2x_dummy_consumer_myout_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // clock2x_output(GPOUT,468)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,469)
    assign has_a_lsu_active = mmul_function_out_o_active_unnamed_mmul7;

    // has_a_write_pending(GPOUT,470)
    assign has_a_write_pending = mmul_function_out_o_active_unnamed_mmul7;

    // kernel_stall_out(GPOUT,471)
    assign kernel_stall_out = embedded_issuer_stall_out;

    // kernel_valid_out(GPOUT,472)
    assign kernel_valid_out = mmul_function_out_valid_out;

endmodule
