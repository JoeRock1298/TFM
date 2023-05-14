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
// SystemVerilog created on Wed May 10 11:34:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B1_stall_region (
    input wire [511:0] in_memdep_mmul_avm_readdata,
    input wire [0:0] in_memdep_mmul_avm_writeack,
    input wire [0:0] in_memdep_mmul_avm_waitrequest,
    input wire [0:0] in_memdep_mmul_avm_readdatavalid,
    output wire [30:0] out_memdep_mmul_avm_address,
    output wire [0:0] out_memdep_mmul_avm_enable,
    output wire [0:0] out_memdep_mmul_avm_read,
    output wire [0:0] out_memdep_mmul_avm_write,
    output wire [511:0] out_memdep_mmul_avm_writedata,
    output wire [63:0] out_memdep_mmul_avm_byteenable,
    output wire [4:0] out_memdep_mmul_avm_burstcount,
    output wire [0:0] out_feedback_out_0,
    input wire [0:0] in_feedback_stall_in_0,
    output wire [0:0] out_feedback_valid_out_0,
    input wire [63:0] in_C,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_j_m,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_0_000000e_0011_q;
    wire [32:0] i_add7_mmul5_a;
    wire [32:0] i_add7_mmul5_b;
    logic [32:0] i_add7_mmul5_o;
    wire [32:0] i_add7_mmul5_q;
    wire [1:0] i_arrayidx91_mmul8_vt_const_1_q;
    wire [63:0] i_arrayidx91_mmul8_vt_join_q;
    wire [61:0] i_arrayidx91_mmul8_vt_select_63_b;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul9_out_lsu_memdep_o_active;
    wire [30:0] i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_address;
    wire [4:0] i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul9_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul9_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul9_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_mmul10_out_feedback_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_mmul10_out_feedback_valid_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_mmul10_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_mmul10_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_vt_select_63_b;
    wire [0:0] i_tmp_0_lcssa_select_mmul2_s;
    reg [31:0] i_tmp_0_lcssa_select_mmul2_q;
    wire [31:0] bgTrunc_i_add7_mmul5_sel_x_b;
    wire [64:0] i_arrayidx91_mmul0_add_x_a;
    wire [64:0] i_arrayidx91_mmul0_add_x_b;
    logic [64:0] i_arrayidx91_mmul0_add_x_o;
    wire [64:0] i_arrayidx91_mmul0_add_x_q;
    wire [61:0] i_arrayidx91_mmul0_narrow_x_b;
    wire [63:0] i_arrayidx91_mmul0_shift_join_x_q;
    wire [63:0] i_arrayidx91_mmul0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom8_mmul6_sel_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_mmul9_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_mmul9_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul9_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_mmul10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_mmul10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_and1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_and2;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_and3;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_V0;
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
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    reg [0:0] bubble_out_stall_entry_4_reg_R_v_0;
    reg [0:0] bubble_out_stall_entry_4_reg_R_v_1;
    wire [0:0] bubble_out_stall_entry_4_reg_v_s_0;
    wire [0:0] bubble_out_stall_entry_4_reg_s_tv_0;
    wire [0:0] bubble_out_stall_entry_4_reg_s_tv_1;
    wire [0:0] bubble_out_stall_entry_4_reg_backEN;
    wire [0:0] bubble_out_stall_entry_4_reg_or0;
    wire [0:0] bubble_out_stall_entry_4_reg_backStall;
    wire [0:0] bubble_out_stall_entry_4_reg_V0;
    wire [0:0] bubble_out_stall_entry_4_reg_V1;


    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7(BLACKBOX,24)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmul_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7 (
        .in_buffer_in(in_C),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_backStall),
        .in_valid_in(bubble_out_stall_entry_4_reg_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3(BLACKBOX,23)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmul_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_0 thei_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3 (
        .in_buffer_in(in_j_m),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_backStall),
        .in_valid_in(bubble_out_stall_entry_4_reg_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_4_reg(STALLENABLE,155)
    // Valid signal propagation
    assign bubble_out_stall_entry_4_reg_V0 = bubble_out_stall_entry_4_reg_R_v_0;
    assign bubble_out_stall_entry_4_reg_V1 = bubble_out_stall_entry_4_reg_R_v_1;
    // Stall signal propagation
    assign bubble_out_stall_entry_4_reg_s_tv_0 = i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_out_stall_out & bubble_out_stall_entry_4_reg_R_v_0;
    assign bubble_out_stall_entry_4_reg_s_tv_1 = i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_out_stall_out & bubble_out_stall_entry_4_reg_R_v_1;
    // Backward Enable generation
    assign bubble_out_stall_entry_4_reg_or0 = bubble_out_stall_entry_4_reg_s_tv_0;
    assign bubble_out_stall_entry_4_reg_backEN = ~ (bubble_out_stall_entry_4_reg_s_tv_1 | bubble_out_stall_entry_4_reg_or0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_stall_entry_4_reg_v_s_0 = bubble_out_stall_entry_4_reg_backEN & SE_stall_entry_V3;
    // Backward Stall generation
    assign bubble_out_stall_entry_4_reg_backStall = ~ (bubble_out_stall_entry_4_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_stall_entry_4_reg_R_v_0 <= 1'b0;
            bubble_out_stall_entry_4_reg_R_v_1 <= 1'b0;
        end
        else
        begin
            if (bubble_out_stall_entry_4_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_4_reg_R_v_0 <= bubble_out_stall_entry_4_reg_R_v_0 & bubble_out_stall_entry_4_reg_s_tv_0;
            end
            else
            begin
                bubble_out_stall_entry_4_reg_R_v_0 <= bubble_out_stall_entry_4_reg_v_s_0;
            end

            if (bubble_out_stall_entry_4_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_4_reg_R_v_1 <= bubble_out_stall_entry_4_reg_R_v_1 & bubble_out_stall_entry_4_reg_s_tv_1;
            end
            else
            begin
                bubble_out_stall_entry_4_reg_R_v_1 <= bubble_out_stall_entry_4_reg_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_mul9_mmul4(BLACKBOX,20)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    mmul_i_llvm_fpga_ffwd_dest_i32_mul9_0 thei_llvm_fpga_ffwd_dest_i32_mul9_mmul4 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    mmul_i_llvm_fpga_ffwd_dest_i1_cmp127_0 thei_llvm_fpga_ffwd_dest_i1_cmp127_mmul0 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (bubble_out_stall_entry_4_reg_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed3 & SE_stall_entry_or2);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1(BLACKBOX,18)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    mmul_i_llvm_fpga_ffwd_dest_f32_unnamed_6_mmul0 thei_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1(BITJOIN,68)
    assign bubble_join_i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_q = i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1(BITSELECT,69)
    assign bubble_select_i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_q[31:0]);

    // c_float_0_000000e_0011(FLOATCONSTANT,3)
    assign c_float_0_000000e_0011_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0(BITJOIN,71)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_q = i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0(BITSELECT,72)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_tmp_0_lcssa_select_mmul2(MUX,28)@1
    assign i_tmp_0_lcssa_select_mmul2_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_b;
    always @(i_tmp_0_lcssa_select_mmul2_s or c_float_0_000000e_0011_q or bubble_select_i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_b)
    begin
        unique case (i_tmp_0_lcssa_select_mmul2_s)
            1'b0 : i_tmp_0_lcssa_select_mmul2_q = c_float_0_000000e_0011_q;
            1'b1 : i_tmp_0_lcssa_select_mmul2_q = bubble_select_i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_b;
            default : i_tmp_0_lcssa_select_mmul2_q = 32'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3(STALLENABLE,105)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_backStall = i_llvm_fpga_mem_memdep_mmul9_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_and0 = i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_and1 = i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_and0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_and2 = i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_and1;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_and3 = i_llvm_fpga_ffwd_dest_i1_cmp127_mmul0_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_and2;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_wireValid = i_llvm_fpga_ffwd_dest_f32_unnamed_mmul6_mmul1_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_and3;

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_mmul10(STALLENABLE,103)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_mmul10_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_mmul10_wireValid = i_llvm_fpga_push_token_i1_throttle_push_mmul10_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_mmul9(BITJOIN,77)
    assign bubble_join_i_llvm_fpga_mem_memdep_mmul9_q = i_llvm_fpga_mem_memdep_mmul9_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_mmul9(BITSELECT,78)
    assign bubble_select_i_llvm_fpga_mem_memdep_mmul9_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_mmul9_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_mmul10(BLACKBOX,22)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_0@20000000
    // out out_feedback_valid_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    mmul_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_mmul10 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_mmul9_b),
        .in_feedback_stall_in_0(in_feedback_stall_in_0),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_mmul10_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_memdep_mmul9_V1),
        .out_data_out(),
        .out_feedback_out_0(i_llvm_fpga_push_token_i1_throttle_push_mmul10_out_feedback_out_0),
        .out_feedback_valid_out_0(i_llvm_fpga_push_token_i1_throttle_push_mmul10_out_feedback_valid_out_0),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_mmul10_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_mmul10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_mmul9(STALLENABLE,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_mmul9_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_mmul9_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_mmul9_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_mmul9_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_mmul9_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_mmul9_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_mmul9_consumed0 = (~ (in_stall_in) & SE_out_i_llvm_fpga_mem_memdep_mmul9_wireValid) | SE_out_i_llvm_fpga_mem_memdep_mmul9_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_mmul9_consumed1 = (~ (i_llvm_fpga_push_token_i1_throttle_push_mmul10_out_stall_out) & SE_out_i_llvm_fpga_mem_memdep_mmul9_wireValid) | SE_out_i_llvm_fpga_mem_memdep_mmul9_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_mmul9_StallValid = SE_out_i_llvm_fpga_mem_memdep_mmul9_backStall & SE_out_i_llvm_fpga_mem_memdep_mmul9_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_mmul9_toReg0 = SE_out_i_llvm_fpga_mem_memdep_mmul9_StallValid & SE_out_i_llvm_fpga_mem_memdep_mmul9_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_mmul9_toReg1 = SE_out_i_llvm_fpga_mem_memdep_mmul9_StallValid & SE_out_i_llvm_fpga_mem_memdep_mmul9_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_mmul9_or0 = SE_out_i_llvm_fpga_mem_memdep_mmul9_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_mmul9_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_mmul9_consumed1 & SE_out_i_llvm_fpga_mem_memdep_mmul9_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_mmul9_backStall = SE_out_i_llvm_fpga_mem_memdep_mmul9_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_mmul9_V0 = SE_out_i_llvm_fpga_mem_memdep_mmul9_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_mmul9_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_mmul9_V1 = SE_out_i_llvm_fpga_mem_memdep_mmul9_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_mmul9_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_mmul9_wireValid = i_llvm_fpga_mem_memdep_mmul9_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3(BITJOIN,81)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_q = i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3(BITSELECT,82)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_mul9_mmul4(BITJOIN,74)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_q = i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_mul9_mmul4(BITSELECT,75)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_q[31:0]);

    // i_add7_mmul5(ADD,12)@1
    assign i_add7_mmul5_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_mul9_mmul4_b};
    assign i_add7_mmul5_b = {1'b0, bubble_select_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_b};
    assign i_add7_mmul5_o = $unsigned(i_add7_mmul5_a) + $unsigned(i_add7_mmul5_b);
    assign i_add7_mmul5_q = i_add7_mmul5_o[32:0];

    // bgTrunc_i_add7_mmul5_sel_x(BITSELECT,55)@1
    assign bgTrunc_i_add7_mmul5_sel_x_b = i_add7_mmul5_q[31:0];

    // i_idxprom8_mmul6_sel_x(BITSELECT,64)@1
    assign i_idxprom8_mmul6_sel_x_b = $unsigned({{32{bgTrunc_i_add7_mmul5_sel_x_b[31]}}, bgTrunc_i_add7_mmul5_sel_x_b[31:0]});

    // i_arrayidx91_mmul0_narrow_x(BITSELECT,60)@1
    assign i_arrayidx91_mmul0_narrow_x_b = i_idxprom8_mmul6_sel_x_b[61:0];

    // i_arrayidx91_mmul0_shift_join_x(BITJOIN,61)@1
    assign i_arrayidx91_mmul0_shift_join_x_q = {i_arrayidx91_mmul0_narrow_x_b, i_arrayidx91_mmul8_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7(BITJOIN,84)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_q = i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7(BITSELECT,85)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_vt_select_63(BITSELECT,27)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_vt_const_9(CONSTANT,25)
    assign i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_vt_join(BITJOIN,26)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_vt_const_9_q};

    // i_arrayidx91_mmul0_add_x(ADD,58)@1
    assign i_arrayidx91_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul7_vt_join_q};
    assign i_arrayidx91_mmul0_add_x_b = {1'b0, i_arrayidx91_mmul0_shift_join_x_q};
    assign i_arrayidx91_mmul0_add_x_o = $unsigned(i_arrayidx91_mmul0_add_x_a) + $unsigned(i_arrayidx91_mmul0_add_x_b);
    assign i_arrayidx91_mmul0_add_x_q = i_arrayidx91_mmul0_add_x_o[64:0];

    // i_arrayidx91_mmul0_dupName_0_trunc_sel_x(BITSELECT,63)@1
    assign i_arrayidx91_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx91_mmul0_add_x_q[63:0];

    // i_arrayidx91_mmul8_vt_select_63(BITSELECT,15)@1
    assign i_arrayidx91_mmul8_vt_select_63_b = i_arrayidx91_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx91_mmul8_vt_const_1(CONSTANT,13)
    assign i_arrayidx91_mmul8_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx91_mmul8_vt_join(BITJOIN,14)@1
    assign i_arrayidx91_mmul8_vt_join_q = {i_arrayidx91_mmul8_vt_select_63_b, i_arrayidx91_mmul8_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_mmul9(BLACKBOX,21)@1
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_mmul_avm_address@20000000
    // out out_memdep_mmul_avm_burstcount@20000000
    // out out_memdep_mmul_avm_byteenable@20000000
    // out out_memdep_mmul_avm_enable@20000000
    // out out_memdep_mmul_avm_read@20000000
    // out out_memdep_mmul_avm_write@20000000
    // out out_memdep_mmul_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_o_writeack@2
    mmul_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_mmul9 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx91_mmul8_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_mmul9_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer5_mmul3_V0),
        .in_i_writedata(i_tmp_0_lcssa_select_mmul2_q),
        .in_memdep_mmul_avm_readdata(in_memdep_mmul_avm_readdata),
        .in_memdep_mmul_avm_readdatavalid(in_memdep_mmul_avm_readdatavalid),
        .in_memdep_mmul_avm_waitrequest(in_memdep_mmul_avm_waitrequest),
        .in_memdep_mmul_avm_writeack(in_memdep_mmul_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_mmul9_out_lsu_memdep_o_active),
        .out_memdep_mmul_avm_address(i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_address),
        .out_memdep_mmul_avm_burstcount(i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_burstcount),
        .out_memdep_mmul_avm_byteenable(i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_byteenable),
        .out_memdep_mmul_avm_enable(i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_enable),
        .out_memdep_mmul_avm_read(i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_read),
        .out_memdep_mmul_avm_write(i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_write),
        .out_memdep_mmul_avm_writedata(i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_mmul9_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_mmul9_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_mmul9_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_memdep_mmul_avm_address = i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_address;
    assign out_memdep_mmul_avm_enable = i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_enable;
    assign out_memdep_mmul_avm_read = i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_read;
    assign out_memdep_mmul_avm_write = i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_write;
    assign out_memdep_mmul_avm_writedata = i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_writedata;
    assign out_memdep_mmul_avm_byteenable = i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_byteenable;
    assign out_memdep_mmul_avm_burstcount = i_llvm_fpga_mem_memdep_mmul9_out_memdep_mmul_avm_burstcount;

    // feedback_out_0_sync(GPOUT,9)
    assign out_feedback_out_0 = i_llvm_fpga_push_token_i1_throttle_push_mmul10_out_feedback_out_0;

    // feedback_valid_out_0_sync(GPOUT,11)
    assign out_feedback_valid_out_0 = i_llvm_fpga_push_token_i1_throttle_push_mmul10_out_feedback_valid_out_0;

    // sync_out(GPOUT,53)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,56)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_mmul9_out_lsu_memdep_o_active;

    // dupName_0_sync_out_x(GPOUT,57)@2
    assign out_valid_out = SE_out_i_llvm_fpga_mem_memdep_mmul9_V0;

endmodule
