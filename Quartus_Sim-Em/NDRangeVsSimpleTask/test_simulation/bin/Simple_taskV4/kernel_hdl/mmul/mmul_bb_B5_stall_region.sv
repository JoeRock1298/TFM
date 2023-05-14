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

// SystemVerilog created from mmul_bb_B5_stall_region
// SystemVerilog created on Wed May 10 11:59:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B5_stall_region (
    input wire [511:0] in_unnamed_mmul5_mmul_avm_readdata,
    input wire [0:0] in_unnamed_mmul5_mmul_avm_writeack,
    input wire [0:0] in_unnamed_mmul5_mmul_avm_waitrequest,
    input wire [0:0] in_unnamed_mmul5_mmul_avm_readdatavalid,
    output wire [30:0] out_unnamed_mmul5_mmul_avm_address,
    output wire [0:0] out_unnamed_mmul5_mmul_avm_enable,
    output wire [0:0] out_unnamed_mmul5_mmul_avm_read,
    output wire [0:0] out_unnamed_mmul5_mmul_avm_write,
    output wire [511:0] out_unnamed_mmul5_mmul_avm_writedata,
    output wire [63:0] out_unnamed_mmul5_mmul_avm_byteenable,
    output wire [4:0] out_unnamed_mmul5_mmul_avm_burstcount,
    input wire [63:0] in_C,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe105,
    input wire [0:0] in_c0_exe116,
    input wire [0:0] in_c0_exe2681,
    input wire [31:0] in_c0_exe3692,
    input wire [31:0] in_c0_exe6723,
    input wire [31:0] in_c1_exe17,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_mmul5_o_active,
    output wire [0:0] out_c0_exe105,
    output wire [0:0] out_c0_exe116,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [32:0] i_add16_mmul0_a;
    wire [32:0] i_add16_mmul0_b;
    logic [32:0] i_add16_mmul0_o;
    wire [32:0] i_add16_mmul0_q;
    wire [1:0] i_arrayidx183_mmul3_vt_const_1_q;
    wire [63:0] i_arrayidx183_mmul3_vt_join_q;
    wire [61:0] i_arrayidx183_mmul3_vt_select_63_b;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_lsu_unnamed_mmul5_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_writedata;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_select_63_b;
    wire [31:0] bgTrunc_i_add16_mmul0_sel_x_b;
    wire [64:0] i_arrayidx183_mmul0_add_x_a;
    wire [64:0] i_arrayidx183_mmul0_add_x_b;
    logic [64:0] i_arrayidx183_mmul0_add_x_o;
    wire [64:0] i_arrayidx183_mmul0_add_x_q;
    wire [61:0] i_arrayidx183_mmul0_narrow_x_b;
    wire [63:0] i_arrayidx183_mmul0_shift_join_x_q;
    wire [63:0] i_arrayidx183_mmul0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom17_mmul1_sel_x_b;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    reg [31:0] redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_q;
    reg [32:0] coalesced_delay_0_0_q;
    reg [1:0] coalesced_delay_1_0_q;
    reg [1:0] coalesced_delay_1_1_q;
    reg [1:0] coalesced_delay_1_2_q;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_b;
    wire [98:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_1;
    reg [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_2;
    wire [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_s_tv_2;
    wire [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_or0;
    wire [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_or1;
    wire [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_V0;
    wire [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_V1;
    wire [0:0] SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_V2;
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


    // SE_coalesced_delay_1_2(STALLENABLE,92)
    // Valid signal propagation
    assign SE_coalesced_delay_1_2_V0 = SE_coalesced_delay_1_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_2_s_tv_0 = SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_backStall & SE_coalesced_delay_1_2_R_v_0;
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

    // SE_coalesced_delay_1_1(STALLENABLE,91)
    // Valid signal propagation
    assign SE_coalesced_delay_1_1_V0 = SE_coalesced_delay_1_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_1_s_tv_0 = SE_coalesced_delay_1_2_backStall & SE_coalesced_delay_1_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_1_backEN = ~ (SE_coalesced_delay_1_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_1_v_s_0 = SE_coalesced_delay_1_1_backEN & SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_V0;
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

    // SE_stall_entry(STALLENABLE,76)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_backStall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0(STALLENABLE,88)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_V0 = SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_0;
    assign SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_V1 = SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_1;
    assign SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_V2 = SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_s_tv_0 = SE_coalesced_delay_1_1_backStall & SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_0;
    assign SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_s_tv_1 = SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_backStall & SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_1;
    assign SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_s_tv_2 = i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_stall_out & SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_or0 = SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_s_tv_0;
    assign SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_or1 = SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_s_tv_1 | SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_or0;
    assign SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_backEN = ~ (SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_s_tv_2 | SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_v_s_0 = SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_backStall = ~ (SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_1 <= 1'b0;
            SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_0 & SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_1 <= SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_1 & SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_1 <= SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_2 <= SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_2 & SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_s_tv_2;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_R_v_2 <= SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2(BLACKBOX,15)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmul_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2 (
        .in_buffer_in(in_C),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_backStall),
        .in_valid_in(SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_V2),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2(STALLENABLE,73)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_backStall = i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_and0 = i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_wireValid = SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_V1 & SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4(STALLENABLE,71)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_V0 = SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_and0 = i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_wireValid = SE_coalesced_delay_1_2_V0 & SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_and0;

    // bubble_join_stall_entry(BITJOIN,64)
    assign bubble_join_stall_entry_q = {in_c1_exe17, in_c0_exe6723, in_c0_exe3692, in_c0_exe2681, in_c0_exe116, in_c0_exe105};

    // bubble_select_stall_entry(BITSELECT,65)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:67]);

    // join_for_coalesced_delay_0(BITJOIN,49)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_d, bubble_select_stall_entry_g};

    // coalesced_delay_0_0(REG,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,50)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[32:32]);

    // i_add16_mmul0(ADD,8)@0
    assign i_add16_mmul0_a = {1'b0, bubble_select_stall_entry_f};
    assign i_add16_mmul0_b = {1'b0, bubble_select_stall_entry_e};
    assign i_add16_mmul0_o = $unsigned(i_add16_mmul0_a) + $unsigned(i_add16_mmul0_b);
    assign i_add16_mmul0_q = i_add16_mmul0_o[32:0];

    // bgTrunc_i_add16_mmul0_sel_x(BITSELECT,31)@0
    assign bgTrunc_i_add16_mmul0_sel_x_b = i_add16_mmul0_q[31:0];

    // redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add16_mmul0_sel_x_b);
        end
    end

    // i_idxprom17_mmul1_sel_x(BITSELECT,40)@1
    assign i_idxprom17_mmul1_sel_x_b = $unsigned({{32{redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_q[31]}}, redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_q[31:0]});

    // i_arrayidx183_mmul0_narrow_x(BITSELECT,36)@1
    assign i_arrayidx183_mmul0_narrow_x_b = i_idxprom17_mmul1_sel_x_b[61:0];

    // i_arrayidx183_mmul0_shift_join_x(BITJOIN,37)@1
    assign i_arrayidx183_mmul0_shift_join_x_q = {i_arrayidx183_mmul0_narrow_x_b, i_arrayidx183_mmul3_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2(BITJOIN,61)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_q = i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2(BITSELECT,62)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_select_63(BITSELECT,18)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_const_9(CONSTANT,16)
    assign i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_join(BITJOIN,17)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_const_9_q};

    // i_arrayidx183_mmul0_add_x(ADD,34)@1
    assign i_arrayidx183_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_join_q};
    assign i_arrayidx183_mmul0_add_x_b = {1'b0, i_arrayidx183_mmul0_shift_join_x_q};
    assign i_arrayidx183_mmul0_add_x_o = $unsigned(i_arrayidx183_mmul0_add_x_a) + $unsigned(i_arrayidx183_mmul0_add_x_b);
    assign i_arrayidx183_mmul0_add_x_q = i_arrayidx183_mmul0_add_x_o[64:0];

    // i_arrayidx183_mmul0_dupName_0_trunc_sel_x(BITSELECT,39)@1
    assign i_arrayidx183_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx183_mmul0_add_x_q[63:0];

    // i_arrayidx183_mmul3_vt_select_63(BITSELECT,11)@1
    assign i_arrayidx183_mmul3_vt_select_63_b = i_arrayidx183_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx183_mmul3_vt_const_1(CONSTANT,9)
    assign i_arrayidx183_mmul3_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx183_mmul3_vt_join(BITJOIN,10)@1
    assign i_arrayidx183_mmul3_vt_join_q = {i_arrayidx183_mmul3_vt_select_63_b, i_arrayidx183_mmul3_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_mmul5_mmul4(BLACKBOX,14)@1
    // in in_i_stall@20000000
    // out out_lsu_unnamed_mmul5_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@3
    // out out_unnamed_mmul5_mmul_avm_address@20000000
    // out out_unnamed_mmul5_mmul_avm_burstcount@20000000
    // out out_unnamed_mmul5_mmul_avm_byteenable@20000000
    // out out_unnamed_mmul5_mmul_avm_enable@20000000
    // out out_unnamed_mmul5_mmul_avm_read@20000000
    // out out_unnamed_mmul5_mmul_avm_write@20000000
    // out out_unnamed_mmul5_mmul_avm_writedata@20000000
    mmul_i_llvm_fpga_mem_unnamed_5_mmul0 thei_llvm_fpga_mem_unnamed_mmul5_mmul4 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx183_mmul3_vt_join_q),
        .in_i_predicate(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_V0),
        .in_i_writedata(sel_for_coalesced_delay_0_b),
        .in_unnamed_mmul5_mmul_avm_readdata(in_unnamed_mmul5_mmul_avm_readdata),
        .in_unnamed_mmul5_mmul_avm_readdatavalid(in_unnamed_mmul5_mmul_avm_readdatavalid),
        .in_unnamed_mmul5_mmul_avm_waitrequest(in_unnamed_mmul5_mmul_avm_waitrequest),
        .in_unnamed_mmul5_mmul_avm_writeack(in_unnamed_mmul5_mmul_avm_writeack),
        .out_lsu_unnamed_mmul5_o_active(i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_lsu_unnamed_mmul5_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_o_valid),
        .out_unnamed_mmul5_mmul_avm_address(i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_address),
        .out_unnamed_mmul5_mmul_avm_burstcount(i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_burstcount),
        .out_unnamed_mmul5_mmul_avm_byteenable(i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_byteenable),
        .out_unnamed_mmul5_mmul_avm_enable(i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_enable),
        .out_unnamed_mmul5_mmul_avm_read(i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_read),
        .out_unnamed_mmul5_mmul_avm_write(i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_write),
        .out_unnamed_mmul5_mmul_avm_writedata(i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_mmul5_mmul_avm_address = i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_address;
    assign out_unnamed_mmul5_mmul_avm_enable = i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_enable;
    assign out_unnamed_mmul5_mmul_avm_read = i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_read;
    assign out_unnamed_mmul5_mmul_avm_write = i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_write;
    assign out_unnamed_mmul5_mmul_avm_writedata = i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_writedata;
    assign out_unnamed_mmul5_mmul_avm_byteenable = i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_byteenable;
    assign out_unnamed_mmul5_mmul_avm_burstcount = i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_unnamed_mmul5_mmul_avm_burstcount;

    // sync_out(GPOUT,29)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,32)
    assign out_lsu_unnamed_mmul5_o_active = i_llvm_fpga_mem_unnamed_mmul5_mmul4_out_lsu_unnamed_mmul5_o_active;

    // join_for_coalesced_delay_1(BITJOIN,52)
    assign join_for_coalesced_delay_1_q = {bubble_select_stall_entry_c, bubble_select_stall_entry_b};

    // coalesced_delay_1_0(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_redist0_bgTrunc_i_add16_mmul0_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(join_for_coalesced_delay_1_q);
        end
    end

    // coalesced_delay_1_1(REG,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_1_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_1_1_backEN == 1'b1)
        begin
            coalesced_delay_1_1_q <= $unsigned(coalesced_delay_1_0_q);
        end
    end

    // coalesced_delay_1_2(REG,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_2_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_1_2_backEN == 1'b1)
        begin
            coalesced_delay_1_2_q <= $unsigned(coalesced_delay_1_1_q);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,53)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_2_q[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_2_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,33)@3
    assign out_c0_exe105 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe116 = sel_for_coalesced_delay_1_c;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_unnamed_mmul5_mmul4_V0;

endmodule
