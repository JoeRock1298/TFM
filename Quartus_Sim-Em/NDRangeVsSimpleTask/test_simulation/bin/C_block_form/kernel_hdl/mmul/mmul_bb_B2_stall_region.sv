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

// SystemVerilog created from mmul_bb_B2_stall_region
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B2_stall_region (
    input wire [511:0] in_unnamed_mmul7_mmul_avm_readdata,
    input wire [0:0] in_unnamed_mmul7_mmul_avm_writeack,
    input wire [0:0] in_unnamed_mmul7_mmul_avm_waitrequest,
    input wire [0:0] in_unnamed_mmul7_mmul_avm_readdatavalid,
    output wire [30:0] out_unnamed_mmul7_mmul_avm_address,
    output wire [0:0] out_unnamed_mmul7_mmul_avm_enable,
    output wire [0:0] out_unnamed_mmul7_mmul_avm_read,
    output wire [0:0] out_unnamed_mmul7_mmul_avm_write,
    output wire [511:0] out_unnamed_mmul7_mmul_avm_writedata,
    output wire [63:0] out_unnamed_mmul7_mmul_avm_byteenable,
    output wire [4:0] out_unnamed_mmul7_mmul_avm_burstcount,
    input wire [31:0] in_N,
    input wire [0:0] in_flush,
    input wire [63:0] in_C,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_acl_global_id_076,
    input wire [63:0] in_acl_global_id_178,
    input wire [31:0] in_c0_exe214175,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_mmul7_o_active,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_lsu_unnamed_mmul7_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_out_c0_exit148_1_tpl;
    wire [0:0] redist0_stall_entry_o6_8_fifo_valid_in;
    wire redist0_stall_entry_o6_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o6_8_fifo_stall_in;
    wire redist0_stall_entry_o6_8_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist0_stall_entry_o6_8_fifo_data_in;
    wire [0:0] redist0_stall_entry_o6_8_fifo_valid_out;
    wire redist0_stall_entry_o6_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o6_8_fifo_stall_out;
    wire redist0_stall_entry_o6_8_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist0_stall_entry_o6_8_fifo_data_out;
    wire [159:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_join_i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_b;
    wire [31:0] bubble_join_redist0_stall_entry_o6_8_fifo_q;
    wire [31:0] bubble_select_redist0_stall_entry_o6_8_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_mmul7_mmul4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_mmul7_mmul4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_mmul7_mmul4_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_out_redist0_stall_entry_o6_8_fifo_wireValid;
    wire [0:0] SE_out_redist0_stall_entry_o6_8_fifo_and0;
    wire [0:0] SE_out_redist0_stall_entry_o6_8_fifo_backStall;
    wire [0:0] SE_out_redist0_stall_entry_o6_8_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,27)
    assign bubble_join_stall_entry_q = {in_c0_exe214175, in_acl_global_id_178, in_acl_global_id_076};

    // bubble_select_stall_entry(BITSELECT,28)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[159:128]);

    // i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x(BLACKBOX,22)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_c0_exit148_0_tpl@8
    // out out_c0_exit148_1_tpl@8
    mmul_i_sfc_s_c0_in_for_end47_s_c0_enter144_mmul2 thei_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x (
        .in_C(in_C),
        .in_N(in_N),
        .in_i_stall(SE_out_redist0_stall_entry_o6_8_fifo_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_c0_eni2143_0_tpl(GND_q),
        .in_c0_eni2143_1_tpl(bubble_select_stall_entry_c),
        .in_c0_eni2143_2_tpl(bubble_select_stall_entry_b),
        .out_o_stall(i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_out_o_valid),
        .out_c0_exit148_0_tpl(),
        .out_c0_exit148_1_tpl(i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_out_c0_exit148_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (redist0_stall_entry_o6_8_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // redist0_stall_entry_o6_8_fifo(STALLFIFO,24)
    assign redist0_stall_entry_o6_8_fifo_valid_in = SE_stall_entry_V0;
    assign redist0_stall_entry_o6_8_fifo_stall_in = SE_out_redist0_stall_entry_o6_8_fifo_backStall;
    assign redist0_stall_entry_o6_8_fifo_data_in = bubble_select_stall_entry_d;
    assign redist0_stall_entry_o6_8_fifo_valid_in_bitsignaltemp = redist0_stall_entry_o6_8_fifo_valid_in[0];
    assign redist0_stall_entry_o6_8_fifo_stall_in_bitsignaltemp = redist0_stall_entry_o6_8_fifo_stall_in[0];
    assign redist0_stall_entry_o6_8_fifo_valid_out[0] = redist0_stall_entry_o6_8_fifo_valid_out_bitsignaltemp;
    assign redist0_stall_entry_o6_8_fifo_stall_out[0] = redist0_stall_entry_o6_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist0_stall_entry_o6_8_fifo (
        .valid_in(redist0_stall_entry_o6_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_stall_entry_o6_8_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_stall_entry_d),
        .valid_out(redist0_stall_entry_o6_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_stall_entry_o6_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_stall_entry_o6_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist0_stall_entry_o6_8_fifo(BITJOIN,34)
    assign bubble_join_redist0_stall_entry_o6_8_fifo_q = redist0_stall_entry_o6_8_fifo_data_out;

    // bubble_select_redist0_stall_entry_o6_8_fifo(BITSELECT,35)
    assign bubble_select_redist0_stall_entry_o6_8_fifo_b = $unsigned(bubble_join_redist0_stall_entry_o6_8_fifo_q[31:0]);

    // SE_out_redist0_stall_entry_o6_8_fifo(STALLENABLE,43)
    // Valid signal propagation
    assign SE_out_redist0_stall_entry_o6_8_fifo_V0 = SE_out_redist0_stall_entry_o6_8_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_stall_entry_o6_8_fifo_backStall = i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_o_stall | ~ (SE_out_redist0_stall_entry_o6_8_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_stall_entry_o6_8_fifo_and0 = redist0_stall_entry_o6_8_fifo_valid_out;
    assign SE_out_redist0_stall_entry_o6_8_fifo_wireValid = i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_out_o_valid & SE_out_redist0_stall_entry_o6_8_fifo_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_mmul7_mmul4(STALLENABLE,37)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_mmul7_mmul4_V0 = SE_out_i_llvm_fpga_mem_unnamed_mmul7_mmul4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_mmul7_mmul4_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_unnamed_mmul7_mmul4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_mmul7_mmul4_wireValid = i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x(BITJOIN,31)
    assign bubble_join_i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_q = i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_out_c0_exit148_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x(BITSELECT,32)
    assign bubble_select_i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_q[63:0]);

    // i_llvm_fpga_mem_unnamed_mmul7_mmul4(BLACKBOX,7)@8
    // in in_i_stall@20000000
    // out out_lsu_unnamed_mmul7_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_unnamed_mmul7_mmul_avm_address@20000000
    // out out_unnamed_mmul7_mmul_avm_burstcount@20000000
    // out out_unnamed_mmul7_mmul_avm_byteenable@20000000
    // out out_unnamed_mmul7_mmul_avm_enable@20000000
    // out out_unnamed_mmul7_mmul_avm_read@20000000
    // out out_unnamed_mmul7_mmul_avm_write@20000000
    // out out_unnamed_mmul7_mmul_avm_writedata@20000000
    mmul_i_llvm_fpga_mem_unnamed_7_mmul0 thei_llvm_fpga_mem_unnamed_mmul7_mmul4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_end47_mmuls_c0_enter144_mmul2_aunroll_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_mmul7_mmul4_backStall),
        .in_i_valid(SE_out_redist0_stall_entry_o6_8_fifo_V0),
        .in_i_writedata(bubble_select_redist0_stall_entry_o6_8_fifo_b),
        .in_unnamed_mmul7_mmul_avm_readdata(in_unnamed_mmul7_mmul_avm_readdata),
        .in_unnamed_mmul7_mmul_avm_readdatavalid(in_unnamed_mmul7_mmul_avm_readdatavalid),
        .in_unnamed_mmul7_mmul_avm_waitrequest(in_unnamed_mmul7_mmul_avm_waitrequest),
        .in_unnamed_mmul7_mmul_avm_writeack(in_unnamed_mmul7_mmul_avm_writeack),
        .out_lsu_unnamed_mmul7_o_active(i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_lsu_unnamed_mmul7_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_o_valid),
        .out_unnamed_mmul7_mmul_avm_address(i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_address),
        .out_unnamed_mmul7_mmul_avm_burstcount(i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_burstcount),
        .out_unnamed_mmul7_mmul_avm_byteenable(i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_byteenable),
        .out_unnamed_mmul7_mmul_avm_enable(i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_enable),
        .out_unnamed_mmul7_mmul_avm_read(i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_read),
        .out_unnamed_mmul7_mmul_avm_write(i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_write),
        .out_unnamed_mmul7_mmul_avm_writedata(i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_mmul7_mmul_avm_address = i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_address;
    assign out_unnamed_mmul7_mmul_avm_enable = i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_enable;
    assign out_unnamed_mmul7_mmul_avm_read = i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_read;
    assign out_unnamed_mmul7_mmul_avm_write = i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_write;
    assign out_unnamed_mmul7_mmul_avm_writedata = i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_writedata;
    assign out_unnamed_mmul7_mmul_avm_byteenable = i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_byteenable;
    assign out_unnamed_mmul7_mmul_avm_burstcount = i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_unnamed_mmul7_mmul_avm_burstcount;

    // sync_out(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,20)
    assign out_lsu_unnamed_mmul7_o_active = i_llvm_fpga_mem_unnamed_mmul7_mmul4_out_lsu_unnamed_mmul7_o_active;

    // dupName_0_sync_out_x(GPOUT,21)@10
    assign out_valid_out = SE_out_i_llvm_fpga_mem_unnamed_mmul7_mmul4_V0;

endmodule
