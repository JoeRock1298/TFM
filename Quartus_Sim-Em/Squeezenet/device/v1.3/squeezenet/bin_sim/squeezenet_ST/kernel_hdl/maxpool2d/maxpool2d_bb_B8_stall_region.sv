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

// SystemVerilog created from maxpool2d_bb_B8_stall_region
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B8_stall_region (
    input wire [511:0] in_unnamed_maxpool2d13_maxpool2d_avm_readdata,
    input wire [0:0] in_unnamed_maxpool2d13_maxpool2d_avm_writeack,
    input wire [0:0] in_unnamed_maxpool2d13_maxpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_maxpool2d13_maxpool2d_avm_readdatavalid,
    output wire [30:0] out_unnamed_maxpool2d13_maxpool2d_avm_address,
    output wire [0:0] out_unnamed_maxpool2d13_maxpool2d_avm_enable,
    output wire [0:0] out_unnamed_maxpool2d13_maxpool2d_avm_read,
    output wire [0:0] out_unnamed_maxpool2d13_maxpool2d_avm_write,
    output wire [511:0] out_unnamed_maxpool2d13_maxpool2d_avm_writedata,
    output wire [63:0] out_unnamed_maxpool2d13_maxpool2d_avm_byteenable,
    output wire [4:0] out_unnamed_maxpool2d13_maxpool2d_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe103407,
    input wire [31:0] in_c0_exe113419,
    input wire [0:0] in_c0_exe1234212,
    input wire [0:0] in_c0_exe1334314,
    input wire [31:0] in_c0_exe1434416,
    input wire [0:0] in_c0_exe53351,
    input wire [63:0] in_c0_exe93393,
    input wire [31:0] in_c1_exe119,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_maxpool2d13_o_active,
    output wire [0:0] out_c0_exe103407,
    output wire [0:0] out_c0_exe1234212,
    output wire [0:0] out_c0_exe1334314,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [32:0] i_add26_maxpool2d0_a;
    wire [32:0] i_add26_maxpool2d0_b;
    logic [32:0] i_add26_maxpool2d0_o;
    wire [32:0] i_add26_maxpool2d0_q;
    wire [0:0] i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_lsu_unnamed_maxpool2d13_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_writedata;
    wire [31:0] bgTrunc_i_add26_maxpool2d0_sel_x_b;
    wire [64:0] i_arrayidx28_maxpool2d0_add_x_a;
    wire [64:0] i_arrayidx28_maxpool2d0_add_x_b;
    logic [64:0] i_arrayidx28_maxpool2d0_add_x_o;
    wire [64:0] i_arrayidx28_maxpool2d0_add_x_q;
    wire [1:0] i_arrayidx28_maxpool2d0_c_i2_01_x_q;
    wire [61:0] i_arrayidx28_maxpool2d0_narrow_x_b;
    wire [63:0] i_arrayidx28_maxpool2d0_shift_join_x_q;
    wire [63:0] i_arrayidx28_maxpool2d0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom27_maxpool2d1_sel_x_b;
    wire [96:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [2:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    reg [31:0] redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_q;
    reg [96:0] coalesced_delay_0_0_q;
    reg [2:0] coalesced_delay_1_0_q;
    reg [2:0] coalesced_delay_1_1_q;
    reg [2:0] coalesced_delay_1_2_q;
    wire [163:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [63:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_or0;
    wire [0:0] SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_V0;
    wire [0:0] SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_V1;
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


    // SE_coalesced_delay_1_2(STALLENABLE,74)
    // Valid signal propagation
    assign SE_coalesced_delay_1_2_V0 = SE_coalesced_delay_1_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_2_s_tv_0 = SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_backStall & SE_coalesced_delay_1_2_R_v_0;
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

    // SE_coalesced_delay_1_1(STALLENABLE,73)
    // Valid signal propagation
    assign SE_coalesced_delay_1_1_V0 = SE_coalesced_delay_1_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_1_s_tv_0 = SE_coalesced_delay_1_2_backStall & SE_coalesced_delay_1_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_1_backEN = ~ (SE_coalesced_delay_1_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_1_v_s_0 = SE_coalesced_delay_1_1_backEN & SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_V0;
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

    // SE_stall_entry(STALLENABLE,58)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_backStall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0(STALLENABLE,70)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_V0 = SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_0;
    assign SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_V1 = SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_s_tv_0 = SE_coalesced_delay_1_1_backStall & SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_0;
    assign SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_s_tv_1 = i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_o_stall & SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_or0 = SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_s_tv_0;
    assign SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_backEN = ~ (SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_s_tv_1 | SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_v_s_0 = SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_backStall = ~ (SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_0 & SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_1 <= SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_1 & SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_R_v_1 <= SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3(STALLENABLE,57)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_V0 = SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_and0 = i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_wireValid = SE_coalesced_delay_1_2_V0 & SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_and0;

    // bubble_join_stall_entry(BITJOIN,52)
    assign bubble_join_stall_entry_q = {in_c1_exe119, in_c0_exe93393, in_c0_exe53351, in_c0_exe1434416, in_c0_exe1334314, in_c0_exe1234212, in_c0_exe113419, in_c0_exe103407};

    // bubble_select_stall_entry(BITSELECT,53)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:67]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[131:68]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[163:132]);

    // join_for_coalesced_delay_0(BITJOIN,40)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_g, bubble_select_stall_entry_i, bubble_select_stall_entry_h};

    // coalesced_delay_0_0(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,41)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[95:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[96:96]);

    // i_add26_maxpool2d0(ADD,7)@0
    assign i_add26_maxpool2d0_a = {1'b0, bubble_select_stall_entry_f};
    assign i_add26_maxpool2d0_b = {1'b0, bubble_select_stall_entry_c};
    assign i_add26_maxpool2d0_o = $unsigned(i_add26_maxpool2d0_a) + $unsigned(i_add26_maxpool2d0_b);
    assign i_add26_maxpool2d0_q = i_add26_maxpool2d0_o[32:0];

    // bgTrunc_i_add26_maxpool2d0_sel_x(BITSELECT,20)@0
    assign bgTrunc_i_add26_maxpool2d0_sel_x_b = i_add26_maxpool2d0_q[31:0];

    // redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add26_maxpool2d0_sel_x_b);
        end
    end

    // i_idxprom27_maxpool2d1_sel_x(BITSELECT,29)@1
    assign i_idxprom27_maxpool2d1_sel_x_b = $unsigned({{32{redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_q[31]}}, redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_q[31:0]});

    // i_arrayidx28_maxpool2d0_narrow_x(BITSELECT,25)@1
    assign i_arrayidx28_maxpool2d0_narrow_x_b = i_idxprom27_maxpool2d1_sel_x_b[61:0];

    // i_arrayidx28_maxpool2d0_c_i2_01_x(CONSTANT,24)
    assign i_arrayidx28_maxpool2d0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx28_maxpool2d0_shift_join_x(BITJOIN,26)@1
    assign i_arrayidx28_maxpool2d0_shift_join_x_q = {i_arrayidx28_maxpool2d0_narrow_x_b, i_arrayidx28_maxpool2d0_c_i2_01_x_q};

    // i_arrayidx28_maxpool2d0_add_x(ADD,23)@1
    assign i_arrayidx28_maxpool2d0_add_x_a = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_arrayidx28_maxpool2d0_add_x_b = {1'b0, i_arrayidx28_maxpool2d0_shift_join_x_q};
    assign i_arrayidx28_maxpool2d0_add_x_o = $unsigned(i_arrayidx28_maxpool2d0_add_x_a) + $unsigned(i_arrayidx28_maxpool2d0_add_x_b);
    assign i_arrayidx28_maxpool2d0_add_x_q = i_arrayidx28_maxpool2d0_add_x_o[64:0];

    // i_arrayidx28_maxpool2d0_dupName_0_trunc_sel_x(BITSELECT,28)@1
    assign i_arrayidx28_maxpool2d0_dupName_0_trunc_sel_x_b = i_arrayidx28_maxpool2d0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3(BLACKBOX,10)@1
    // in in_i_stall@20000000
    // out out_lsu_unnamed_maxpool2d13_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@3
    // out out_unnamed_maxpool2d13_maxpool2d_avm_address@20000000
    // out out_unnamed_maxpool2d13_maxpool2d_avm_burstcount@20000000
    // out out_unnamed_maxpool2d13_maxpool2d_avm_byteenable@20000000
    // out out_unnamed_maxpool2d13_maxpool2d_avm_enable@20000000
    // out out_unnamed_maxpool2d13_maxpool2d_avm_read@20000000
    // out out_unnamed_maxpool2d13_maxpool2d_avm_write@20000000
    // out out_unnamed_maxpool2d13_maxpool2d_avm_writedata@20000000
    maxpool2d_i_llvm_fpga_mem_unnamed_13_maxpool2d0 thei_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx28_maxpool2d0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_backStall),
        .in_i_valid(SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_V1),
        .in_i_writedata(sel_for_coalesced_delay_0_c),
        .in_unnamed_maxpool2d13_maxpool2d_avm_readdata(in_unnamed_maxpool2d13_maxpool2d_avm_readdata),
        .in_unnamed_maxpool2d13_maxpool2d_avm_readdatavalid(in_unnamed_maxpool2d13_maxpool2d_avm_readdatavalid),
        .in_unnamed_maxpool2d13_maxpool2d_avm_waitrequest(in_unnamed_maxpool2d13_maxpool2d_avm_waitrequest),
        .in_unnamed_maxpool2d13_maxpool2d_avm_writeack(in_unnamed_maxpool2d13_maxpool2d_avm_writeack),
        .out_lsu_unnamed_maxpool2d13_o_active(i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_lsu_unnamed_maxpool2d13_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_o_valid),
        .out_unnamed_maxpool2d13_maxpool2d_avm_address(i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_address),
        .out_unnamed_maxpool2d13_maxpool2d_avm_burstcount(i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_burstcount),
        .out_unnamed_maxpool2d13_maxpool2d_avm_byteenable(i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_byteenable),
        .out_unnamed_maxpool2d13_maxpool2d_avm_enable(i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_enable),
        .out_unnamed_maxpool2d13_maxpool2d_avm_read(i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_read),
        .out_unnamed_maxpool2d13_maxpool2d_avm_write(i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_write),
        .out_unnamed_maxpool2d13_maxpool2d_avm_writedata(i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_address = i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_address;
    assign out_unnamed_maxpool2d13_maxpool2d_avm_enable = i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_enable;
    assign out_unnamed_maxpool2d13_maxpool2d_avm_read = i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_read;
    assign out_unnamed_maxpool2d13_maxpool2d_avm_write = i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_write;
    assign out_unnamed_maxpool2d13_maxpool2d_avm_writedata = i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_writedata;
    assign out_unnamed_maxpool2d13_maxpool2d_avm_byteenable = i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_byteenable;
    assign out_unnamed_maxpool2d13_maxpool2d_avm_burstcount = i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_unnamed_maxpool2d13_maxpool2d_avm_burstcount;

    // sync_out(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,21)
    assign out_lsu_unnamed_maxpool2d13_o_active = i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_out_lsu_unnamed_maxpool2d13_o_active;

    // join_for_coalesced_delay_1(BITJOIN,43)
    assign join_for_coalesced_delay_1_q = {bubble_select_stall_entry_e, bubble_select_stall_entry_d, bubble_select_stall_entry_b};

    // coalesced_delay_1_0(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(3'b000);
        end
        else if (SE_redist0_bgTrunc_i_add26_maxpool2d0_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(join_for_coalesced_delay_1_q);
        end
    end

    // coalesced_delay_1_1(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_1_q <= $unsigned(3'b000);
        end
        else if (SE_coalesced_delay_1_1_backEN == 1'b1)
        begin
            coalesced_delay_1_1_q <= $unsigned(coalesced_delay_1_0_q);
        end
    end

    // coalesced_delay_1_2(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_2_q <= $unsigned(3'b000);
        end
        else if (SE_coalesced_delay_1_2_backEN == 1'b1)
        begin
            coalesced_delay_1_2_q <= $unsigned(coalesced_delay_1_1_q);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,44)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_2_q[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_2_q[1:1]);
    assign sel_for_coalesced_delay_1_d = $unsigned(coalesced_delay_1_2_q[2:2]);

    // dupName_0_sync_out_x(GPOUT,22)@3
    assign out_c0_exe103407 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe1234212 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe1334314 = sel_for_coalesced_delay_1_d;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_unnamed_maxpool2d13_maxpool2d3_V0;

endmodule
