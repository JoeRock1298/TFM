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

// SystemVerilog created from hello_world_bb_B0_stall_region
// SystemVerilog created on Fri May  5 20:45:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module hello_world_bb_B0_stall_region (
    input wire [511:0] in_unnamed_hello_world0_hello_world_avm_readdata,
    input wire [0:0] in_unnamed_hello_world0_hello_world_avm_writeack,
    input wire [0:0] in_unnamed_hello_world0_hello_world_avm_waitrequest,
    input wire [0:0] in_unnamed_hello_world0_hello_world_avm_readdatavalid,
    output wire [30:0] out_unnamed_hello_world0_hello_world_avm_address,
    output wire [0:0] out_unnamed_hello_world0_hello_world_avm_enable,
    output wire [0:0] out_unnamed_hello_world0_hello_world_avm_read,
    output wire [0:0] out_unnamed_hello_world0_hello_world_avm_write,
    output wire [511:0] out_unnamed_hello_world0_hello_world_avm_writedata,
    output wire [63:0] out_unnamed_hello_world0_hello_world_avm_byteenable,
    output wire [4:0] out_unnamed_hello_world0_hello_world_avm_burstcount,
    input wire [63:0] in_id,
    input wire [31:0] in_thread_id_from_which_to_print_message,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_acl_global_id_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_hello_world0_o_active,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_cmp_hello_world2_q;
    wire [0:0] i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_lsu_unnamed_hello_world0_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_writedata;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_vt_select_63_b;
    wire [0:0] hello_world_B0_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] hello_world_B0_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] hello_world_B0_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_conv_hello_world0_sel_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_b;
    wire [63:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_join_hello_world_B0_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_hello_world_B0_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_and1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_and2;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_hello_world_B0_merge_reg_aunroll_x_V3;


    // i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5(BLACKBOX,12)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    hello_world_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5 (
        .in_buffer_in(in_id),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_backStall),
        .in_valid_in(SE_out_hello_world_B0_merge_reg_aunroll_x_V2),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1(BLACKBOX,10)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    hello_world_i_llvm_fpga_sync_buffer_i32_0000ssage_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1 (
        .in_buffer_in(in_thread_id_from_which_to_print_message),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_backStall),
        .in_valid_in(SE_out_hello_world_B0_merge_reg_aunroll_x_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,52)
    assign bubble_join_stall_entry_q = in_acl_global_id_0;

    // bubble_select_stall_entry(BITSELECT,53)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);

    // SE_stall_entry(STALLENABLE,72)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = hello_world_B0_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // hello_world_B0_merge_reg_aunroll_x(BLACKBOX,38)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    hello_world_B0_merge_reg thehello_world_B0_merge_reg_aunroll_x (
        .in_stall_in(SE_out_hello_world_B0_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(hello_world_B0_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(hello_world_B0_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(hello_world_B0_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_hello_world_B0_merge_reg_aunroll_x(STALLENABLE,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg0 <= SE_out_hello_world_B0_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg1 <= SE_out_hello_world_B0_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg2 <= SE_out_hello_world_B0_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg3 <= SE_out_hello_world_B0_merge_reg_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_out_stall_out) & SE_out_hello_world_B0_merge_reg_aunroll_x_wireValid) | SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg0;
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_out_stall_out) & SE_out_hello_world_B0_merge_reg_aunroll_x_wireValid) | SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg1;
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_out_stall_out) & SE_out_hello_world_B0_merge_reg_aunroll_x_wireValid) | SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg2;
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_consumed3 = (~ (SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_backStall) & SE_out_hello_world_B0_merge_reg_aunroll_x_wireValid) | SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_StallValid = SE_out_hello_world_B0_merge_reg_aunroll_x_backStall & SE_out_hello_world_B0_merge_reg_aunroll_x_wireValid;
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_toReg0 = SE_out_hello_world_B0_merge_reg_aunroll_x_StallValid & SE_out_hello_world_B0_merge_reg_aunroll_x_consumed0;
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_toReg1 = SE_out_hello_world_B0_merge_reg_aunroll_x_StallValid & SE_out_hello_world_B0_merge_reg_aunroll_x_consumed1;
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_toReg2 = SE_out_hello_world_B0_merge_reg_aunroll_x_StallValid & SE_out_hello_world_B0_merge_reg_aunroll_x_consumed2;
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_toReg3 = SE_out_hello_world_B0_merge_reg_aunroll_x_StallValid & SE_out_hello_world_B0_merge_reg_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_or0 = SE_out_hello_world_B0_merge_reg_aunroll_x_consumed0;
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_or1 = SE_out_hello_world_B0_merge_reg_aunroll_x_consumed1 & SE_out_hello_world_B0_merge_reg_aunroll_x_or0;
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_or2 = SE_out_hello_world_B0_merge_reg_aunroll_x_consumed2 & SE_out_hello_world_B0_merge_reg_aunroll_x_or1;
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_wireStall = ~ (SE_out_hello_world_B0_merge_reg_aunroll_x_consumed3 & SE_out_hello_world_B0_merge_reg_aunroll_x_or2);
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_backStall = SE_out_hello_world_B0_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_V0 = SE_out_hello_world_B0_merge_reg_aunroll_x_wireValid & ~ (SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg0);
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_V1 = SE_out_hello_world_B0_merge_reg_aunroll_x_wireValid & ~ (SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg1);
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_V2 = SE_out_hello_world_B0_merge_reg_aunroll_x_wireValid & ~ (SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg2);
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_V3 = SE_out_hello_world_B0_merge_reg_aunroll_x_wireValid & ~ (SE_out_hello_world_B0_merge_reg_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_hello_world_B0_merge_reg_aunroll_x_wireValid = hello_world_B0_merge_reg_aunroll_x_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    hello_world_i_llvm_fpga_sync_buffer_i32_0000essage_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4 (
        .in_buffer_in(in_thread_id_from_which_to_print_message),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_backStall),
        .in_valid_in(SE_out_hello_world_B0_merge_reg_aunroll_x_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4(BITJOIN,46)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_q = i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4(BITSELECT,47)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_q[31:0]);

    // SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5(STALLENABLE,69)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_backStall = i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_and0 = i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_and1 = i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_and0;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_and2 = i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_and1;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_wireValid = SE_out_hello_world_B0_merge_reg_aunroll_x_V3 & SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_and2;

    // SE_out_i_llvm_fpga_mem_unnamed_hello_world0_hello_world6(STALLENABLE,63)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_V0 = SE_out_i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_wireValid = i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_o_valid;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1(BITJOIN,43)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_q = i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1(BITSELECT,44)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_q[31:0]);

    // bubble_join_hello_world_B0_merge_reg_aunroll_x(BITJOIN,56)
    assign bubble_join_hello_world_B0_merge_reg_aunroll_x_q = hello_world_B0_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_hello_world_B0_merge_reg_aunroll_x(BITSELECT,57)
    assign bubble_select_hello_world_B0_merge_reg_aunroll_x_b = $unsigned(bubble_join_hello_world_B0_merge_reg_aunroll_x_q[63:0]);

    // i_conv_hello_world0_sel_x(BITSELECT,39)@1
    assign i_conv_hello_world0_sel_x_b = bubble_select_hello_world_B0_merge_reg_aunroll_x_b[31:0];

    // i_cmp_hello_world2(LOGICAL,7)@1
    assign i_cmp_hello_world2_q = $unsigned(i_conv_hello_world0_sel_x_b != bubble_select_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer1_hello_world1_b ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5(BITJOIN,49)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_q = i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5(BITSELECT,50)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_vt_select_63(BITSELECT,15)@1
    assign i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_vt_const_9(CONSTANT,13)
    assign i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_vt_join(BITJOIN,14)@1
    assign i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_vt_join_q = {i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_vt_const_9_q};

    // i_llvm_fpga_mem_unnamed_hello_world0_hello_world6(BLACKBOX,9)@1
    // in in_i_stall@20000000
    // out out_lsu_unnamed_hello_world0_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@3
    // out out_unnamed_hello_world0_hello_world_avm_address@20000000
    // out out_unnamed_hello_world0_hello_world_avm_burstcount@20000000
    // out out_unnamed_hello_world0_hello_world_avm_byteenable@20000000
    // out out_unnamed_hello_world0_hello_world_avm_enable@20000000
    // out out_unnamed_hello_world0_hello_world_avm_read@20000000
    // out out_unnamed_hello_world0_hello_world_avm_write@20000000
    // out out_unnamed_hello_world0_hello_world_avm_writedata@20000000
    hello_world_i_llvm_fpga_mem_unnamed_0_hello_world0 thei_llvm_fpga_mem_unnamed_hello_world0_hello_world6 (
        .in_flush(in_flush),
        .in_i_address(i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_vt_join_q),
        .in_i_predicate(i_cmp_hello_world2_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024i32_id_sync_buffer_hello_world5_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_sync_buffer_i32_thread_id_from_which_to_print_message_sync_buffer_hello_world4_b),
        .in_unnamed_hello_world0_hello_world_avm_readdata(in_unnamed_hello_world0_hello_world_avm_readdata),
        .in_unnamed_hello_world0_hello_world_avm_readdatavalid(in_unnamed_hello_world0_hello_world_avm_readdatavalid),
        .in_unnamed_hello_world0_hello_world_avm_waitrequest(in_unnamed_hello_world0_hello_world_avm_waitrequest),
        .in_unnamed_hello_world0_hello_world_avm_writeack(in_unnamed_hello_world0_hello_world_avm_writeack),
        .out_lsu_unnamed_hello_world0_o_active(i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_lsu_unnamed_hello_world0_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_o_valid),
        .out_unnamed_hello_world0_hello_world_avm_address(i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_address),
        .out_unnamed_hello_world0_hello_world_avm_burstcount(i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_burstcount),
        .out_unnamed_hello_world0_hello_world_avm_byteenable(i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_byteenable),
        .out_unnamed_hello_world0_hello_world_avm_enable(i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_enable),
        .out_unnamed_hello_world0_hello_world_avm_read(i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_read),
        .out_unnamed_hello_world0_hello_world_avm_write(i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_write),
        .out_unnamed_hello_world0_hello_world_avm_writedata(i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_hello_world0_hello_world_avm_address = i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_address;
    assign out_unnamed_hello_world0_hello_world_avm_enable = i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_enable;
    assign out_unnamed_hello_world0_hello_world_avm_read = i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_read;
    assign out_unnamed_hello_world0_hello_world_avm_write = i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_write;
    assign out_unnamed_hello_world0_hello_world_avm_writedata = i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_writedata;
    assign out_unnamed_hello_world0_hello_world_avm_byteenable = i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_byteenable;
    assign out_unnamed_hello_world0_hello_world_avm_burstcount = i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_unnamed_hello_world0_hello_world_avm_burstcount;

    // sync_out(GPOUT,34)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,36)
    assign out_lsu_unnamed_hello_world0_o_active = i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_out_lsu_unnamed_hello_world0_o_active;

    // dupName_0_sync_out_x(GPOUT,37)@3
    assign out_valid_out = SE_out_i_llvm_fpga_mem_unnamed_hello_world0_hello_world6_V0;

endmodule
