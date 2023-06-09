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

// SystemVerilog created from mmul_bb_B0_stall_region
// SystemVerilog created on Tue May  9 13:46:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B0_stall_region (
    input wire [0:0] in_feedback_in_0,
    output wire [0:0] out_feedback_stall_out_0,
    input wire [0:0] in_feedback_valid_in_0,
    input wire [31:0] in_N,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    output wire [32:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_feedback_stall_out_0;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_valid_out;
    wire [0:0] mmul_B0_merge_reg_out_stall_out;
    wire [0:0] mmul_B0_merge_reg_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [32:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [32:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_o_valid;
    wire [0:0] SE_out_mmul_B0_merge_reg_wireValid;
    wire [0:0] SE_out_mmul_B0_merge_reg_wireStall;
    wire [0:0] SE_out_mmul_B0_merge_reg_StallValid;
    wire [0:0] SE_out_mmul_B0_merge_reg_toReg0;
    reg [0:0] SE_out_mmul_B0_merge_reg_fromReg0;
    wire [0:0] SE_out_mmul_B0_merge_reg_consumed0;
    wire [0:0] SE_out_mmul_B0_merge_reg_toReg1;
    reg [0:0] SE_out_mmul_B0_merge_reg_fromReg1;
    wire [0:0] SE_out_mmul_B0_merge_reg_consumed1;
    wire [0:0] SE_out_mmul_B0_merge_reg_or0;
    wire [0:0] SE_out_mmul_B0_merge_reg_backStall;
    wire [0:0] SE_out_mmul_B0_merge_reg_V0;
    wire [0:0] SE_out_mmul_B0_merge_reg_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_V0;
    wire [0:0] SE_out_bubble_out_mmul_B0_merge_reg_1_wireValid;
    wire [0:0] SE_out_bubble_out_mmul_B0_merge_reg_1_backStall;
    wire [0:0] SE_out_bubble_out_mmul_B0_merge_reg_1_V0;
    wire [0:0] bubble_out_mmul_B0_merge_reg_1_reg_valid_in;
    wire bubble_out_mmul_B0_merge_reg_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_mmul_B0_merge_reg_1_reg_stall_in;
    wire bubble_out_mmul_B0_merge_reg_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_mmul_B0_merge_reg_1_reg_valid_out;
    wire bubble_out_mmul_B0_merge_reg_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_mmul_B0_merge_reg_1_reg_stall_out;
    wire bubble_out_mmul_B0_merge_reg_1_reg_stall_out_bitsignaltemp;


    // i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x(BLACKBOX,29)@1
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_c0_exit_0_tpl@10
    mmul_i_sfc_s_c0_in_entry_s_c0_enter_mmul1 thei_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x (
        .in_N(in_N),
        .in_i_stall(SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_backStall),
        .in_i_valid(SE_out_mmul_B0_merge_reg_V0),
        .in_unnamed_mmul0_0_tpl(GND_q),
        .out_intel_reserved_ffwd_0_0(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_o_stall(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,39)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = mmul_B0_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // mmul_B0_merge_reg(BLACKBOX,14)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    mmul_B0_merge_reg themmul_B0_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_mmul_B0_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(mmul_B0_merge_reg_out_stall_out),
        .out_valid_out(mmul_B0_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_mmul_B0_merge_reg(STALLENABLE,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_mmul_B0_merge_reg_fromReg0 <= '0;
            SE_out_mmul_B0_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_mmul_B0_merge_reg_fromReg0 <= SE_out_mmul_B0_merge_reg_toReg0;
            // Successor 1
            SE_out_mmul_B0_merge_reg_fromReg1 <= SE_out_mmul_B0_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_mmul_B0_merge_reg_consumed0 = (~ (i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_o_stall) & SE_out_mmul_B0_merge_reg_wireValid) | SE_out_mmul_B0_merge_reg_fromReg0;
    assign SE_out_mmul_B0_merge_reg_consumed1 = (~ (bubble_out_mmul_B0_merge_reg_1_reg_stall_out) & SE_out_mmul_B0_merge_reg_wireValid) | SE_out_mmul_B0_merge_reg_fromReg1;
    // Consuming
    assign SE_out_mmul_B0_merge_reg_StallValid = SE_out_mmul_B0_merge_reg_backStall & SE_out_mmul_B0_merge_reg_wireValid;
    assign SE_out_mmul_B0_merge_reg_toReg0 = SE_out_mmul_B0_merge_reg_StallValid & SE_out_mmul_B0_merge_reg_consumed0;
    assign SE_out_mmul_B0_merge_reg_toReg1 = SE_out_mmul_B0_merge_reg_StallValid & SE_out_mmul_B0_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_mmul_B0_merge_reg_or0 = SE_out_mmul_B0_merge_reg_consumed0;
    assign SE_out_mmul_B0_merge_reg_wireStall = ~ (SE_out_mmul_B0_merge_reg_consumed1 & SE_out_mmul_B0_merge_reg_or0);
    assign SE_out_mmul_B0_merge_reg_backStall = SE_out_mmul_B0_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_mmul_B0_merge_reg_V0 = SE_out_mmul_B0_merge_reg_wireValid & ~ (SE_out_mmul_B0_merge_reg_fromReg0);
    assign SE_out_mmul_B0_merge_reg_V1 = SE_out_mmul_B0_merge_reg_wireValid & ~ (SE_out_mmul_B0_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_mmul_B0_merge_reg_wireValid = mmul_B0_merge_reg_out_valid_out;

    // bubble_out_mmul_B0_merge_reg_1_reg(STALLFIFO,53)
    assign bubble_out_mmul_B0_merge_reg_1_reg_valid_in = SE_out_mmul_B0_merge_reg_V1;
    assign bubble_out_mmul_B0_merge_reg_1_reg_stall_in = SE_out_bubble_out_mmul_B0_merge_reg_1_backStall;
    assign bubble_out_mmul_B0_merge_reg_1_reg_valid_in_bitsignaltemp = bubble_out_mmul_B0_merge_reg_1_reg_valid_in[0];
    assign bubble_out_mmul_B0_merge_reg_1_reg_stall_in_bitsignaltemp = bubble_out_mmul_B0_merge_reg_1_reg_stall_in[0];
    assign bubble_out_mmul_B0_merge_reg_1_reg_valid_out[0] = bubble_out_mmul_B0_merge_reg_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_mmul_B0_merge_reg_1_reg_stall_out[0] = bubble_out_mmul_B0_merge_reg_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_mmul_B0_merge_reg_1_reg (
        .valid_in(bubble_out_mmul_B0_merge_reg_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_mmul_B0_merge_reg_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_mmul_B0_merge_reg_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_mmul_B0_merge_reg_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_mmul_B0_merge_reg_1(STALLENABLE,46)
    // Valid signal propagation
    assign SE_out_bubble_out_mmul_B0_merge_reg_1_V0 = SE_out_bubble_out_mmul_B0_merge_reg_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_mmul_B0_merge_reg_1_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_stall_out | ~ (SE_out_bubble_out_mmul_B0_merge_reg_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_mmul_B0_merge_reg_1_wireValid = bubble_out_mmul_B0_merge_reg_1_reg_valid_out;

    // SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x(STALLENABLE,42)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_and0 = i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_valid_out & SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0(BLACKBOX,10)@9
    // in in_stall_in@20000000
    // out out_data_out@10
    // out out_feedback_stall_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@10
    mmul_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_0(in_feedback_in_0),
        .in_feedback_valid_in_0(in_feedback_valid_in_0),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_backStall),
        .in_valid_in(SE_out_bubble_out_mmul_B0_merge_reg_1_V0),
        .out_data_out(),
        .out_feedback_stall_out_0(i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_feedback_stall_out_0),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_0_sync(GPOUT,8)
    assign out_feedback_stall_out_0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_feedback_stall_out_0;

    // regfree_osync(GPOUT,19)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,23)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,26)@10
    assign out_valid_out = SE_out_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_intel_reserved_ffwd_3_0;

endmodule
