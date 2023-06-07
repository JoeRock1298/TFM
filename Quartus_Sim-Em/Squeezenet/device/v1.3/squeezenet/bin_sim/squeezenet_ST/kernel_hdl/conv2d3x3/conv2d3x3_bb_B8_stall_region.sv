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

// SystemVerilog created from conv2d3x3_bb_B8_stall_region
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B8_stall_region (
    input wire [511:0] in_unnamed_conv2d3x319_conv2d3x3_avm_readdata,
    input wire [0:0] in_unnamed_conv2d3x319_conv2d3x3_avm_writeack,
    input wire [0:0] in_unnamed_conv2d3x319_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d3x319_conv2d3x3_avm_readdatavalid,
    output wire [30:0] out_unnamed_conv2d3x319_conv2d3x3_avm_address,
    output wire [0:0] out_unnamed_conv2d3x319_conv2d3x3_avm_enable,
    output wire [0:0] out_unnamed_conv2d3x319_conv2d3x3_avm_read,
    output wire [0:0] out_unnamed_conv2d3x319_conv2d3x3_avm_write,
    output wire [511:0] out_unnamed_conv2d3x319_conv2d3x3_avm_writedata,
    output wire [63:0] out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable,
    output wire [4:0] out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe11114896,
    input wire [31:0] in_c0_exe13115099,
    input wire [0:0] in_c0_exe151152104,
    input wire [31:0] in_c0_exe181155108,
    input wire [0:0] in_c0_exe261163118,
    input wire [0:0] in_c0_exe301167123,
    input wire [31:0] in_c0_exe321169126,
    input wire [0:0] in_c0_exe6114393,
    input wire [31:0] in_c1_exe11205150,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_conv2d3x319_o_active,
    output wire [0:0] out_c0_exe151152104,
    output wire [0:0] out_c0_exe261163118,
    output wire [0:0] out_c0_exe301167123,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [32:0] i_add57_conv2d3x36_a;
    wire [32:0] i_add57_conv2d3x36_b;
    logic [32:0] i_add57_conv2d3x36_o;
    wire [32:0] i_add57_conv2d3x36_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_lsu_unnamed_conv2d3x319_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_writedata;
    wire [31:0] bgTrunc_i_add57_conv2d3x36_sel_x_b;
    wire [64:0] i_arrayidx59_conv2d3x30_add_x_a;
    wire [64:0] i_arrayidx59_conv2d3x30_add_x_b;
    logic [64:0] i_arrayidx59_conv2d3x30_add_x_o;
    wire [64:0] i_arrayidx59_conv2d3x30_add_x_q;
    wire [1:0] i_arrayidx59_conv2d3x30_c_i2_01_x_q;
    wire [61:0] i_arrayidx59_conv2d3x30_narrow_x_b;
    wire [63:0] i_arrayidx59_conv2d3x30_shift_join_x_q;
    wire [63:0] i_arrayidx59_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom58_conv2d3x37_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_out_c0_exit640_1_tpl;
    wire [2:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [64:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    reg [31:0] redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_q;
    reg [63:0] redist2_stall_entry_o4_1_0_q;
    reg [2:0] coalesced_delay_0_0_q;
    reg [2:0] coalesced_delay_0_1_q;
    reg [2:0] coalesced_delay_0_2_q;
    reg [2:0] coalesced_delay_0_3_q;
    reg [2:0] coalesced_delay_0_4_q;
    reg [2:0] coalesced_delay_0_5_q;
    reg [64:0] coalesced_delay_1_0_q;
    reg [64:0] coalesced_delay_1_1_q;
    reg [64:0] coalesced_delay_1_2_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_b;
    wire [195:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_V0;
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
    wire [0:0] SE_i_arrayidx59_conv2d3x30_add_x_wireValid;
    wire [0:0] SE_i_arrayidx59_conv2d3x30_add_x_and0;
    wire [0:0] SE_i_arrayidx59_conv2d3x30_add_x_backStall;
    wire [0:0] SE_i_arrayidx59_conv2d3x30_add_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_V0;
    reg [0:0] SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_or0;
    wire [0:0] SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_V0;
    wire [0:0] SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_V1;
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
    wire [0:0] SE_coalesced_delay_0_3_v_s_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_3_backEN;
    wire [0:0] SE_coalesced_delay_0_3_backStall;
    wire [0:0] SE_coalesced_delay_0_3_V0;
    reg [0:0] SE_coalesced_delay_0_4_R_v_0;
    wire [0:0] SE_coalesced_delay_0_4_v_s_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_4_backEN;
    wire [0:0] SE_coalesced_delay_0_4_backStall;
    wire [0:0] SE_coalesced_delay_0_4_V0;
    reg [0:0] SE_coalesced_delay_0_5_R_v_0;
    wire [0:0] SE_coalesced_delay_0_5_v_s_0;
    wire [0:0] SE_coalesced_delay_0_5_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_5_backEN;
    wire [0:0] SE_coalesced_delay_0_5_backStall;
    wire [0:0] SE_coalesced_delay_0_5_V0;
    reg [0:0] SE_coalesced_delay_1_0_R_v_0;
    wire [0:0] SE_coalesced_delay_1_0_v_s_0;
    wire [0:0] SE_coalesced_delay_1_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_1_0_backEN;
    wire [0:0] SE_coalesced_delay_1_0_backStall;
    wire [0:0] SE_coalesced_delay_1_0_V0;
    reg [0:0] SE_coalesced_delay_1_1_R_v_0;
    wire [0:0] SE_coalesced_delay_1_1_v_s_0;
    wire [0:0] SE_coalesced_delay_1_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_1_1_backEN;
    wire [0:0] SE_coalesced_delay_1_1_backStall;
    wire [0:0] SE_coalesced_delay_1_1_V0;
    reg [0:0] SE_coalesced_delay_1_2_R_v_0;
    wire [0:0] SE_coalesced_delay_1_2_v_s_0;
    wire [0:0] SE_coalesced_delay_1_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_1_2_backEN;
    wire [0:0] SE_coalesced_delay_1_2_backStall;
    wire [0:0] SE_coalesced_delay_1_2_V0;
    wire [0:0] SR_SE_coalesced_delay_0_5_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_5_r_valid;
    reg [2:0] SR_SE_coalesced_delay_0_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_5_V;
    wire [2:0] SR_SE_coalesced_delay_0_5_D0;


    // bubble_join_stall_entry(BITJOIN,69)
    assign bubble_join_stall_entry_q = {in_c1_exe11205150, in_c0_exe6114393, in_c0_exe321169126, in_c0_exe301167123, in_c0_exe261163118, in_c0_exe181155108, in_c0_exe151152104, in_c0_exe13115099, in_c0_exe11114896};

    // bubble_select_stall_entry(BITSELECT,70)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:96]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[129:129]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[130:130]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[162:131]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[163:163]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[195:164]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_coalesced_delay_1_2(STALLENABLE,105)
    // Valid signal propagation
    assign SE_coalesced_delay_1_2_V0 = SE_coalesced_delay_1_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_2_s_tv_0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_backStall & SE_coalesced_delay_1_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_2_backEN = ~ (SE_coalesced_delay_1_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_2_v_s_0 = SE_coalesced_delay_1_2_backEN & SE_coalesced_delay_1_1_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_1_2_backStall = ~ (SE_coalesced_delay_1_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_1_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_1_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_1_2_R_v_0 <= SE_coalesced_delay_1_2_R_v_0 & SE_coalesced_delay_1_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_1_2_R_v_0 <= SE_coalesced_delay_1_2_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_1_1(STALLENABLE,104)
    // Valid signal propagation
    assign SE_coalesced_delay_1_1_V0 = SE_coalesced_delay_1_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_1_s_tv_0 = SE_coalesced_delay_1_2_backStall & SE_coalesced_delay_1_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_1_backEN = ~ (SE_coalesced_delay_1_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_1_v_s_0 = SE_coalesced_delay_1_1_backEN & SE_coalesced_delay_1_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_1_1_backStall = ~ (SE_coalesced_delay_1_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_1_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_1_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_1_1_R_v_0 <= SE_coalesced_delay_1_1_R_v_0 & SE_coalesced_delay_1_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_1_1_R_v_0 <= SE_coalesced_delay_1_1_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_1_0(STALLENABLE,103)
    // Valid signal propagation
    assign SE_coalesced_delay_1_0_V0 = SE_coalesced_delay_1_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_0_s_tv_0 = SE_coalesced_delay_1_1_backStall & SE_coalesced_delay_1_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_0_backEN = ~ (SE_coalesced_delay_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_0_v_s_0 = SE_coalesced_delay_1_0_backEN & SE_i_arrayidx59_conv2d3x30_add_x_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_1_0_backStall = ~ (SE_coalesced_delay_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_1_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_1_0_R_v_0 <= SE_coalesced_delay_1_0_R_v_0 & SE_coalesced_delay_1_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_1_0_R_v_0 <= SE_coalesced_delay_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx59_conv2d3x30_add_x(STALLENABLE,84)
    // Valid signal propagation
    assign SE_i_arrayidx59_conv2d3x30_add_x_V0 = SE_i_arrayidx59_conv2d3x30_add_x_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx59_conv2d3x30_add_x_backStall = SE_coalesced_delay_1_0_backStall | ~ (SE_i_arrayidx59_conv2d3x30_add_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx59_conv2d3x30_add_x_and0 = SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_V1;
    assign SE_i_arrayidx59_conv2d3x30_add_x_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_out_valid_out & SE_i_arrayidx59_conv2d3x30_add_x_and0;

    // join_for_coalesced_delay_0(BITJOIN,48)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_g, bubble_select_stall_entry_f, bubble_select_stall_entry_d};

    // coalesced_delay_0_0(REG,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(3'b000);
        end
        else if (SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(3'b000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(3'b000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(3'b000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // coalesced_delay_0_4(REG,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(3'b000);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(coalesced_delay_0_3_q);
        end
    end

    // SE_coalesced_delay_0_5(STALLENABLE,102)
    // Valid signal propagation
    assign SE_coalesced_delay_0_5_V0 = SE_coalesced_delay_0_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_5_s_tv_0 = SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_backStall & SE_coalesced_delay_0_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_5_backEN = ~ (SE_coalesced_delay_0_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_5_v_s_0 = SE_coalesced_delay_0_5_backEN & SR_SE_coalesced_delay_0_5_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_5_backStall = ~ (SE_coalesced_delay_0_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_5_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_R_v_0 & SE_coalesced_delay_0_5_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_5(STALLREG,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_5_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_5_r_data0 <= 3'bxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_5_r_valid <= SE_coalesced_delay_0_5_backStall & (SR_SE_coalesced_delay_0_5_r_valid | SR_SE_coalesced_delay_0_5_i_valid);

            if (SR_SE_coalesced_delay_0_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_5_r_data0 <= $unsigned(coalesced_delay_0_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_5_i_valid = SE_coalesced_delay_0_4_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_5_backStall = SR_SE_coalesced_delay_0_5_r_valid | ~ (SR_SE_coalesced_delay_0_5_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_5_V = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_valid : SR_SE_coalesced_delay_0_5_i_valid;

    assign SR_SE_coalesced_delay_0_5_D0 = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_data0 : coalesced_delay_0_4_q;

    // SE_coalesced_delay_0_4(STALLENABLE,101)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SR_SE_coalesced_delay_0_5_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SE_coalesced_delay_0_3_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_R_v_0 & SE_coalesced_delay_0_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_3(STALLENABLE,100)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SE_coalesced_delay_0_2_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_3_R_v_0 <= 1'b0;
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

        end
    end

    // SE_coalesced_delay_0_2(STALLENABLE,99)
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

    // SE_coalesced_delay_0_1(STALLENABLE,98)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_V0;
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

    // SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0(STALLENABLE,95)
    // Valid signal propagation
    assign SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_V0 = SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_0;
    assign SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_V1 = SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_0;
    assign SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_s_tv_1 = SE_i_arrayidx59_conv2d3x30_add_x_backStall & SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_or0 = SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_s_tv_0;
    assign SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_backEN = ~ (SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_s_tv_1 | SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_v_s_0 = SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_backEN & SE_stall_entry_V1;
    // Backward Stall generation
    assign SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_backStall = ~ (SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_0 <= SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_0 & SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_0 <= SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_1 <= SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_1 & SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_R_v_1 <= SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_5_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    conv2d3x3_i_llvm_fpga_ffwd_dest_i1_unnamed_18_conv2d3x30 thei_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(SE_i_arrayidx59_conv2d3x30_add_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_out_dest_data_out_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,81)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
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

    // i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x(BLACKBOX,37)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@4
    // out out_c0_exit640_0_tpl@4
    // out out_c0_exit640_1_tpl@4
    conv2d3x3_i_sfc_s_c0_in_for_cond_cleanup0000_enter635_conv2d3x34 thei_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V2),
        .in_c0_eni3634_0_tpl(GND_q),
        .in_c0_eni3634_1_tpl(bubble_select_stall_entry_i),
        .in_c0_eni3634_2_tpl(bubble_select_stall_entry_j),
        .in_c0_eni3634_3_tpl(bubble_select_stall_entry_c),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_out_o_valid),
        .out_c0_exit640_0_tpl(),
        .out_c0_exit640_1_tpl(i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_out_c0_exit640_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x(BITJOIN,74)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_out_c0_exit640_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x(BITSELECT,75)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_q[31:0]);

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x(STALLENABLE,90)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_backStall = i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_and0 = i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_wireValid = SE_coalesced_delay_1_2_V0 & SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39(STALLENABLE,80)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_V0 = SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_and0 = i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_wireValid = SE_coalesced_delay_0_5_V0 & SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30(BITJOIN,65)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_q = i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_out_dest_data_out_5_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30(BITSELECT,66)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_q[0:0]);

    // i_add57_conv2d3x36(ADD,8)@0
    assign i_add57_conv2d3x36_a = {1'b0, bubble_select_stall_entry_h};
    assign i_add57_conv2d3x36_b = {1'b0, bubble_select_stall_entry_e};
    assign i_add57_conv2d3x36_o = $unsigned(i_add57_conv2d3x36_a) + $unsigned(i_add57_conv2d3x36_b);
    assign i_add57_conv2d3x36_q = i_add57_conv2d3x36_o[32:0];

    // bgTrunc_i_add57_conv2d3x36_sel_x(BITSELECT,27)@0
    assign bgTrunc_i_add57_conv2d3x36_sel_x_b = i_add57_conv2d3x36_q[31:0];

    // redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0(REG,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add57_conv2d3x36_sel_x_b);
        end
    end

    // i_idxprom58_conv2d3x37_sel_x(BITSELECT,36)@1
    assign i_idxprom58_conv2d3x37_sel_x_b = $unsigned({{32{redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_q[31]}}, redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_q[31:0]});

    // i_arrayidx59_conv2d3x30_narrow_x(BITSELECT,32)@1
    assign i_arrayidx59_conv2d3x30_narrow_x_b = i_idxprom58_conv2d3x37_sel_x_b[61:0];

    // i_arrayidx59_conv2d3x30_c_i2_01_x(CONSTANT,31)
    assign i_arrayidx59_conv2d3x30_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx59_conv2d3x30_shift_join_x(BITJOIN,33)@1
    assign i_arrayidx59_conv2d3x30_shift_join_x_q = {i_arrayidx59_conv2d3x30_narrow_x_b, i_arrayidx59_conv2d3x30_c_i2_01_x_q};

    // redist2_stall_entry_o4_1_0(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_stall_entry_o4_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_bgTrunc_i_add57_conv2d3x36_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist2_stall_entry_o4_1_0_q <= $unsigned(bubble_select_stall_entry_b);
        end
    end

    // i_arrayidx59_conv2d3x30_add_x(ADD,30)@1
    assign i_arrayidx59_conv2d3x30_add_x_a = {1'b0, redist2_stall_entry_o4_1_0_q};
    assign i_arrayidx59_conv2d3x30_add_x_b = {1'b0, i_arrayidx59_conv2d3x30_shift_join_x_q};
    assign i_arrayidx59_conv2d3x30_add_x_o = $unsigned(i_arrayidx59_conv2d3x30_add_x_a) + $unsigned(i_arrayidx59_conv2d3x30_add_x_b);
    assign i_arrayidx59_conv2d3x30_add_x_q = i_arrayidx59_conv2d3x30_add_x_o[64:0];

    // i_arrayidx59_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,35)@1
    assign i_arrayidx59_conv2d3x30_dupName_0_trunc_sel_x_b = i_arrayidx59_conv2d3x30_add_x_q[63:0];

    // join_for_coalesced_delay_1(BITJOIN,51)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x318_conv2d3x30_b, i_arrayidx59_conv2d3x30_dupName_0_trunc_sel_x_b};

    // coalesced_delay_1_0(REG,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_1_0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(join_for_coalesced_delay_1_q);
        end
    end

    // coalesced_delay_1_1(REG,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_1_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_1_1_backEN == 1'b1)
        begin
            coalesced_delay_1_1_q <= $unsigned(coalesced_delay_1_0_q);
        end
    end

    // coalesced_delay_1_2(REG,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_2_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_1_2_backEN == 1'b1)
        begin
            coalesced_delay_1_2_q <= $unsigned(coalesced_delay_1_1_q);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,52)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_2_q[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_2_q[64:64]);

    // i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39(BLACKBOX,12)@4
    // in in_i_stall@20000000
    // out out_lsu_unnamed_conv2d3x319_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_unnamed_conv2d3x319_conv2d3x3_avm_address@20000000
    // out out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount@20000000
    // out out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable@20000000
    // out out_unnamed_conv2d3x319_conv2d3x3_avm_enable@20000000
    // out out_unnamed_conv2d3x319_conv2d3x3_avm_read@20000000
    // out out_unnamed_conv2d3x319_conv2d3x3_avm_write@20000000
    // out out_unnamed_conv2d3x319_conv2d3x3_avm_writedata@20000000
    conv2d3x3_i_llvm_fpga_mem_unnamed_19_conv2d3x30 thei_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_1_b),
        .in_i_predicate(sel_for_coalesced_delay_1_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_cond_cleanup12_conv2d3x3s_c0_enter635_conv2d3x34_aunroll_x_b),
        .in_unnamed_conv2d3x319_conv2d3x3_avm_readdata(in_unnamed_conv2d3x319_conv2d3x3_avm_readdata),
        .in_unnamed_conv2d3x319_conv2d3x3_avm_readdatavalid(in_unnamed_conv2d3x319_conv2d3x3_avm_readdatavalid),
        .in_unnamed_conv2d3x319_conv2d3x3_avm_waitrequest(in_unnamed_conv2d3x319_conv2d3x3_avm_waitrequest),
        .in_unnamed_conv2d3x319_conv2d3x3_avm_writeack(in_unnamed_conv2d3x319_conv2d3x3_avm_writeack),
        .out_lsu_unnamed_conv2d3x319_o_active(i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_lsu_unnamed_conv2d3x319_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_o_valid),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_address(i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_address),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount(i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable(i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_enable(i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_enable),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_read(i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_read),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_write(i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_write),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_writedata(i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_address = i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_address;
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_enable = i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_enable;
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_read = i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_read;
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_write = i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_write;
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_writedata = i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_writedata;
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable = i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable;
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount = i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount;

    // sync_out(GPOUT,25)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,28)
    assign out_lsu_unnamed_conv2d3x319_o_active = i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_out_lsu_unnamed_conv2d3x319_o_active;

    // coalesced_delay_0_5(REG,60)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(3'b000);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_coalesced_delay_0_5_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,49)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_5_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_5_q[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_5_q[2:2]);

    // dupName_0_sync_out_x(GPOUT,29)@6
    assign out_c0_exe151152104 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe261163118 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe301167123 = sel_for_coalesced_delay_0_d;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_unnamed_conv2d3x319_conv2d3x39_V0;

endmodule
