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

// SystemVerilog created from conv2d3x3_bb_B4_stall_region
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B4_stall_region (
    input wire [511:0] in_unnamed_conv2d3x36_conv2d3x3_avm_readdata,
    input wire [0:0] in_unnamed_conv2d3x36_conv2d3x3_avm_writeack,
    input wire [0:0] in_unnamed_conv2d3x36_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d3x36_conv2d3x3_avm_readdatavalid,
    output wire [30:0] out_unnamed_conv2d3x36_conv2d3x3_avm_address,
    output wire [0:0] out_unnamed_conv2d3x36_conv2d3x3_avm_enable,
    output wire [0:0] out_unnamed_conv2d3x36_conv2d3x3_avm_read,
    output wire [0:0] out_unnamed_conv2d3x36_conv2d3x3_avm_write,
    output wire [511:0] out_unnamed_conv2d3x36_conv2d3x3_avm_writedata,
    output wire [63:0] out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable,
    output wire [4:0] out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe1084,
    input wire [63:0] in_c0_exe114,
    input wire [0:0] in_c0_exe1193,
    input wire [31:0] in_c0_exe12104,
    input wire [31:0] in_c0_exe1254180,
    input wire [0:0] in_c0_exe13114,
    input wire [0:0] in_c0_exe14123,
    input wire [0:0] in_c0_exe15133,
    input wire [0:0] in_c0_exe16134,
    input wire [63:0] in_c0_exe316,
    input wire [0:0] in_c0_exe425,
    input wire [31:0] in_c0_exe536,
    input wire [31:0] in_c0_exe643,
    input wire [0:0] in_c0_exe755,
    input wire [0:0] in_c0_exe864,
    input wire [31:0] in_c0_exe974,
    input wire [31:0] in_j_062143,
    input wire [31:0] in_unnamed_conv2d3x34,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_conv2d3x36_o_active,
    output wire [0:0] out_c0_exe1084,
    output wire [63:0] out_c0_exe114,
    output wire [0:0] out_c0_exe1193,
    output wire [31:0] out_c0_exe12104,
    output wire [0:0] out_c0_exe13114,
    output wire [0:0] out_c0_exe14123,
    output wire [0:0] out_c0_exe15133,
    output wire [0:0] out_c0_exe16134,
    output wire [63:0] out_c0_exe316,
    output wire [0:0] out_c0_exe425,
    output wire [31:0] out_c0_exe536,
    output wire [31:0] out_c0_exe643,
    output wire [0:0] out_c0_exe755,
    output wire [0:0] out_c0_exe864,
    output wire [31:0] out_c0_exe974,
    output wire [31:0] out_inc69,
    output wire [31:0] out_unnamed_conv2d3x34,
    output wire [0:0] out_unnamed_conv2d3x35,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_115_q;
    wire [32:0] i_add65_conv2d3x31_a;
    wire [32:0] i_add65_conv2d3x31_b;
    logic [32:0] i_add65_conv2d3x31_o;
    wire [32:0] i_add65_conv2d3x31_q;
    wire [33:0] i_cmp_conv2d3x39_a;
    wire [33:0] i_cmp_conv2d3x39_b;
    logic [33:0] i_cmp_conv2d3x39_o;
    wire [0:0] i_cmp_conv2d3x39_c;
    wire [32:0] i_inc69_conv2d3x32_a;
    wire [32:0] i_inc69_conv2d3x32_b;
    logic [32:0] i_inc69_conv2d3x32_o;
    wire [32:0] i_inc69_conv2d3x32_q;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_lsu_unnamed_conv2d3x36_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_writedata;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_out_valid_out;
    wire [0:0] i_unnamed_conv2d3x312_q;
    wire [31:0] bgTrunc_i_add65_conv2d3x31_sel_x_b;
    wire [31:0] bgTrunc_i_inc69_conv2d3x32_sel_x_b;
    wire [64:0] i_arrayidx674_conv2d3x30_add_x_a;
    wire [64:0] i_arrayidx674_conv2d3x30_add_x_b;
    logic [64:0] i_arrayidx674_conv2d3x30_add_x_o;
    wire [64:0] i_arrayidx674_conv2d3x30_add_x_q;
    wire [1:0] i_arrayidx674_conv2d3x30_c_i2_01_x_q;
    wire [61:0] i_arrayidx674_conv2d3x30_narrow_x_b;
    wire [63:0] i_arrayidx674_conv2d3x30_shift_join_x_q;
    wire [63:0] i_arrayidx674_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom66_conv2d3x38_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_out_c0_exit203_1_tpl;
    wire [128:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [199:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [31:0] sel_for_coalesced_delay_1_e;
    wire [31:0] sel_for_coalesced_delay_1_f;
    wire [0:0] sel_for_coalesced_delay_1_g;
    wire [0:0] sel_for_coalesced_delay_1_h;
    wire [0:0] sel_for_coalesced_delay_1_i;
    wire [0:0] sel_for_coalesced_delay_1_j;
    wire [0:0] sel_for_coalesced_delay_1_k;
    wire [0:0] sel_for_coalesced_delay_1_l;
    wire [0:0] sel_for_coalesced_delay_1_m;
    wire [0:0] sel_for_coalesced_delay_1_n;
    wire [96:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [31:0] sel_for_coalesced_delay_2_c;
    wire [0:0] sel_for_coalesced_delay_2_d;
    reg [31:0] redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_q;
    reg [31:0] redist20_stall_entry_o20_5_0_q;
    reg [128:0] coalesced_delay_0_0_q;
    reg [128:0] coalesced_delay_0_1_q;
    reg [128:0] coalesced_delay_0_2_q;
    reg [128:0] coalesced_delay_0_3_q;
    reg [199:0] coalesced_delay_1_0_q;
    reg [199:0] coalesced_delay_1_1_q;
    reg [199:0] coalesced_delay_1_2_q;
    reg [199:0] coalesced_delay_1_3_q;
    reg [199:0] coalesced_delay_1_4_q;
    reg [199:0] coalesced_delay_1_5_q;
    reg [96:0] coalesced_delay_2_0_q;
    reg [96:0] coalesced_delay_2_1_q;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_b;
    wire [360:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [63:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [31:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_and1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_V0;
    reg [0:0] SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_V0;
    reg [0:0] SE_redist20_stall_entry_o20_5_0_R_v_0;
    wire [0:0] SE_redist20_stall_entry_o20_5_0_v_s_0;
    wire [0:0] SE_redist20_stall_entry_o20_5_0_s_tv_0;
    wire [0:0] SE_redist20_stall_entry_o20_5_0_backEN;
    wire [0:0] SE_redist20_stall_entry_o20_5_0_backStall;
    wire [0:0] SE_redist20_stall_entry_o20_5_0_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    reg [0:0] SE_coalesced_delay_0_3_R_v_0;
    reg [0:0] SE_coalesced_delay_0_3_R_v_1;
    wire [0:0] SE_coalesced_delay_0_3_v_s_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_3_backEN;
    wire [0:0] SE_coalesced_delay_0_3_or0;
    wire [0:0] SE_coalesced_delay_0_3_backStall;
    wire [0:0] SE_coalesced_delay_0_3_V0;
    wire [0:0] SE_coalesced_delay_0_3_V1;
    wire [0:0] SE_out_bubble_out_stall_entry_1_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_1_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_1_V0;
    wire [0:0] bubble_out_stall_entry_1_reg_valid_in;
    wire bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_stall_in;
    wire bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_valid_out;
    wire bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_stall_out;
    wire bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_i_valid;
    reg [0:0] SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_valid;
    reg [31:0] SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_data0;
    reg [199:0] SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_data1;
    reg [96:0] SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_data2;
    wire [0:0] SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backStall;
    wire [0:0] SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_V;
    wire [31:0] SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_D0;
    wire [199:0] SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_D1;
    wire [96:0] SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_D2;


    // bubble_join_stall_entry(BITJOIN,100)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d3x34, in_j_062143, in_c0_exe974, in_c0_exe864, in_c0_exe755, in_c0_exe643, in_c0_exe536, in_c0_exe425, in_c0_exe316, in_c0_exe16134, in_c0_exe15133, in_c0_exe14123, in_c0_exe13114, in_c0_exe1254180, in_c0_exe12104, in_c0_exe1193, in_c0_exe114, in_c0_exe1084};

    // bubble_select_stall_entry(BITSELECT,101)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[129:98]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[130:130]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[132:132]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[133:133]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[197:134]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[198:198]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[230:199]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[262:231]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[263:263]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[264:264]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[296:265]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[328:297]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[360:329]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // join_for_coalesced_delay_2(BITJOIN,78)
    assign join_for_coalesced_delay_2_q = {sel_for_coalesced_delay_0_e, sel_for_coalesced_delay_0_c, sel_for_coalesced_delay_0_b};

    // coalesced_delay_2_0(REG,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_0_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist20_stall_entry_o20_5_0_backEN == 1'b1)
        begin
            coalesced_delay_2_0_q <= $unsigned(join_for_coalesced_delay_2_q);
        end
    end

    // join_for_coalesced_delay_1(BITJOIN,75)
    assign join_for_coalesced_delay_1_q = {bubble_select_stall_entry_p, bubble_select_stall_entry_o, bubble_select_stall_entry_l, bubble_select_stall_entry_i, bubble_select_stall_entry_h, bubble_select_stall_entry_g, bubble_select_stall_entry_d, bubble_select_stall_entry_b, bubble_select_stall_entry_s, bubble_select_stall_entry_q, bubble_select_stall_entry_m, bubble_select_stall_entry_e, bubble_select_stall_entry_c};

    // coalesced_delay_1_0(REG,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(200'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(join_for_coalesced_delay_1_q);
        end
    end

    // coalesced_delay_1_1(REG,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_1_q <= $unsigned(200'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_1_1_q <= $unsigned(coalesced_delay_1_0_q);
        end
    end

    // coalesced_delay_1_2(REG,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_2_q <= $unsigned(200'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_1_2_q <= $unsigned(coalesced_delay_1_1_q);
        end
    end

    // coalesced_delay_1_3(REG,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_3_q <= $unsigned(200'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_1_3_q <= $unsigned(coalesced_delay_1_2_q);
        end
    end

    // coalesced_delay_1_4(REG,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_4_q <= $unsigned(200'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist20_stall_entry_o20_5_0_backEN == 1'b1)
        begin
            coalesced_delay_1_4_q <= $unsigned(coalesced_delay_1_3_q);
        end
    end

    // c_i32_115(CONSTANT,5)
    assign c_i32_115_q = $unsigned(32'b00000000000000000000000000000001);

    // redist20_stall_entry_o20_5_0(REG,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_stall_entry_o20_5_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist20_stall_entry_o20_5_0_backEN == 1'b1)
        begin
            redist20_stall_entry_o20_5_0_q <= $unsigned(sel_for_coalesced_delay_0_d);
        end
    end

    // i_inc69_conv2d3x32(ADD,14)@5
    assign i_inc69_conv2d3x32_a = {1'b0, redist20_stall_entry_o20_5_0_q};
    assign i_inc69_conv2d3x32_b = {1'b0, c_i32_115_q};
    assign i_inc69_conv2d3x32_o = $unsigned(i_inc69_conv2d3x32_a) + $unsigned(i_inc69_conv2d3x32_b);
    assign i_inc69_conv2d3x32_q = i_inc69_conv2d3x32_o[32:0];

    // bgTrunc_i_inc69_conv2d3x32_sel_x(BITSELECT,35)@5
    assign bgTrunc_i_inc69_conv2d3x32_sel_x_b = i_inc69_conv2d3x32_q[31:0];

    // SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0(STALLENABLE,132)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_V0 = SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_backStall & SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backEN = ~ (SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_v_s_0 = SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backEN & SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_V;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backStall = ~ (SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_R_v_0 & SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0(STALLREG,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_valid <= 1'b0;
            SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_data1 <= 200'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_data2 <= 97'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_valid <= SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backStall & (SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_valid | SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_i_valid);

            if (SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_data0 <= bgTrunc_i_inc69_conv2d3x32_sel_x_b;
                SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_data1 <= $unsigned(coalesced_delay_1_4_q);
                SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_data2 <= $unsigned(coalesced_delay_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_i_valid = SE_redist20_stall_entry_o20_5_0_V0;
    // Stall signal propagation
    assign SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backStall = SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_valid | ~ (SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_V = SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_valid : SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_i_valid;

    // Data0
    assign SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_D0 = SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_data0 : bgTrunc_i_inc69_conv2d3x32_sel_x_b;
    // Data1
    assign SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_D1 = SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_data1 : coalesced_delay_1_4_q;
    // Data2
    assign SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_D2 = SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_r_data2 : coalesced_delay_2_0_q;

    // SE_redist20_stall_entry_o20_5_0(STALLENABLE,133)
    // Valid signal propagation
    assign SE_redist20_stall_entry_o20_5_0_V0 = SE_redist20_stall_entry_o20_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist20_stall_entry_o20_5_0_s_tv_0 = SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backStall & SE_redist20_stall_entry_o20_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist20_stall_entry_o20_5_0_backEN = ~ (SE_redist20_stall_entry_o20_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_stall_entry_o20_5_0_v_s_0 = SE_redist20_stall_entry_o20_5_0_backEN & SE_coalesced_delay_0_3_V1;
    // Backward Stall generation
    assign SE_redist20_stall_entry_o20_5_0_backStall = ~ (SE_redist20_stall_entry_o20_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_stall_entry_o20_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_stall_entry_o20_5_0_backEN == 1'b0)
            begin
                SE_redist20_stall_entry_o20_5_0_R_v_0 <= SE_redist20_stall_entry_o20_5_0_R_v_0 & SE_redist20_stall_entry_o20_5_0_s_tv_0;
            end
            else
            begin
                SE_redist20_stall_entry_o20_5_0_R_v_0 <= SE_redist20_stall_entry_o20_5_0_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_3(STALLENABLE,137)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    assign SE_coalesced_delay_0_3_V1 = SE_coalesced_delay_0_3_R_v_1;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_backStall & SE_coalesced_delay_0_3_R_v_0;
    assign SE_coalesced_delay_0_3_s_tv_1 = SE_redist20_stall_entry_o20_5_0_backStall & SE_coalesced_delay_0_3_R_v_1;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_or0 = SE_coalesced_delay_0_3_s_tv_0;
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_1 | SE_coalesced_delay_0_3_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SE_coalesced_delay_0_2_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_3_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_3_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_R_v_0 & SE_coalesced_delay_0_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_v_s_0;
            end

            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_1 <= SE_coalesced_delay_0_3_R_v_1 & SE_coalesced_delay_0_3_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_1 <= SE_coalesced_delay_0_3_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_2(STALLENABLE,136)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SE_coalesced_delay_0_1_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_1(STALLENABLE,135)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_coalesced_delay_0_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_0(STALLENABLE,134)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_stall_entry_V2;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30(BLACKBOX,16)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_ou0000size_sync_buffer21_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_1_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_1(STALLENABLE,159)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_1_V0 = SE_out_bubble_out_stall_entry_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_1_backStall = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_out_stall_out | ~ (SE_out_bubble_out_stall_entry_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_1_wireValid = bubble_out_stall_entry_1_reg_valid_out;

    // bubble_out_stall_entry_1_reg(STALLFIFO,166)
    assign bubble_out_stall_entry_1_reg_valid_in = SE_stall_entry_V0;
    assign bubble_out_stall_entry_1_reg_stall_in = SE_out_bubble_out_stall_entry_1_backStall;
    assign bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_1_reg_valid_in[0];
    assign bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_1_reg_stall_in[0];
    assign bubble_out_stall_entry_1_reg_valid_out[0] = bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_stall_out[0] = bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_1_reg (
        .valid_in(bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (bubble_out_stall_entry_1_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x(BLACKBOX,45)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@4
    // out out_c0_exit203_0_tpl@4
    // out out_c0_exit203_1_tpl@4
    conv2d3x3_i_sfc_s_c0_in_for_cond_cleanup0000_enter199_conv2d3x36 thei_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_stall_entry_i),
        .in_c0_eni3_2_tpl(bubble_select_stall_entry_f),
        .in_c0_eni3_3_tpl(bubble_select_stall_entry_s),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_out_o_valid),
        .out_c0_exit203_0_tpl(),
        .out_c0_exit203_1_tpl(i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_out_c0_exit203_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x(BITJOIN,105)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_out_c0_exit203_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x(BITSELECT,106)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_q[31:0]);

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x(STALLENABLE,125)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_backStall = i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_and0 = i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_wireValid = SE_coalesced_delay_0_3_V0 & SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_and0;

    // SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30(STALLENABLE,113)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_and0 = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_and1 = SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_and0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_wireValid = i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_o_valid & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_and1;

    // join_for_coalesced_delay_0(BITJOIN,72)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_j, bubble_select_stall_entry_r, bubble_select_stall_entry_n, bubble_select_stall_entry_k};

    // coalesced_delay_0_0(REG,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(129'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(129'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(129'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(129'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,73)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_3_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_3_q[95:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_3_q[127:96]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_3_q[128:128]);

    // i_add65_conv2d3x31(ADD,10)@4
    assign i_add65_conv2d3x31_a = {1'b0, sel_for_coalesced_delay_0_d};
    assign i_add65_conv2d3x31_b = {1'b0, sel_for_coalesced_delay_0_c};
    assign i_add65_conv2d3x31_o = $unsigned(i_add65_conv2d3x31_a) + $unsigned(i_add65_conv2d3x31_b);
    assign i_add65_conv2d3x31_q = i_add65_conv2d3x31_o[32:0];

    // bgTrunc_i_add65_conv2d3x31_sel_x(BITSELECT,34)@4
    assign bgTrunc_i_add65_conv2d3x31_sel_x_b = i_add65_conv2d3x31_q[31:0];

    // i_idxprom66_conv2d3x38_sel_x(BITSELECT,44)@4
    assign i_idxprom66_conv2d3x38_sel_x_b = $unsigned({{32{bgTrunc_i_add65_conv2d3x31_sel_x_b[31]}}, bgTrunc_i_add65_conv2d3x31_sel_x_b[31:0]});

    // i_arrayidx674_conv2d3x30_narrow_x(BITSELECT,40)@4
    assign i_arrayidx674_conv2d3x30_narrow_x_b = i_idxprom66_conv2d3x38_sel_x_b[61:0];

    // i_arrayidx674_conv2d3x30_c_i2_01_x(CONSTANT,39)
    assign i_arrayidx674_conv2d3x30_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx674_conv2d3x30_shift_join_x(BITJOIN,41)@4
    assign i_arrayidx674_conv2d3x30_shift_join_x_q = {i_arrayidx674_conv2d3x30_narrow_x_b, i_arrayidx674_conv2d3x30_c_i2_01_x_q};

    // i_arrayidx674_conv2d3x30_add_x(ADD,38)@4
    assign i_arrayidx674_conv2d3x30_add_x_a = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_arrayidx674_conv2d3x30_add_x_b = {1'b0, i_arrayidx674_conv2d3x30_shift_join_x_q};
    assign i_arrayidx674_conv2d3x30_add_x_o = $unsigned(i_arrayidx674_conv2d3x30_add_x_a) + $unsigned(i_arrayidx674_conv2d3x30_add_x_b);
    assign i_arrayidx674_conv2d3x30_add_x_q = i_arrayidx674_conv2d3x30_add_x_o[64:0];

    // i_arrayidx674_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,43)@4
    assign i_arrayidx674_conv2d3x30_dupName_0_trunc_sel_x_b = i_arrayidx674_conv2d3x30_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313(BLACKBOX,15)@4
    // in in_i_stall@20000000
    // out out_lsu_unnamed_conv2d3x36_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_unnamed_conv2d3x36_conv2d3x3_avm_address@20000000
    // out out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount@20000000
    // out out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable@20000000
    // out out_unnamed_conv2d3x36_conv2d3x3_avm_enable@20000000
    // out out_unnamed_conv2d3x36_conv2d3x3_avm_read@20000000
    // out out_unnamed_conv2d3x36_conv2d3x3_avm_write@20000000
    // out out_unnamed_conv2d3x36_conv2d3x3_avm_writedata@20000000
    conv2d3x3_i_llvm_fpga_mem_unnamed_6_conv2d3x30 thei_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx674_conv2d3x30_dupName_0_trunc_sel_x_b),
        .in_i_predicate(sel_for_coalesced_delay_0_e),
        .in_i_stall(SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter199_conv2d3x36_aunroll_x_b),
        .in_unnamed_conv2d3x36_conv2d3x3_avm_readdata(in_unnamed_conv2d3x36_conv2d3x3_avm_readdata),
        .in_unnamed_conv2d3x36_conv2d3x3_avm_readdatavalid(in_unnamed_conv2d3x36_conv2d3x3_avm_readdatavalid),
        .in_unnamed_conv2d3x36_conv2d3x3_avm_waitrequest(in_unnamed_conv2d3x36_conv2d3x3_avm_waitrequest),
        .in_unnamed_conv2d3x36_conv2d3x3_avm_writeack(in_unnamed_conv2d3x36_conv2d3x3_avm_writeack),
        .out_lsu_unnamed_conv2d3x36_o_active(i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_lsu_unnamed_conv2d3x36_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_o_valid),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_address(i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_address),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount(i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable(i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_enable(i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_enable),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_read(i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_read),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_write(i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_write),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_writedata(i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_address = i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_address;
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_enable = i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_enable;
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_read = i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_read;
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_write = i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_write;
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_writedata = i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_writedata;
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable = i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable;
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount = i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount;

    // sync_out(GPOUT,32)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,36)
    assign out_lsu_unnamed_conv2d3x36_o_active = i_llvm_fpga_mem_unnamed_conv2d3x36_conv2d3x313_out_lsu_unnamed_conv2d3x36_o_active;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30(BITJOIN,96)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_q = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30(BITSELECT,97)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_q[31:0]);

    // i_cmp_conv2d3x39(COMPARE,11)@6
    assign i_cmp_conv2d3x39_a = $unsigned({{2{redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_q[31]}}, redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_q});
    assign i_cmp_conv2d3x39_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_b});
    assign i_cmp_conv2d3x39_o = $unsigned($signed(i_cmp_conv2d3x39_a) - $signed(i_cmp_conv2d3x39_b));
    assign i_cmp_conv2d3x39_c[0] = i_cmp_conv2d3x39_o[33];

    // i_unnamed_conv2d3x312(LOGICAL,17)@6
    assign i_unnamed_conv2d3x312_q = sel_for_coalesced_delay_1_l & i_cmp_conv2d3x39_c;

    // redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0(REG,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_q <= $unsigned(SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_D0);
        end
    end

    // coalesced_delay_2_1(REG,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_1_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_2_1_q <= $unsigned(SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_D2);
        end
    end

    // sel_for_coalesced_delay_2(BITSELECT,79)
    assign sel_for_coalesced_delay_2_b = $unsigned(coalesced_delay_2_1_q[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(coalesced_delay_2_1_q[95:64]);
    assign sel_for_coalesced_delay_2_d = $unsigned(coalesced_delay_2_1_q[96:96]);

    // coalesced_delay_1_5(REG,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_5_q <= $unsigned(200'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_1_5_q <= $unsigned(SR_SE_redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_D1);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,76)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_5_q[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_5_q[95:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(coalesced_delay_1_5_q[127:96]);
    assign sel_for_coalesced_delay_1_e = $unsigned(coalesced_delay_1_5_q[159:128]);
    assign sel_for_coalesced_delay_1_f = $unsigned(coalesced_delay_1_5_q[191:160]);
    assign sel_for_coalesced_delay_1_g = $unsigned(coalesced_delay_1_5_q[192:192]);
    assign sel_for_coalesced_delay_1_h = $unsigned(coalesced_delay_1_5_q[193:193]);
    assign sel_for_coalesced_delay_1_i = $unsigned(coalesced_delay_1_5_q[194:194]);
    assign sel_for_coalesced_delay_1_j = $unsigned(coalesced_delay_1_5_q[195:195]);
    assign sel_for_coalesced_delay_1_k = $unsigned(coalesced_delay_1_5_q[196:196]);
    assign sel_for_coalesced_delay_1_l = $unsigned(coalesced_delay_1_5_q[197:197]);
    assign sel_for_coalesced_delay_1_m = $unsigned(coalesced_delay_1_5_q[198:198]);
    assign sel_for_coalesced_delay_1_n = $unsigned(coalesced_delay_1_5_q[199:199]);

    // dupName_0_sync_out_x(GPOUT,37)@6
    assign out_c0_exe1084 = sel_for_coalesced_delay_1_g;
    assign out_c0_exe114 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe1193 = sel_for_coalesced_delay_1_h;
    assign out_c0_exe12104 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe13114 = sel_for_coalesced_delay_1_i;
    assign out_c0_exe14123 = sel_for_coalesced_delay_1_j;
    assign out_c0_exe15133 = sel_for_coalesced_delay_1_k;
    assign out_c0_exe16134 = sel_for_coalesced_delay_2_d;
    assign out_c0_exe316 = sel_for_coalesced_delay_2_b;
    assign out_c0_exe425 = sel_for_coalesced_delay_1_l;
    assign out_c0_exe536 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe643 = sel_for_coalesced_delay_2_c;
    assign out_c0_exe755 = sel_for_coalesced_delay_1_m;
    assign out_c0_exe864 = sel_for_coalesced_delay_1_n;
    assign out_c0_exe974 = sel_for_coalesced_delay_1_e;
    assign out_inc69 = redist0_bgTrunc_i_inc69_conv2d3x32_sel_x_b_1_0_q;
    assign out_unnamed_conv2d3x34 = sel_for_coalesced_delay_1_f;
    assign out_unnamed_conv2d3x35 = i_unnamed_conv2d3x312_q;
    assign out_valid_out = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x30_V0;

endmodule
