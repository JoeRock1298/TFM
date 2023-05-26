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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_cond110000_enter276_conv2d1x10
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_cond110000_enter276_conv2d1x10 (
    input wire [1023:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write,
    output wire [1023:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata,
    output wire [127:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_c0_exi24_0_tpl,
    output wire [31:0] out_c0_exi24_1_tpl,
    output wire [31:0] out_c0_exi24_2_tpl,
    output wire [31:0] out_c0_exi24_3_tpl,
    output wire [31:0] out_c0_exi24_4_tpl,
    output wire [31:0] out_c0_exi24_5_tpl,
    output wire [31:0] out_c0_exi24_6_tpl,
    output wire [31:0] out_c0_exi24_7_tpl,
    output wire [31:0] out_c0_exi24_8_tpl,
    output wire [31:0] out_c0_exi24_9_tpl,
    output wire [31:0] out_c0_exi24_10_tpl,
    output wire [31:0] out_c0_exi24_11_tpl,
    output wire [31:0] out_c0_exi24_12_tpl,
    output wire [31:0] out_c0_exi24_13_tpl,
    output wire [31:0] out_c0_exi24_14_tpl,
    output wire [31:0] out_c0_exi24_15_tpl,
    output wire [31:0] out_c0_exi24_16_tpl,
    output wire [31:0] out_c0_exi24_17_tpl,
    output wire [31:0] out_c0_exi24_18_tpl,
    output wire [31:0] out_c0_exi24_19_tpl,
    output wire [31:0] out_c0_exi24_20_tpl,
    output wire [31:0] out_c0_exi24_21_tpl,
    output wire [31:0] out_c0_exi24_22_tpl,
    output wire [31:0] out_c0_exi24_23_tpl,
    output wire [31:0] out_c0_exi24_24_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x16,
    input wire [0:0] in_c0_eni1275_0_tpl,
    input wire [63:0] in_c0_eni1275_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_462970041693686988830_q;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_0_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_1_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_2_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_3_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_4_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_5_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_6_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_7_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_8_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_9_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_10_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_11_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_12_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_13_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_14_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_15_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_16_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_17_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_18_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_19_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_20_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_21_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_22_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_23_tpl;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    reg [63:0] redist0_sync_together34_aunroll_x_in_c0_eni1275_1_tpl_1_q;
    reg [0:0] redist1_sync_together34_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist1_sync_together34_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist1_sync_together34_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist1_sync_together34_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist1_sync_together34_aunroll_x_in_i_valid_5_delay_3;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,12)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i64_462970041693686988830(CONSTANT,3)
    assign c_i64_462970041693686988830_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // redist0_sync_together34_aunroll_x_in_c0_eni1275_1_tpl_1(DELAY,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together34_aunroll_x_in_c0_eni1275_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together34_aunroll_x_in_c0_eni1275_1_tpl_1_q <= $unsigned(in_c0_eni1275_1_tpl);
        end
    end

    // i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x(BLACKBOX,10)@1
    // in in_i_stall@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_o_readdata_0_0_tpl@6
    // out out_o_readdata_0_1_tpl@6
    // out out_o_readdata_0_2_tpl@6
    // out out_o_readdata_0_3_tpl@6
    // out out_o_readdata_0_4_tpl@6
    // out out_o_readdata_0_5_tpl@6
    // out out_o_readdata_0_6_tpl@6
    // out out_o_readdata_0_7_tpl@6
    // out out_o_readdata_0_8_tpl@6
    // out out_o_readdata_0_9_tpl@6
    // out out_o_readdata_0_10_tpl@6
    // out out_o_readdata_0_11_tpl@6
    // out out_o_readdata_0_12_tpl@6
    // out out_o_readdata_0_13_tpl@6
    // out out_o_readdata_0_14_tpl@6
    // out out_o_readdata_0_15_tpl@6
    // out out_o_readdata_0_16_tpl@6
    // out out_o_readdata_0_17_tpl@6
    // out out_o_readdata_0_18_tpl@6
    // out out_o_readdata_0_19_tpl@6
    // out out_o_readdata_0_20_tpl@6
    // out out_o_readdata_0_21_tpl@6
    // out out_o_readdata_0_22_tpl@6
    // out out_o_readdata_0_23_tpl@6
    // out out_o_readdata_24_tpl@6
    // out out_o_readdata_25_tpl@6
    // out out_o_readdata_26_tpl@6
    // out out_o_readdata_27_tpl@6
    conv2d1x1_i_llvm_fpga_mem_memcoalesce_lo0000nique_254_conv2d1x10 thei_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x (
        .in_AddrOffset(redist0_sync_together34_aunroll_x_in_c0_eni1275_1_tpl_1_q),
        .in_flush(in_flush),
        .in_i_address(c_i64_462970041693686988830_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_readdata_0_0_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_0_tpl),
        .out_o_readdata_0_1_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_1_tpl),
        .out_o_readdata_0_2_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_2_tpl),
        .out_o_readdata_0_3_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_3_tpl),
        .out_o_readdata_0_4_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_4_tpl),
        .out_o_readdata_0_5_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_5_tpl),
        .out_o_readdata_0_6_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_6_tpl),
        .out_o_readdata_0_7_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_7_tpl),
        .out_o_readdata_0_8_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_8_tpl),
        .out_o_readdata_0_9_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_9_tpl),
        .out_o_readdata_0_10_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_10_tpl),
        .out_o_readdata_0_11_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_11_tpl),
        .out_o_readdata_0_12_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_12_tpl),
        .out_o_readdata_0_13_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_13_tpl),
        .out_o_readdata_0_14_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_14_tpl),
        .out_o_readdata_0_15_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_15_tpl),
        .out_o_readdata_0_16_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_16_tpl),
        .out_o_readdata_0_17_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_17_tpl),
        .out_o_readdata_0_18_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_18_tpl),
        .out_o_readdata_0_19_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_19_tpl),
        .out_o_readdata_0_20_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_20_tpl),
        .out_o_readdata_0_21_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_21_tpl),
        .out_o_readdata_0_22_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_22_tpl),
        .out_o_readdata_0_23_tpl(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_23_tpl),
        .out_o_readdata_24_tpl(),
        .out_o_readdata_25_tpl(),
        .out_o_readdata_26_tpl(),
        .out_o_readdata_27_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount;

    // redist1_sync_together34_aunroll_x_in_i_valid_5(DELAY,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together34_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist1_sync_together34_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist1_sync_together34_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist1_sync_together34_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist1_sync_together34_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist1_sync_together34_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together34_aunroll_x_in_i_valid_5_delay_1 <= redist1_sync_together34_aunroll_x_in_i_valid_5_delay_0;
            redist1_sync_together34_aunroll_x_in_i_valid_5_delay_2 <= redist1_sync_together34_aunroll_x_in_i_valid_5_delay_1;
            redist1_sync_together34_aunroll_x_in_i_valid_5_delay_3 <= redist1_sync_together34_aunroll_x_in_i_valid_5_delay_2;
            redist1_sync_together34_aunroll_x_in_i_valid_5_q <= redist1_sync_together34_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // valid_fanout_reg0(REG,11)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together34_aunroll_x_in_i_valid_5_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,8)@6
    assign out_c0_exi24_0_tpl = GND_q;
    assign out_c0_exi24_1_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_0_tpl;
    assign out_c0_exi24_2_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_1_tpl;
    assign out_c0_exi24_3_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_2_tpl;
    assign out_c0_exi24_4_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_3_tpl;
    assign out_c0_exi24_5_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_4_tpl;
    assign out_c0_exi24_6_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_5_tpl;
    assign out_c0_exi24_7_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_6_tpl;
    assign out_c0_exi24_8_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_7_tpl;
    assign out_c0_exi24_9_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_8_tpl;
    assign out_c0_exi24_10_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_9_tpl;
    assign out_c0_exi24_11_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_10_tpl;
    assign out_c0_exi24_12_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_11_tpl;
    assign out_c0_exi24_13_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_12_tpl;
    assign out_c0_exi24_14_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_13_tpl;
    assign out_c0_exi24_15_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_14_tpl;
    assign out_c0_exi24_16_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_15_tpl;
    assign out_c0_exi24_17_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_16_tpl;
    assign out_c0_exi24_18_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_17_tpl;
    assign out_c0_exi24_19_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_18_tpl;
    assign out_c0_exi24_20_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_19_tpl;
    assign out_c0_exi24_21_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_20_tpl;
    assign out_c0_exi24_22_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_21_tpl;
    assign out_c0_exi24_23_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_22_tpl;
    assign out_c0_exi24_24_tpl = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x12_aunroll_vunroll_x_out_o_readdata_0_23_tpl;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x16 = GND_q;

endmodule
