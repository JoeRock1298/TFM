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

// SystemVerilog created from avgpool2d_bb_B1_stall_region
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_bb_B1_stall_region (
    input wire [511:0] in_unnamed_avgpool2d1_avgpool2d_avm_readdata,
    input wire [0:0] in_unnamed_avgpool2d1_avgpool2d_avm_writeack,
    input wire [0:0] in_unnamed_avgpool2d1_avgpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpool2d1_avgpool2d_avm_readdatavalid,
    output wire [30:0] out_unnamed_avgpool2d1_avgpool2d_avm_address,
    output wire [0:0] out_unnamed_avgpool2d1_avgpool2d_avm_enable,
    output wire [0:0] out_unnamed_avgpool2d1_avgpool2d_avm_read,
    output wire [0:0] out_unnamed_avgpool2d1_avgpool2d_avm_write,
    output wire [511:0] out_unnamed_avgpool2d1_avgpool2d_avm_writedata,
    output wire [63:0] out_unnamed_avgpool2d1_avgpool2d_avm_byteenable,
    output wire [4:0] out_unnamed_avgpool2d1_avgpool2d_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe11,
    input wire [31:0] in_c0_exe1164,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_avgpool2d1_o_active,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [1:0] i_arrayidx53_avgpool2d5_vt_const_1_q;
    wire [63:0] i_arrayidx53_avgpool2d5_vt_join_q;
    wire [61:0] i_arrayidx53_avgpool2d5_vt_select_63_b;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_lsu_unnamed_avgpool2d1_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_writedata;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_vt_select_63_b;
    wire [64:0] i_arrayidx53_avgpool2d0_add_x_a;
    wire [64:0] i_arrayidx53_avgpool2d0_add_x_b;
    logic [64:0] i_arrayidx53_avgpool2d0_add_x_o;
    wire [64:0] i_arrayidx53_avgpool2d0_add_x_q;
    wire [61:0] i_arrayidx53_avgpool2d0_narrow_x_b;
    wire [63:0] i_arrayidx53_avgpool2d0_shift_join_x_q;
    wire [63:0] i_arrayidx53_avgpool2d0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom4_avgpool2d1_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_out_c0_exit9_1_tpl;
    wire [0:0] redist0_stall_entry_o4_18_fifo_valid_in;
    wire redist0_stall_entry_o4_18_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o4_18_fifo_stall_in;
    wire redist0_stall_entry_o4_18_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist0_stall_entry_o4_18_fifo_data_in;
    wire [0:0] redist0_stall_entry_o4_18_fifo_valid_out;
    wire redist0_stall_entry_o4_18_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o4_18_fifo_stall_out;
    wire redist0_stall_entry_o4_18_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist0_stall_entry_o4_18_fifo_data_out;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_b;
    wire [63:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_b;
    wire [31:0] bubble_join_redist0_stall_entry_o4_18_fifo_q;
    wire [31:0] bubble_select_redist0_stall_entry_o4_18_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_V0;
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
    wire [0:0] SE_out_redist0_stall_entry_o4_18_fifo_wireValid;
    wire [0:0] SE_out_redist0_stall_entry_o4_18_fifo_and0;
    wire [0:0] SE_out_redist0_stall_entry_o4_18_fifo_and1;
    wire [0:0] SE_out_redist0_stall_entry_o4_18_fifo_backStall;
    wire [0:0] SE_out_redist0_stall_entry_o4_18_fifo_V0;
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


    // bubble_join_stall_entry(BITJOIN,49)
    assign bubble_join_stall_entry_q = {in_c0_exe1164, in_c0_exe11};

    // bubble_select_stall_entry(BITSELECT,50)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);

    // redist0_stall_entry_o4_18_fifo(STALLFIFO,43)
    assign redist0_stall_entry_o4_18_fifo_valid_in = SE_stall_entry_V2;
    assign redist0_stall_entry_o4_18_fifo_stall_in = SE_out_redist0_stall_entry_o4_18_fifo_backStall;
    assign redist0_stall_entry_o4_18_fifo_data_in = bubble_select_stall_entry_b;
    assign redist0_stall_entry_o4_18_fifo_valid_in_bitsignaltemp = redist0_stall_entry_o4_18_fifo_valid_in[0];
    assign redist0_stall_entry_o4_18_fifo_stall_in_bitsignaltemp = redist0_stall_entry_o4_18_fifo_stall_in[0];
    assign redist0_stall_entry_o4_18_fifo_valid_out[0] = redist0_stall_entry_o4_18_fifo_valid_out_bitsignaltemp;
    assign redist0_stall_entry_o4_18_fifo_stall_out[0] = redist0_stall_entry_o4_18_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(19),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist0_stall_entry_o4_18_fifo (
        .valid_in(redist0_stall_entry_o4_18_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_stall_entry_o4_18_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_stall_entry_b),
        .valid_out(redist0_stall_entry_o4_18_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_stall_entry_o4_18_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_stall_entry_o4_18_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0(BLACKBOX,13)@18
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    avgpool2d_i_llvm_fpga_sync_buffer_p1024f0001put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0 (
        .in_buffer_in(in_output_im),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_redist0_stall_entry_o4_18_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_1_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_1(STALLENABLE,89)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_1_V0 = SE_out_bubble_out_stall_entry_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_1_backStall = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_out_stall_out | ~ (SE_out_bubble_out_stall_entry_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_1_wireValid = bubble_out_stall_entry_1_reg_valid_out;

    // bubble_out_stall_entry_1_reg(STALLFIFO,100)
    assign bubble_out_stall_entry_1_reg_valid_in = SE_stall_entry_V0;
    assign bubble_out_stall_entry_1_reg_stall_in = SE_out_bubble_out_stall_entry_1_backStall;
    assign bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_1_reg_valid_in[0];
    assign bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_1_reg_stall_in[0];
    assign bubble_out_stall_entry_1_reg_valid_out[0] = bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_stall_out[0] = bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(19),
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

    // SE_stall_entry(STALLENABLE,67)
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
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (redist0_stall_entry_o4_18_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
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

    // i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x(BLACKBOX,40)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@18
    // out out_c0_exit9_0_tpl@18
    // out out_c0_exit9_1_tpl@18
    avgpool2d_i_sfc_s_c0_in_for_cond_cleanup_s_c0_enter6_avgpool2d3 thei_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x (
        .in_i_stall(SE_out_redist0_stall_entry_o4_18_fifo_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_c0_eni15_0_tpl(GND_q),
        .in_c0_eni15_1_tpl(bubble_select_stall_entry_c),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_out_o_valid),
        .out_c0_exit9_0_tpl(),
        .out_c0_exit9_1_tpl(i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_out_c0_exit9_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x(BITJOIN,54)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_out_c0_exit9_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x(BITSELECT,55)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_q[31:0]);

    // SE_out_redist0_stall_entry_o4_18_fifo(STALLENABLE,77)
    // Valid signal propagation
    assign SE_out_redist0_stall_entry_o4_18_fifo_V0 = SE_out_redist0_stall_entry_o4_18_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_stall_entry_o4_18_fifo_backStall = i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_o_stall | ~ (SE_out_redist0_stall_entry_o4_18_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_stall_entry_o4_18_fifo_and0 = redist0_stall_entry_o4_18_fifo_valid_out;
    assign SE_out_redist0_stall_entry_o4_18_fifo_and1 = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_out_valid_out & SE_out_redist0_stall_entry_o4_18_fifo_and0;
    assign SE_out_redist0_stall_entry_o4_18_fifo_wireValid = i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_out_o_valid & SE_out_redist0_stall_entry_o4_18_fifo_and1;

    // SE_out_i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6(STALLENABLE,62)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_V0 = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_wireValid = i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_redist0_stall_entry_o4_18_fifo(BITJOIN,57)
    assign bubble_join_redist0_stall_entry_o4_18_fifo_q = redist0_stall_entry_o4_18_fifo_data_out;

    // bubble_select_redist0_stall_entry_o4_18_fifo(BITSELECT,58)
    assign bubble_select_redist0_stall_entry_o4_18_fifo_b = $unsigned(bubble_join_redist0_stall_entry_o4_18_fifo_q[31:0]);

    // i_idxprom4_avgpool2d1_sel_x(BITSELECT,39)@18
    assign i_idxprom4_avgpool2d1_sel_x_b = $unsigned({{32{bubble_select_redist0_stall_entry_o4_18_fifo_b[31]}}, bubble_select_redist0_stall_entry_o4_18_fifo_b[31:0]});

    // i_arrayidx53_avgpool2d0_narrow_x(BITSELECT,35)@18
    assign i_arrayidx53_avgpool2d0_narrow_x_b = i_idxprom4_avgpool2d1_sel_x_b[61:0];

    // i_arrayidx53_avgpool2d0_shift_join_x(BITJOIN,36)@18
    assign i_arrayidx53_avgpool2d0_shift_join_x_q = {i_arrayidx53_avgpool2d0_narrow_x_b, i_arrayidx53_avgpool2d5_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0(BITJOIN,46)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_q = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0(BITSELECT,47)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_vt_select_63(BITSELECT,16)@18
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_vt_const_9(CONSTANT,14)
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_vt_join(BITJOIN,15)@18
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_vt_const_9_q};

    // i_arrayidx53_avgpool2d0_add_x(ADD,33)@18
    assign i_arrayidx53_avgpool2d0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_avgpool2d0_vt_join_q};
    assign i_arrayidx53_avgpool2d0_add_x_b = {1'b0, i_arrayidx53_avgpool2d0_shift_join_x_q};
    assign i_arrayidx53_avgpool2d0_add_x_o = $unsigned(i_arrayidx53_avgpool2d0_add_x_a) + $unsigned(i_arrayidx53_avgpool2d0_add_x_b);
    assign i_arrayidx53_avgpool2d0_add_x_q = i_arrayidx53_avgpool2d0_add_x_o[64:0];

    // i_arrayidx53_avgpool2d0_dupName_0_trunc_sel_x(BITSELECT,38)@18
    assign i_arrayidx53_avgpool2d0_dupName_0_trunc_sel_x_b = i_arrayidx53_avgpool2d0_add_x_q[63:0];

    // i_arrayidx53_avgpool2d5_vt_select_63(BITSELECT,9)@18
    assign i_arrayidx53_avgpool2d5_vt_select_63_b = i_arrayidx53_avgpool2d0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx53_avgpool2d5_vt_const_1(CONSTANT,7)
    assign i_arrayidx53_avgpool2d5_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx53_avgpool2d5_vt_join(BITJOIN,8)@18
    assign i_arrayidx53_avgpool2d5_vt_join_q = {i_arrayidx53_avgpool2d5_vt_select_63_b, i_arrayidx53_avgpool2d5_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6(BLACKBOX,12)@18
    // in in_i_stall@20000000
    // out out_lsu_unnamed_avgpool2d1_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@20
    // out out_unnamed_avgpool2d1_avgpool2d_avm_address@20000000
    // out out_unnamed_avgpool2d1_avgpool2d_avm_burstcount@20000000
    // out out_unnamed_avgpool2d1_avgpool2d_avm_byteenable@20000000
    // out out_unnamed_avgpool2d1_avgpool2d_avm_enable@20000000
    // out out_unnamed_avgpool2d1_avgpool2d_avm_read@20000000
    // out out_unnamed_avgpool2d1_avgpool2d_avm_write@20000000
    // out out_unnamed_avgpool2d1_avgpool2d_avm_writedata@20000000
    avgpool2d_i_llvm_fpga_mem_unnamed_1_avgpool2d0 thei_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx53_avgpool2d5_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_backStall),
        .in_i_valid(SE_out_redist0_stall_entry_o4_18_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_cond_cleanup_avgpool2ds_c0_enter6_avgpool2d3_aunroll_x_b),
        .in_unnamed_avgpool2d1_avgpool2d_avm_readdata(in_unnamed_avgpool2d1_avgpool2d_avm_readdata),
        .in_unnamed_avgpool2d1_avgpool2d_avm_readdatavalid(in_unnamed_avgpool2d1_avgpool2d_avm_readdatavalid),
        .in_unnamed_avgpool2d1_avgpool2d_avm_waitrequest(in_unnamed_avgpool2d1_avgpool2d_avm_waitrequest),
        .in_unnamed_avgpool2d1_avgpool2d_avm_writeack(in_unnamed_avgpool2d1_avgpool2d_avm_writeack),
        .out_lsu_unnamed_avgpool2d1_o_active(i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_lsu_unnamed_avgpool2d1_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_o_valid),
        .out_unnamed_avgpool2d1_avgpool2d_avm_address(i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_address),
        .out_unnamed_avgpool2d1_avgpool2d_avm_burstcount(i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount),
        .out_unnamed_avgpool2d1_avgpool2d_avm_byteenable(i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable),
        .out_unnamed_avgpool2d1_avgpool2d_avm_enable(i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_enable),
        .out_unnamed_avgpool2d1_avgpool2d_avm_read(i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_read),
        .out_unnamed_avgpool2d1_avgpool2d_avm_write(i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_write),
        .out_unnamed_avgpool2d1_avgpool2d_avm_writedata(i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_address = i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_address;
    assign out_unnamed_avgpool2d1_avgpool2d_avm_enable = i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_enable;
    assign out_unnamed_avgpool2d1_avgpool2d_avm_read = i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_read;
    assign out_unnamed_avgpool2d1_avgpool2d_avm_write = i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_write;
    assign out_unnamed_avgpool2d1_avgpool2d_avm_writedata = i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_writedata;
    assign out_unnamed_avgpool2d1_avgpool2d_avm_byteenable = i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable;
    assign out_unnamed_avgpool2d1_avgpool2d_avm_burstcount = i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount;

    // sync_out(GPOUT,29)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,31)
    assign out_lsu_unnamed_avgpool2d1_o_active = i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_out_lsu_unnamed_avgpool2d1_o_active;

    // dupName_0_sync_out_x(GPOUT,32)@20
    assign out_valid_out = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d1_avgpool2d6_V0;

endmodule
