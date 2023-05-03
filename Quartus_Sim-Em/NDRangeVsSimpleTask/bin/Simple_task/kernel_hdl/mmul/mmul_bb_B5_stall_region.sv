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
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B5_stall_region (
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
    output wire [0:0] out_feedback_out_12,
    input wire [0:0] in_feedback_stall_in_12,
    output wire [0:0] out_feedback_valid_out_12,
    input wire [63:0] in_C,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe111016,
    input wire [0:0] in_c0_exe121028,
    input wire [0:0] in_c0_exe139,
    input wire [0:0] in_c0_exe1410,
    input wire [0:0] in_c0_exe2922,
    input wire [31:0] in_c0_exe3933,
    input wire [31:0] in_c0_exe7974,
    input wire [31:0] in_c1_exe111,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_c0_exe111016,
    output wire [0:0] out_c0_exe121028,
    output wire [0:0] out_c0_exe1410,
    output wire [0:0] out_memdep,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [32:0] i_add15_mmul0_a;
    wire [32:0] i_add15_mmul0_b;
    logic [32:0] i_add15_mmul0_o;
    wire [32:0] i_add15_mmul0_q;
    wire [1:0] i_arrayidx173_mmul3_vt_const_1_q;
    wire [63:0] i_arrayidx173_mmul3_vt_join_q;
    wire [61:0] i_arrayidx173_mmul3_vt_select_63_b;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul4_out_lsu_memdep_o_active;
    wire [30:0] i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_address;
    wire [4:0] i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul4_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul4_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_select_63_b;
    wire [31:0] bgTrunc_i_add15_mmul0_sel_x_b;
    wire [64:0] i_arrayidx173_mmul0_add_x_a;
    wire [64:0] i_arrayidx173_mmul0_add_x_b;
    logic [64:0] i_arrayidx173_mmul0_add_x_o;
    wire [64:0] i_arrayidx173_mmul0_add_x_q;
    wire [61:0] i_arrayidx173_mmul0_narrow_x_b;
    wire [63:0] i_arrayidx173_mmul0_shift_join_x_q;
    wire [63:0] i_arrayidx173_mmul0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom16_mmul1_sel_x_b;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [3:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    reg [31:0] redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_q;
    reg [32:0] coalesced_delay_0_0_q;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [3:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [3:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_mmul4_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_mmul4_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_b;
    wire [100:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [3:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_V0;
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
    reg [0:0] SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_or0;
    wire [0:0] SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_V0;
    wire [0:0] SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;


    // bubble_join_stall_entry(BITJOIN,73)
    assign bubble_join_stall_entry_q = {in_c1_exe111, in_c0_exe7974, in_c0_exe3933, in_c0_exe2922, in_c0_exe1410, in_c0_exe139, in_c0_exe121028, in_c0_exe111016};

    // bubble_select_stall_entry(BITSELECT,74)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[36:5]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:37]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[100:69]);

    // join_for_coalesced_delay_1(BITJOIN,60)
    assign join_for_coalesced_delay_1_q = {bubble_select_stall_entry_e, bubble_select_stall_entry_d, bubble_select_stall_entry_c, bubble_select_stall_entry_b};

    // coalesced_delay_1_fifo(STALLFIFO,64)
    assign coalesced_delay_1_fifo_valid_in = SE_stall_entry_V1;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(58),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(4),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,90)
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
    assign SE_stall_entry_consumed0 = (~ (SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (coalesced_delay_1_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0(STALLENABLE,102)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_V0 = SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_0;
    assign SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_V1 = SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_backStall & SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_0;
    assign SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_s_tv_1 = i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_stall_out & SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_or0 = SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_s_tv_0;
    assign SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_backEN = ~ (SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_s_tv_1 | SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_v_s_0 = SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_backStall = ~ (SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_0 & SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_1 <= SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_1 & SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_R_v_1 <= SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2(BLACKBOX,19)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmul_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2 (
        .in_buffer_in(in_C),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_backStall),
        .in_valid_in(SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2(STALLENABLE,87)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_backStall = i_llvm_fpga_mem_memdep_mmul4_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_and0 = i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_wireValid = SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push12_mmul5(STALLENABLE,85)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_wireValid = i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_mmul4(BITJOIN,66)
    assign bubble_join_i_llvm_fpga_mem_memdep_mmul4_q = i_llvm_fpga_mem_memdep_mmul4_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_mmul4(BITSELECT,67)
    assign bubble_select_i_llvm_fpga_mem_memdep_mmul4_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_mmul4_q[0:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,77)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,78)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[3:0]);

    // sel_for_coalesced_delay_1(BITSELECT,61)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[2:2]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[3:3]);

    // i_llvm_fpga_push_i1_memdep_phi_push12_mmul5(BLACKBOX,18)@57
    // in in_stall_in@20000000
    // out out_data_out@58
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@58
    mmul_i_llvm_fpga_push_i1_memdep_phi_push12_0 thei_llvm_fpga_push_i1_memdep_phi_push12_mmul5 (
        .in_c0_exe139(sel_for_coalesced_delay_1_d),
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_mmul4_b),
        .in_feedback_stall_in_12(in_feedback_stall_in_12),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V0),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_out_feedback_valid_out_12),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (in_stall_in) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_llvm_fpga_mem_memdep_mmul4_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // join_for_coalesced_delay_0(BITJOIN,57)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_f, bubble_select_stall_entry_i};

    // coalesced_delay_0_0(REG,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,58)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[32:32]);

    // i_add15_mmul0(ADD,11)@0
    assign i_add15_mmul0_a = {1'b0, bubble_select_stall_entry_h};
    assign i_add15_mmul0_b = {1'b0, bubble_select_stall_entry_g};
    assign i_add15_mmul0_o = $unsigned(i_add15_mmul0_a) + $unsigned(i_add15_mmul0_b);
    assign i_add15_mmul0_q = i_add15_mmul0_o[32:0];

    // bgTrunc_i_add15_mmul0_sel_x(BITSELECT,37)@0
    assign bgTrunc_i_add15_mmul0_sel_x_b = i_add15_mmul0_q[31:0];

    // redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0(REG,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add15_mmul0_sel_x_b);
        end
    end

    // i_idxprom16_mmul1_sel_x(BITSELECT,46)@1
    assign i_idxprom16_mmul1_sel_x_b = $unsigned({{32{redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_q[31]}}, redist0_bgTrunc_i_add15_mmul0_sel_x_b_1_0_q[31:0]});

    // i_arrayidx173_mmul0_narrow_x(BITSELECT,42)@1
    assign i_arrayidx173_mmul0_narrow_x_b = i_idxprom16_mmul1_sel_x_b[61:0];

    // i_arrayidx173_mmul0_shift_join_x(BITJOIN,43)@1
    assign i_arrayidx173_mmul0_shift_join_x_q = {i_arrayidx173_mmul0_narrow_x_b, i_arrayidx173_mmul3_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2(BITJOIN,70)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_q = i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2(BITSELECT,71)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_select_63(BITSELECT,22)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_const_9(CONSTANT,20)
    assign i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_join(BITJOIN,21)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_const_9_q};

    // i_arrayidx173_mmul0_add_x(ADD,40)@1
    assign i_arrayidx173_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_vt_join_q};
    assign i_arrayidx173_mmul0_add_x_b = {1'b0, i_arrayidx173_mmul0_shift_join_x_q};
    assign i_arrayidx173_mmul0_add_x_o = $unsigned(i_arrayidx173_mmul0_add_x_a) + $unsigned(i_arrayidx173_mmul0_add_x_b);
    assign i_arrayidx173_mmul0_add_x_q = i_arrayidx173_mmul0_add_x_o[64:0];

    // i_arrayidx173_mmul0_dupName_0_trunc_sel_x(BITSELECT,45)@1
    assign i_arrayidx173_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx173_mmul0_add_x_q[63:0];

    // i_arrayidx173_mmul3_vt_select_63(BITSELECT,14)@1
    assign i_arrayidx173_mmul3_vt_select_63_b = i_arrayidx173_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx173_mmul3_vt_const_1(CONSTANT,12)
    assign i_arrayidx173_mmul3_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx173_mmul3_vt_join(BITJOIN,13)@1
    assign i_arrayidx173_mmul3_vt_join_q = {i_arrayidx173_mmul3_vt_select_63_b, i_arrayidx173_mmul3_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_mmul4(BLACKBOX,17)@1
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
    // out out_o_valid@57
    // out out_o_writeack@57
    mmul_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_mmul4 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx173_mmul3_vt_join_q),
        .in_i_predicate(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul2_V0),
        .in_i_writedata(sel_for_coalesced_delay_0_b),
        .in_memdep_mmul_avm_readdata(in_memdep_mmul_avm_readdata),
        .in_memdep_mmul_avm_readdatavalid(in_memdep_mmul_avm_readdatavalid),
        .in_memdep_mmul_avm_waitrequest(in_memdep_mmul_avm_waitrequest),
        .in_memdep_mmul_avm_writeack(in_memdep_mmul_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_mmul4_out_lsu_memdep_o_active),
        .out_memdep_mmul_avm_address(i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_address),
        .out_memdep_mmul_avm_burstcount(i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_burstcount),
        .out_memdep_mmul_avm_byteenable(i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_byteenable),
        .out_memdep_mmul_avm_enable(i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_enable),
        .out_memdep_mmul_avm_read(i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_read),
        .out_memdep_mmul_avm_write(i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_write),
        .out_memdep_mmul_avm_writedata(i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_mmul4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_mmul4_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_mmul4_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_memdep_mmul_avm_address = i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_address;
    assign out_memdep_mmul_avm_enable = i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_enable;
    assign out_memdep_mmul_avm_read = i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_read;
    assign out_memdep_mmul_avm_write = i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_write;
    assign out_memdep_mmul_avm_writedata = i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_writedata;
    assign out_memdep_mmul_avm_byteenable = i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_byteenable;
    assign out_memdep_mmul_avm_burstcount = i_llvm_fpga_mem_memdep_mmul4_out_memdep_mmul_avm_burstcount;

    // feedback_out_12_sync(GPOUT,8)
    assign out_feedback_out_12 = i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_out_feedback_out_12;

    // feedback_valid_out_12_sync(GPOUT,10)
    assign out_feedback_valid_out_12 = i_llvm_fpga_push_i1_memdep_phi_push12_mmul5_out_feedback_valid_out_12;

    // sync_out(GPOUT,35)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,38)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_mmul4_out_lsu_memdep_o_active;

    // dupName_0_sync_out_x(GPOUT,39)@57
    assign out_c0_exe111016 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe121028 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe1410 = sel_for_coalesced_delay_1_e;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_mmul4_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V1;

endmodule
