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

// SystemVerilog created from conv2d3x3_bb_B10_stall_region
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B10_stall_region (
    input wire [31:0] in_input_channels,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe1085,
    input wire [63:0] in_c0_exe115,
    input wire [31:0] in_c0_exe1186153,
    input wire [0:0] in_c0_exe1194,
    input wire [31:0] in_c0_exe12105,
    input wire [31:0] in_c0_exe1254179,
    input wire [0:0] in_c0_exe13115,
    input wire [0:0] in_c0_exe14124,
    input wire [0:0] in_c0_exe15125,
    input wire [0:0] in_c0_exe16135,
    input wire [63:0] in_c0_exe317,
    input wire [0:0] in_c0_exe426,
    input wire [31:0] in_c0_exe537,
    input wire [31:0] in_c0_exe644,
    input wire [0:0] in_c0_exe756,
    input wire [0:0] in_c0_exe865,
    input wire [31:0] in_c0_exe975,
    input wire [31:0] in_j_062144,
    input wire [31:0] in_k_059158,
    input wire [31:0] in_unnamed_conv2d3x315,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1085,
    output wire [63:0] out_c0_exe115,
    output wire [31:0] out_c0_exe1186153,
    output wire [0:0] out_c0_exe1194,
    output wire [31:0] out_c0_exe12105,
    output wire [31:0] out_c0_exe1254179,
    output wire [0:0] out_c0_exe13115,
    output wire [0:0] out_c0_exe14124,
    output wire [0:0] out_c0_exe15125,
    output wire [0:0] out_c0_exe16135,
    output wire [63:0] out_c0_exe317,
    output wire [0:0] out_c0_exe426,
    output wire [31:0] out_c0_exe537,
    output wire [31:0] out_c0_exe644,
    output wire [0:0] out_c0_exe756,
    output wire [0:0] out_c0_exe865,
    output wire [31:0] out_c0_exe975,
    output wire [31:0] out_inc57,
    output wire [31:0] out_j_062144,
    output wire [31:0] out_unnamed_conv2d3x315,
    output wire [0:0] out_unnamed_conv2d3x316,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_15_q;
    wire [33:0] i_cmp10_conv2d3x32_a;
    wire [33:0] i_cmp10_conv2d3x32_b;
    logic [33:0] i_cmp10_conv2d3x32_o;
    wire [0:0] i_cmp10_conv2d3x32_c;
    wire [32:0] i_inc57_conv2d3x30_a;
    wire [32:0] i_inc57_conv2d3x30_b;
    logic [32:0] i_inc57_conv2d3x30_o;
    wire [32:0] i_inc57_conv2d3x30_q;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_out_valid_out;
    wire [0:0] i_unnamed_conv2d3x34_q;
    wire [31:0] bgTrunc_i_inc57_conv2d3x30_sel_x_b;
    wire [392:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [31:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    wire [0:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    wire [0:0] sel_for_coalesced_delay_0_s;
    wire [0:0] sel_for_coalesced_delay_0_t;
    reg [31:0] redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_q;
    reg [392:0] coalesced_delay_0_0_q;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_b;
    wire [424:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [63:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_or0;
    wire [0:0] SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_V0;
    wire [0:0] SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_V1;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31(BLACKBOX,9)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer7_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_backStall),
        .in_valid_in(SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31(STALLENABLE,60)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_and0 = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_wireValid = SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_and0;

    // SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0(STALLENABLE,67)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_V0 = SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_0;
    assign SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_V1 = SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_backStall & SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_0;
    assign SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_s_tv_1 = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_out_stall_out & SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_or0 = SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_s_tv_0;
    assign SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_backEN = ~ (SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_s_tv_1 | SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_v_s_0 = SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_backStall = ~ (SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_0 & SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_1 <= SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_1 & SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_R_v_1 <= SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,62)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_backStall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,19)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31(BITJOIN,50)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_q = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31(BITSELECT,51)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_q[31:0]);

    // i_cmp10_conv2d3x32(COMPARE,7)@1
    assign i_cmp10_conv2d3x32_a = $unsigned({{2{redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_q[31]}}, redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_q});
    assign i_cmp10_conv2d3x32_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_b});
    assign i_cmp10_conv2d3x32_o = $unsigned($signed(i_cmp10_conv2d3x32_a) - $signed(i_cmp10_conv2d3x32_b));
    assign i_cmp10_conv2d3x32_c[0] = i_cmp10_conv2d3x32_o[33];

    // i_unnamed_conv2d3x34(LOGICAL,10)@1
    assign i_unnamed_conv2d3x34_q = sel_for_coalesced_delay_0_m & i_cmp10_conv2d3x32_c;

    // c_i32_15(CONSTANT,4)
    assign c_i32_15_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_stall_entry(BITJOIN,54)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d3x315, in_k_059158, in_j_062144, in_c0_exe975, in_c0_exe865, in_c0_exe756, in_c0_exe644, in_c0_exe537, in_c0_exe426, in_c0_exe317, in_c0_exe16135, in_c0_exe15125, in_c0_exe14124, in_c0_exe13115, in_c0_exe1254179, in_c0_exe12105, in_c0_exe1194, in_c0_exe1186153, in_c0_exe115, in_c0_exe1085};

    // bubble_select_stall_entry(BITSELECT,55)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[129:98]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[161:130]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[162:162]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[163:163]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[164:164]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[165:165]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[229:166]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[230:230]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[262:231]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[294:263]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[295:295]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[296:296]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[328:297]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[360:329]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[392:361]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[424:393]);

    // i_inc57_conv2d3x30(ADD,8)@0
    assign i_inc57_conv2d3x30_a = {1'b0, bubble_select_stall_entry_t};
    assign i_inc57_conv2d3x30_b = {1'b0, c_i32_15_q};
    assign i_inc57_conv2d3x30_o = $unsigned(i_inc57_conv2d3x30_a) + $unsigned(i_inc57_conv2d3x30_b);
    assign i_inc57_conv2d3x30_q = i_inc57_conv2d3x30_o[32:0];

    // bgTrunc_i_inc57_conv2d3x30_sel_x(BITSELECT,21)@0
    assign bgTrunc_i_inc57_conv2d3x30_sel_x_b = i_inc57_conv2d3x30_q[31:0];

    // redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_inc57_conv2d3x30_sel_x_b);
        end
    end

    // join_for_coalesced_delay_0(BITJOIN,45)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_b, bubble_select_stall_entry_e, bubble_select_stall_entry_q, bubble_select_stall_entry_p, bubble_select_stall_entry_m, bubble_select_stall_entry_h, bubble_select_stall_entry_k, bubble_select_stall_entry_j, bubble_select_stall_entry_i, bubble_select_stall_entry_d, bubble_select_stall_entry_f, bubble_select_stall_entry_g, bubble_select_stall_entry_n, bubble_select_stall_entry_o, bubble_select_stall_entry_r, bubble_select_stall_entry_s, bubble_select_stall_entry_u, bubble_select_stall_entry_l, bubble_select_stall_entry_c};

    // coalesced_delay_0_0(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(393'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,46)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[191:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[223:192]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[255:224]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[287:256]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[319:288]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[351:320]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[383:352]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[384:384]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_0_q[385:385]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_0_q[386:386]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_0_q[387:387]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_0_q[388:388]);
    assign sel_for_coalesced_delay_0_q = $unsigned(coalesced_delay_0_0_q[389:389]);
    assign sel_for_coalesced_delay_0_r = $unsigned(coalesced_delay_0_0_q[390:390]);
    assign sel_for_coalesced_delay_0_s = $unsigned(coalesced_delay_0_0_q[391:391]);
    assign sel_for_coalesced_delay_0_t = $unsigned(coalesced_delay_0_0_q[392:392]);

    // dupName_0_sync_out_x(GPOUT,22)@1
    assign out_c0_exe1085 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe115 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe1186153 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe1194 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe12105 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe1254179 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe13115 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe14124 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe15125 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe16135 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe317 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe426 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe537 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe644 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe756 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe865 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe975 = sel_for_coalesced_delay_0_f;
    assign out_inc57 = redist0_bgTrunc_i_inc57_conv2d3x30_sel_x_b_1_0_q;
    assign out_j_062144 = sel_for_coalesced_delay_0_e;
    assign out_unnamed_conv2d3x315 = sel_for_coalesced_delay_0_d;
    assign out_unnamed_conv2d3x316 = i_unnamed_conv2d3x34_q;
    assign out_valid_out = SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x31_V0;

endmodule
