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

// SystemVerilog created from mmul_bb_B3_stall_region
// SystemVerilog created on Tue May  9 13:46:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B3_stall_region (
    input wire [511:0] in_unnamed_mmul9_mmul_avm_readdata,
    input wire [0:0] in_unnamed_mmul9_mmul_avm_writeack,
    input wire [0:0] in_unnamed_mmul9_mmul_avm_waitrequest,
    input wire [0:0] in_unnamed_mmul9_mmul_avm_readdatavalid,
    output wire [30:0] out_unnamed_mmul9_mmul_avm_address,
    output wire [0:0] out_unnamed_mmul9_mmul_avm_enable,
    output wire [0:0] out_unnamed_mmul9_mmul_avm_read,
    output wire [0:0] out_unnamed_mmul9_mmul_avm_write,
    output wire [511:0] out_unnamed_mmul9_mmul_avm_writedata,
    output wire [63:0] out_unnamed_mmul9_mmul_avm_byteenable,
    output wire [4:0] out_unnamed_mmul9_mmul_avm_burstcount,
    input wire [63:0] in_C,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe2331,
    input wire [0:0] in_c0_exe82,
    input wire [31:0] in_c1_exe13,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_mmul9_o_active,
    output wire [0:0] out_c0_exe82,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [1:0] i_arrayidx141_mmul2_vt_const_1_q;
    wire [63:0] i_arrayidx141_mmul2_vt_join_q;
    wire [61:0] i_arrayidx141_mmul2_vt_select_63_b;
    wire [31:0] i_idxprom13_mmul0_vt_const_63_q;
    wire [63:0] i_idxprom13_mmul0_vt_join_q;
    wire [31:0] i_idxprom13_mmul0_vt_select_31_b;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_lsu_unnamed_mmul9_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_writedata;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_vt_select_63_b;
    wire [64:0] i_arrayidx141_mmul0_add_x_a;
    wire [64:0] i_arrayidx141_mmul0_add_x_b;
    logic [64:0] i_arrayidx141_mmul0_add_x_o;
    wire [64:0] i_arrayidx141_mmul0_add_x_q;
    wire [61:0] i_arrayidx141_mmul0_narrow_x_b;
    wire [63:0] i_arrayidx141_mmul0_shift_join_x_q;
    wire [63:0] i_arrayidx141_mmul0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom13_mmul0_sel_x_b;
    reg [0:0] redist0_stall_entry_o5_3_0_q;
    reg [0:0] redist0_stall_entry_o5_3_1_q;
    reg [0:0] redist0_stall_entry_o5_3_2_q;
    reg [31:0] redist1_stall_entry_o6_1_0_q;
    reg [31:0] redist2_i_idxprom13_mmul0_vt_select_31_b_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_b;
    wire [64:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_and1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_V0;
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
    reg [0:0] SE_redist0_stall_entry_o5_3_0_R_v_0;
    reg [0:0] SE_redist0_stall_entry_o5_3_0_R_v_1;
    reg [0:0] SE_redist0_stall_entry_o5_3_0_R_v_2;
    wire [0:0] SE_redist0_stall_entry_o5_3_0_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o5_3_0_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o5_3_0_s_tv_1;
    wire [0:0] SE_redist0_stall_entry_o5_3_0_s_tv_2;
    wire [0:0] SE_redist0_stall_entry_o5_3_0_backEN;
    wire [0:0] SE_redist0_stall_entry_o5_3_0_or0;
    wire [0:0] SE_redist0_stall_entry_o5_3_0_or1;
    wire [0:0] SE_redist0_stall_entry_o5_3_0_backStall;
    wire [0:0] SE_redist0_stall_entry_o5_3_0_V0;
    wire [0:0] SE_redist0_stall_entry_o5_3_0_V1;
    wire [0:0] SE_redist0_stall_entry_o5_3_0_V2;
    reg [0:0] SE_redist0_stall_entry_o5_3_1_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o5_3_1_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o5_3_1_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o5_3_1_backEN;
    wire [0:0] SE_redist0_stall_entry_o5_3_1_backStall;
    wire [0:0] SE_redist0_stall_entry_o5_3_1_V0;
    reg [0:0] SE_redist0_stall_entry_o5_3_2_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o5_3_2_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o5_3_2_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o5_3_2_backEN;
    wire [0:0] SE_redist0_stall_entry_o5_3_2_backStall;
    wire [0:0] SE_redist0_stall_entry_o5_3_2_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1(BLACKBOX,16)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmul_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1 (
        .in_buffer_in(in_C),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_backStall),
        .in_valid_in(SE_redist0_stall_entry_o5_3_0_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_stall_entry_o5_3_2(STALLENABLE,85)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o5_3_2_V0 = SE_redist0_stall_entry_o5_3_2_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o5_3_2_s_tv_0 = SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_backStall & SE_redist0_stall_entry_o5_3_2_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o5_3_2_backEN = ~ (SE_redist0_stall_entry_o5_3_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o5_3_2_v_s_0 = SE_redist0_stall_entry_o5_3_2_backEN & SE_redist0_stall_entry_o5_3_1_V0;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o5_3_2_backStall = ~ (SE_redist0_stall_entry_o5_3_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o5_3_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o5_3_2_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o5_3_2_R_v_0 <= SE_redist0_stall_entry_o5_3_2_R_v_0 & SE_redist0_stall_entry_o5_3_2_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o5_3_2_R_v_0 <= SE_redist0_stall_entry_o5_3_2_v_s_0;
            end

        end
    end

    // SE_redist0_stall_entry_o5_3_1(STALLENABLE,84)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o5_3_1_V0 = SE_redist0_stall_entry_o5_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o5_3_1_s_tv_0 = SE_redist0_stall_entry_o5_3_2_backStall & SE_redist0_stall_entry_o5_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o5_3_1_backEN = ~ (SE_redist0_stall_entry_o5_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o5_3_1_v_s_0 = SE_redist0_stall_entry_o5_3_1_backEN & SE_redist0_stall_entry_o5_3_0_V0;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o5_3_1_backStall = ~ (SE_redist0_stall_entry_o5_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o5_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o5_3_1_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o5_3_1_R_v_0 <= SE_redist0_stall_entry_o5_3_1_R_v_0 & SE_redist0_stall_entry_o5_3_1_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o5_3_1_R_v_0 <= SE_redist0_stall_entry_o5_3_1_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3(BLACKBOX,14)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    mmul_i_llvm_fpga_ffwd_dest_i1_unnamed_8_mmul0 thei_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,76)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_redist0_stall_entry_o5_3_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // SE_redist0_stall_entry_o5_3_0(STALLENABLE,83)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o5_3_0_V0 = SE_redist0_stall_entry_o5_3_0_R_v_0;
    assign SE_redist0_stall_entry_o5_3_0_V1 = SE_redist0_stall_entry_o5_3_0_R_v_1;
    assign SE_redist0_stall_entry_o5_3_0_V2 = SE_redist0_stall_entry_o5_3_0_R_v_2;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o5_3_0_s_tv_0 = SE_redist0_stall_entry_o5_3_1_backStall & SE_redist0_stall_entry_o5_3_0_R_v_0;
    assign SE_redist0_stall_entry_o5_3_0_s_tv_1 = i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_out_stall_out & SE_redist0_stall_entry_o5_3_0_R_v_1;
    assign SE_redist0_stall_entry_o5_3_0_s_tv_2 = SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_backStall & SE_redist0_stall_entry_o5_3_0_R_v_2;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o5_3_0_or0 = SE_redist0_stall_entry_o5_3_0_s_tv_0;
    assign SE_redist0_stall_entry_o5_3_0_or1 = SE_redist0_stall_entry_o5_3_0_s_tv_1 | SE_redist0_stall_entry_o5_3_0_or0;
    assign SE_redist0_stall_entry_o5_3_0_backEN = ~ (SE_redist0_stall_entry_o5_3_0_s_tv_2 | SE_redist0_stall_entry_o5_3_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o5_3_0_v_s_0 = SE_redist0_stall_entry_o5_3_0_backEN & SE_stall_entry_V1;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o5_3_0_backStall = ~ (SE_redist0_stall_entry_o5_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o5_3_0_R_v_0 <= 1'b0;
            SE_redist0_stall_entry_o5_3_0_R_v_1 <= 1'b0;
            SE_redist0_stall_entry_o5_3_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o5_3_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o5_3_0_R_v_0 <= SE_redist0_stall_entry_o5_3_0_R_v_0 & SE_redist0_stall_entry_o5_3_0_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o5_3_0_R_v_0 <= SE_redist0_stall_entry_o5_3_0_v_s_0;
            end

            if (SE_redist0_stall_entry_o5_3_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o5_3_0_R_v_1 <= SE_redist0_stall_entry_o5_3_0_R_v_1 & SE_redist0_stall_entry_o5_3_0_s_tv_1;
            end
            else
            begin
                SE_redist0_stall_entry_o5_3_0_R_v_1 <= SE_redist0_stall_entry_o5_3_0_v_s_0;
            end

            if (SE_redist0_stall_entry_o5_3_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o5_3_0_R_v_2 <= SE_redist0_stall_entry_o5_3_0_R_v_2 & SE_redist0_stall_entry_o5_3_0_s_tv_2;
            end
            else
            begin
                SE_redist0_stall_entry_o5_3_0_R_v_2 <= SE_redist0_stall_entry_o5_3_0_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,60)
    assign bubble_join_stall_entry_q = {in_c1_exe13, in_c0_exe82, in_c0_exe2331};

    // bubble_select_stall_entry(BITSELECT,61)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);

    // redist1_stall_entry_o6_1_0(REG,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_stall_entry_o6_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_stall_entry_o5_3_0_backEN == 1'b1)
        begin
            redist1_stall_entry_o6_1_0_q <= $unsigned(bubble_select_stall_entry_d);
        end
    end

    // SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1(STALLENABLE,73)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_backStall = i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_and0 = i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_and1 = SE_redist0_stall_entry_o5_3_0_V2 & SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_and0;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_and1;

    // SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4(STALLENABLE,71)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_V0 = SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_and0 = i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_wireValid = SE_redist0_stall_entry_o5_3_2_V0 & SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3(BITJOIN,53)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_q = i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3(BITSELECT,54)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_q[0:0]);

    // i_idxprom13_mmul0_vt_const_63(CONSTANT,11)
    assign i_idxprom13_mmul0_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_idxprom13_mmul0_sel_x(BITSELECT,42)@0
    assign i_idxprom13_mmul0_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_stall_entry_b[31:0]};

    // i_idxprom13_mmul0_vt_select_31(BITSELECT,13)@0
    assign i_idxprom13_mmul0_vt_select_31_b = i_idxprom13_mmul0_sel_x_b[31:0];

    // redist2_i_idxprom13_mmul0_vt_select_31_b_1_0(REG,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_idxprom13_mmul0_vt_select_31_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_stall_entry_o5_3_0_backEN == 1'b1)
        begin
            redist2_i_idxprom13_mmul0_vt_select_31_b_1_0_q <= $unsigned(i_idxprom13_mmul0_vt_select_31_b);
        end
    end

    // i_idxprom13_mmul0_vt_join(BITJOIN,12)@1
    assign i_idxprom13_mmul0_vt_join_q = {i_idxprom13_mmul0_vt_const_63_q, redist2_i_idxprom13_mmul0_vt_select_31_b_1_0_q};

    // i_arrayidx141_mmul0_narrow_x(BITSELECT,38)@1
    assign i_arrayidx141_mmul0_narrow_x_b = i_idxprom13_mmul0_vt_join_q[61:0];

    // i_arrayidx141_mmul0_shift_join_x(BITJOIN,39)@1
    assign i_arrayidx141_mmul0_shift_join_x_q = {i_arrayidx141_mmul0_narrow_x_b, i_arrayidx141_mmul2_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1(BITJOIN,57)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_q = i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1(BITSELECT,58)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_vt_select_63(BITSELECT,19)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_vt_const_9(CONSTANT,17)
    assign i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_vt_join(BITJOIN,18)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_vt_const_9_q};

    // i_arrayidx141_mmul0_add_x(ADD,36)@1
    assign i_arrayidx141_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_vt_join_q};
    assign i_arrayidx141_mmul0_add_x_b = {1'b0, i_arrayidx141_mmul0_shift_join_x_q};
    assign i_arrayidx141_mmul0_add_x_o = $unsigned(i_arrayidx141_mmul0_add_x_a) + $unsigned(i_arrayidx141_mmul0_add_x_b);
    assign i_arrayidx141_mmul0_add_x_q = i_arrayidx141_mmul0_add_x_o[64:0];

    // i_arrayidx141_mmul0_dupName_0_trunc_sel_x(BITSELECT,41)@1
    assign i_arrayidx141_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx141_mmul0_add_x_q[63:0];

    // i_arrayidx141_mmul2_vt_select_63(BITSELECT,9)@1
    assign i_arrayidx141_mmul2_vt_select_63_b = i_arrayidx141_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx141_mmul2_vt_const_1(CONSTANT,7)
    assign i_arrayidx141_mmul2_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx141_mmul2_vt_join(BITJOIN,8)@1
    assign i_arrayidx141_mmul2_vt_join_q = {i_arrayidx141_mmul2_vt_select_63_b, i_arrayidx141_mmul2_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_mmul9_mmul4(BLACKBOX,15)@1
    // in in_i_stall@20000000
    // out out_lsu_unnamed_mmul9_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@3
    // out out_unnamed_mmul9_mmul_avm_address@20000000
    // out out_unnamed_mmul9_mmul_avm_burstcount@20000000
    // out out_unnamed_mmul9_mmul_avm_byteenable@20000000
    // out out_unnamed_mmul9_mmul_avm_enable@20000000
    // out out_unnamed_mmul9_mmul_avm_read@20000000
    // out out_unnamed_mmul9_mmul_avm_write@20000000
    // out out_unnamed_mmul9_mmul_avm_writedata@20000000
    mmul_i_llvm_fpga_mem_unnamed_9_mmul0 thei_llvm_fpga_mem_unnamed_mmul9_mmul4 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx141_mmul2_vt_join_q),
        .in_i_predicate(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_mmul8_mmul3_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024f32_c_sync_buffer_mmul1_V0),
        .in_i_writedata(redist1_stall_entry_o6_1_0_q),
        .in_unnamed_mmul9_mmul_avm_readdata(in_unnamed_mmul9_mmul_avm_readdata),
        .in_unnamed_mmul9_mmul_avm_readdatavalid(in_unnamed_mmul9_mmul_avm_readdatavalid),
        .in_unnamed_mmul9_mmul_avm_waitrequest(in_unnamed_mmul9_mmul_avm_waitrequest),
        .in_unnamed_mmul9_mmul_avm_writeack(in_unnamed_mmul9_mmul_avm_writeack),
        .out_lsu_unnamed_mmul9_o_active(i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_lsu_unnamed_mmul9_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_o_valid),
        .out_unnamed_mmul9_mmul_avm_address(i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_address),
        .out_unnamed_mmul9_mmul_avm_burstcount(i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_burstcount),
        .out_unnamed_mmul9_mmul_avm_byteenable(i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_byteenable),
        .out_unnamed_mmul9_mmul_avm_enable(i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_enable),
        .out_unnamed_mmul9_mmul_avm_read(i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_read),
        .out_unnamed_mmul9_mmul_avm_write(i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_write),
        .out_unnamed_mmul9_mmul_avm_writedata(i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_mmul9_mmul_avm_address = i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_address;
    assign out_unnamed_mmul9_mmul_avm_enable = i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_enable;
    assign out_unnamed_mmul9_mmul_avm_read = i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_read;
    assign out_unnamed_mmul9_mmul_avm_write = i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_write;
    assign out_unnamed_mmul9_mmul_avm_writedata = i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_writedata;
    assign out_unnamed_mmul9_mmul_avm_byteenable = i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_byteenable;
    assign out_unnamed_mmul9_mmul_avm_burstcount = i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_unnamed_mmul9_mmul_avm_burstcount;

    // sync_out(GPOUT,32)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,34)
    assign out_lsu_unnamed_mmul9_o_active = i_llvm_fpga_mem_unnamed_mmul9_mmul4_out_lsu_unnamed_mmul9_o_active;

    // redist0_stall_entry_o5_3_0(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o5_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_stall_entry_o5_3_0_backEN == 1'b1)
        begin
            redist0_stall_entry_o5_3_0_q <= $unsigned(bubble_select_stall_entry_c);
        end
    end

    // redist0_stall_entry_o5_3_1(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o5_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_stall_entry_o5_3_1_backEN == 1'b1)
        begin
            redist0_stall_entry_o5_3_1_q <= $unsigned(redist0_stall_entry_o5_3_0_q);
        end
    end

    // redist0_stall_entry_o5_3_2(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o5_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_stall_entry_o5_3_2_backEN == 1'b1)
        begin
            redist0_stall_entry_o5_3_2_q <= $unsigned(redist0_stall_entry_o5_3_1_q);
        end
    end

    // dupName_0_sync_out_x(GPOUT,35)@3
    assign out_c0_exe82 = redist0_stall_entry_o5_3_2_q;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_unnamed_mmul9_mmul4_V0;

endmodule
