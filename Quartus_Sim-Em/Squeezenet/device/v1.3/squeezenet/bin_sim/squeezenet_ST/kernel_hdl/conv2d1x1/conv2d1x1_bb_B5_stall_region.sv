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

// SystemVerilog created from conv2d1x1_bb_B5_stall_region
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B5_stall_region (
    input wire [511:0] in_unnamed_conv2d1x110_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x110_conv2d1x1_avm_writeack,
    input wire [0:0] in_unnamed_conv2d1x110_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x110_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_unnamed_conv2d1x110_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x110_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x110_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x110_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x110_conv2d1x1_avm_writedata,
    output wire [63:0] out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable,
    output wire [4:0] out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe101515,
    input wire [0:0] in_c0_exe111526,
    input wire [31:0] in_c0_exe31441,
    input wire [0:0] in_c0_exe81492,
    input wire [31:0] in_c0_exe91503,
    input wire [31:0] in_c1_exe17,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_conv2d1x110_o_active,
    output wire [0:0] out_c0_exe101515,
    output wire [0:0] out_c0_exe111526,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [32:0] i_add24_conv2d1x14_a;
    wire [32:0] i_add24_conv2d1x14_b;
    logic [32:0] i_add24_conv2d1x14_o;
    wire [32:0] i_add24_conv2d1x14_q;
    wire [1:0] i_arrayidx262_conv2d1x16_vt_const_1_q;
    wire [63:0] i_arrayidx262_conv2d1x16_vt_join_q;
    wire [61:0] i_arrayidx262_conv2d1x16_vt_select_63_b;
    wire [31:0] i_idxprom25_conv2d1x15_vt_const_63_q;
    wire [63:0] i_idxprom25_conv2d1x15_vt_join_q;
    wire [31:0] i_idxprom25_conv2d1x15_vt_select_31_b;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_lsu_unnamed_conv2d1x110_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_writedata;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_select_63_b;
    wire [31:0] bgTrunc_i_add24_conv2d1x14_sel_x_b;
    wire [64:0] i_arrayidx262_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx262_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx262_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx262_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx262_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx262_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx262_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom25_conv2d1x15_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_out_c0_exit100_1_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [0:0] redist2_stall_entry_o7_4_0_q;
    reg [0:0] redist2_stall_entry_o7_4_1_q;
    reg [0:0] redist2_stall_entry_o7_4_2_q;
    reg [0:0] redist2_stall_entry_o7_4_3_q;
    reg [31:0] redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_0_q;
    reg [31:0] redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_1_q;
    reg [31:0] redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_2_q;
    reg [31:0] redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_3_q;
    reg [1:0] coalesced_delay_0_0_q;
    reg [1:0] coalesced_delay_0_1_q;
    reg [1:0] coalesced_delay_0_2_q;
    reg [1:0] coalesced_delay_0_3_q;
    reg [1:0] coalesced_delay_0_4_q;
    reg [1:0] coalesced_delay_0_5_q;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_b;
    wire [98:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_and1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_V0;
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
    reg [0:0] SE_redist2_stall_entry_o7_4_0_R_v_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_0_v_s_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_0_s_tv_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_0_backEN;
    wire [0:0] SE_redist2_stall_entry_o7_4_0_backStall;
    wire [0:0] SE_redist2_stall_entry_o7_4_0_V0;
    reg [0:0] SE_redist2_stall_entry_o7_4_1_R_v_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_1_v_s_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_1_s_tv_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_1_backEN;
    wire [0:0] SE_redist2_stall_entry_o7_4_1_backStall;
    wire [0:0] SE_redist2_stall_entry_o7_4_1_V0;
    reg [0:0] SE_redist2_stall_entry_o7_4_2_R_v_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_2_v_s_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_2_s_tv_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_2_backEN;
    wire [0:0] SE_redist2_stall_entry_o7_4_2_backStall;
    wire [0:0] SE_redist2_stall_entry_o7_4_2_V0;
    reg [0:0] SE_redist2_stall_entry_o7_4_3_R_v_0;
    reg [0:0] SE_redist2_stall_entry_o7_4_3_R_v_1;
    wire [0:0] SE_redist2_stall_entry_o7_4_3_v_s_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_3_s_tv_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_3_s_tv_1;
    wire [0:0] SE_redist2_stall_entry_o7_4_3_backEN;
    wire [0:0] SE_redist2_stall_entry_o7_4_3_or0;
    wire [0:0] SE_redist2_stall_entry_o7_4_3_backStall;
    wire [0:0] SE_redist2_stall_entry_o7_4_3_V0;
    wire [0:0] SE_redist2_stall_entry_o7_4_3_V1;
    reg [0:0] SE_coalesced_delay_0_4_R_v_0;
    wire [0:0] SE_coalesced_delay_0_4_v_s_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_4_backEN;
    wire [0:0] SE_coalesced_delay_0_4_backStall;
    wire [0:0] SE_coalesced_delay_0_4_V0;
    reg [0:0] SE_coalesced_delay_0_5_R_v_0;
    wire [0:0] SE_coalesced_delay_0_5_v_s_0;
    wire [0:0] SE_coalesced_delay_0_5_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_5_backEN;
    wire [0:0] SE_coalesced_delay_0_5_backStall;
    wire [0:0] SE_coalesced_delay_0_5_V0;
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
    wire [0:0] SR_SE_coalesced_delay_0_5_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_5_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_5_V;
    wire [1:0] SR_SE_coalesced_delay_0_5_D0;


    // bubble_join_stall_entry(BITJOIN,73)
    assign bubble_join_stall_entry_q = {in_c1_exe17, in_c0_exe91503, in_c0_exe81492, in_c0_exe31441, in_c0_exe111526, in_c0_exe101515};

    // bubble_select_stall_entry(BITSELECT,74)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:67]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // join_for_coalesced_delay_0(BITJOIN,52)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_c, bubble_select_stall_entry_b};

    // coalesced_delay_0_0(REG,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_redist2_stall_entry_o7_4_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(2'b00);
        end
        else if (SE_redist2_stall_entry_o7_4_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(2'b00);
        end
        else if (SE_redist2_stall_entry_o7_4_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(2'b00);
        end
        else if (SE_redist2_stall_entry_o7_4_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // coalesced_delay_0_4(REG,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(coalesced_delay_0_3_q);
        end
    end

    // SE_coalesced_delay_0_5(STALLENABLE,116)
    // Valid signal propagation
    assign SE_coalesced_delay_0_5_V0 = SE_coalesced_delay_0_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_5_s_tv_0 = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_backStall & SE_coalesced_delay_0_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_5_backEN = ~ (SE_coalesced_delay_0_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_5_v_s_0 = SE_coalesced_delay_0_5_backEN & SR_SE_coalesced_delay_0_5_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_5_backStall = ~ (SE_coalesced_delay_0_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_5_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_R_v_0 & SE_coalesced_delay_0_5_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_5(STALLREG,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_5_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_5_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_5_r_valid <= SE_coalesced_delay_0_5_backStall & (SR_SE_coalesced_delay_0_5_r_valid | SR_SE_coalesced_delay_0_5_i_valid);

            if (SR_SE_coalesced_delay_0_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_5_r_data0 <= $unsigned(coalesced_delay_0_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_5_i_valid = SE_coalesced_delay_0_4_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_5_backStall = SR_SE_coalesced_delay_0_5_r_valid | ~ (SR_SE_coalesced_delay_0_5_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_5_V = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_valid : SR_SE_coalesced_delay_0_5_i_valid;

    assign SR_SE_coalesced_delay_0_5_D0 = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_data0 : coalesced_delay_0_4_q;

    // SE_coalesced_delay_0_4(STALLENABLE,115)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SR_SE_coalesced_delay_0_5_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SE_redist2_stall_entry_o7_4_3_V1;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_R_v_0 & SE_coalesced_delay_0_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_v_s_0;
            end

        end
    end

    // SE_redist2_stall_entry_o7_4_3(STALLENABLE,106)
    // Valid signal propagation
    assign SE_redist2_stall_entry_o7_4_3_V0 = SE_redist2_stall_entry_o7_4_3_R_v_0;
    assign SE_redist2_stall_entry_o7_4_3_V1 = SE_redist2_stall_entry_o7_4_3_R_v_1;
    // Stall signal propagation
    assign SE_redist2_stall_entry_o7_4_3_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_backStall & SE_redist2_stall_entry_o7_4_3_R_v_0;
    assign SE_redist2_stall_entry_o7_4_3_s_tv_1 = SE_coalesced_delay_0_4_backStall & SE_redist2_stall_entry_o7_4_3_R_v_1;
    // Backward Enable generation
    assign SE_redist2_stall_entry_o7_4_3_or0 = SE_redist2_stall_entry_o7_4_3_s_tv_0;
    assign SE_redist2_stall_entry_o7_4_3_backEN = ~ (SE_redist2_stall_entry_o7_4_3_s_tv_1 | SE_redist2_stall_entry_o7_4_3_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_stall_entry_o7_4_3_v_s_0 = SE_redist2_stall_entry_o7_4_3_backEN & SE_redist2_stall_entry_o7_4_2_V0;
    // Backward Stall generation
    assign SE_redist2_stall_entry_o7_4_3_backStall = ~ (SE_redist2_stall_entry_o7_4_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_stall_entry_o7_4_3_R_v_0 <= 1'b0;
            SE_redist2_stall_entry_o7_4_3_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_stall_entry_o7_4_3_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o7_4_3_R_v_0 <= SE_redist2_stall_entry_o7_4_3_R_v_0 & SE_redist2_stall_entry_o7_4_3_s_tv_0;
            end
            else
            begin
                SE_redist2_stall_entry_o7_4_3_R_v_0 <= SE_redist2_stall_entry_o7_4_3_v_s_0;
            end

            if (SE_redist2_stall_entry_o7_4_3_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o7_4_3_R_v_1 <= SE_redist2_stall_entry_o7_4_3_R_v_1 & SE_redist2_stall_entry_o7_4_3_s_tv_1;
            end
            else
            begin
                SE_redist2_stall_entry_o7_4_3_R_v_1 <= SE_redist2_stall_entry_o7_4_3_v_s_0;
            end

        end
    end

    // SE_redist2_stall_entry_o7_4_2(STALLENABLE,105)
    // Valid signal propagation
    assign SE_redist2_stall_entry_o7_4_2_V0 = SE_redist2_stall_entry_o7_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist2_stall_entry_o7_4_2_s_tv_0 = SE_redist2_stall_entry_o7_4_3_backStall & SE_redist2_stall_entry_o7_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist2_stall_entry_o7_4_2_backEN = ~ (SE_redist2_stall_entry_o7_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_stall_entry_o7_4_2_v_s_0 = SE_redist2_stall_entry_o7_4_2_backEN & SE_redist2_stall_entry_o7_4_1_V0;
    // Backward Stall generation
    assign SE_redist2_stall_entry_o7_4_2_backStall = ~ (SE_redist2_stall_entry_o7_4_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_stall_entry_o7_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_stall_entry_o7_4_2_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o7_4_2_R_v_0 <= SE_redist2_stall_entry_o7_4_2_R_v_0 & SE_redist2_stall_entry_o7_4_2_s_tv_0;
            end
            else
            begin
                SE_redist2_stall_entry_o7_4_2_R_v_0 <= SE_redist2_stall_entry_o7_4_2_v_s_0;
            end

        end
    end

    // SE_redist2_stall_entry_o7_4_1(STALLENABLE,104)
    // Valid signal propagation
    assign SE_redist2_stall_entry_o7_4_1_V0 = SE_redist2_stall_entry_o7_4_1_R_v_0;
    // Stall signal propagation
    assign SE_redist2_stall_entry_o7_4_1_s_tv_0 = SE_redist2_stall_entry_o7_4_2_backStall & SE_redist2_stall_entry_o7_4_1_R_v_0;
    // Backward Enable generation
    assign SE_redist2_stall_entry_o7_4_1_backEN = ~ (SE_redist2_stall_entry_o7_4_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_stall_entry_o7_4_1_v_s_0 = SE_redist2_stall_entry_o7_4_1_backEN & SE_redist2_stall_entry_o7_4_0_V0;
    // Backward Stall generation
    assign SE_redist2_stall_entry_o7_4_1_backStall = ~ (SE_redist2_stall_entry_o7_4_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_stall_entry_o7_4_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_stall_entry_o7_4_1_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o7_4_1_R_v_0 <= SE_redist2_stall_entry_o7_4_1_R_v_0 & SE_redist2_stall_entry_o7_4_1_s_tv_0;
            end
            else
            begin
                SE_redist2_stall_entry_o7_4_1_R_v_0 <= SE_redist2_stall_entry_o7_4_1_v_s_0;
            end

        end
    end

    // SE_redist2_stall_entry_o7_4_0(STALLENABLE,103)
    // Valid signal propagation
    assign SE_redist2_stall_entry_o7_4_0_V0 = SE_redist2_stall_entry_o7_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_stall_entry_o7_4_0_s_tv_0 = SE_redist2_stall_entry_o7_4_1_backStall & SE_redist2_stall_entry_o7_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_stall_entry_o7_4_0_backEN = ~ (SE_redist2_stall_entry_o7_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_stall_entry_o7_4_0_v_s_0 = SE_redist2_stall_entry_o7_4_0_backEN & SE_stall_entry_V1;
    // Backward Stall generation
    assign SE_redist2_stall_entry_o7_4_0_backStall = ~ (SE_redist2_stall_entry_o7_4_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_stall_entry_o7_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_stall_entry_o7_4_0_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o7_4_0_R_v_0 <= SE_redist2_stall_entry_o7_4_0_R_v_0 & SE_redist2_stall_entry_o7_4_0_s_tv_0;
            end
            else
            begin
                SE_redist2_stall_entry_o7_4_0_R_v_0 <= SE_redist2_stall_entry_o7_4_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10(BLACKBOX,17)@4
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10 (
        .in_buffer_in(in_output_im),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_1_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_1(STALLENABLE,128)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_1_V0 = SE_out_bubble_out_stall_entry_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_1_backStall = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_stall_out | ~ (SE_out_bubble_out_stall_entry_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_1_wireValid = bubble_out_stall_entry_1_reg_valid_out;

    // bubble_out_stall_entry_1_reg(STALLFIFO,135)
    assign bubble_out_stall_entry_1_reg_valid_in = SE_stall_entry_V0;
    assign bubble_out_stall_entry_1_reg_stall_in = SE_out_bubble_out_stall_entry_1_backStall;
    assign bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_1_reg_valid_in[0];
    assign bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_1_reg_stall_in[0];
    assign bubble_out_stall_entry_1_reg_valid_out[0] = bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_stall_out[0] = bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(5),
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

    // SE_stall_entry(STALLENABLE,91)
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
    assign SE_stall_entry_consumed1 = (~ (SE_redist2_stall_entry_o7_4_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
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

    // i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x(BLACKBOX,44)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@4
    // out out_c0_exit100_0_tpl@4
    // out out_c0_exit100_1_tpl@4
    conv2d1x1_i_sfc_s_c0_in_for_cond_cleanup00000_enter97_conv2d1x12 thei_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x (
        .in_i_stall(SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_backStall),
        .in_i_valid(SE_stall_entry_V2),
        .in_c0_eni196_0_tpl(GND_q),
        .in_c0_eni196_1_tpl(bubble_select_stall_entry_g),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_out_o_valid),
        .out_c0_exit100_0_tpl(),
        .out_c0_exit100_1_tpl(i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_out_c0_exit100_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x(BITJOIN,78)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_out_c0_exit100_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x(BITSELECT,79)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_q[31:0]);

    // SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10(STALLENABLE,88)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_backStall = i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_and0 = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_and1 = i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_and0;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_wireValid = SE_redist2_stall_entry_o7_4_3_V0 & SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_and1;

    // SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17(STALLENABLE,86)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_V0 = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_and0 = i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_wireValid = SE_coalesced_delay_0_5_V0 & SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_and0;

    // redist2_stall_entry_o7_4_0(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_stall_entry_o7_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_stall_entry_o7_4_0_backEN == 1'b1)
        begin
            redist2_stall_entry_o7_4_0_q <= $unsigned(bubble_select_stall_entry_e);
        end
    end

    // redist2_stall_entry_o7_4_1(REG,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_stall_entry_o7_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_stall_entry_o7_4_1_backEN == 1'b1)
        begin
            redist2_stall_entry_o7_4_1_q <= $unsigned(redist2_stall_entry_o7_4_0_q);
        end
    end

    // redist2_stall_entry_o7_4_2(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_stall_entry_o7_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_stall_entry_o7_4_2_backEN == 1'b1)
        begin
            redist2_stall_entry_o7_4_2_q <= $unsigned(redist2_stall_entry_o7_4_1_q);
        end
    end

    // redist2_stall_entry_o7_4_3(REG,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_stall_entry_o7_4_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_stall_entry_o7_4_3_backEN == 1'b1)
        begin
            redist2_stall_entry_o7_4_3_q <= $unsigned(redist2_stall_entry_o7_4_2_q);
        end
    end

    // i_idxprom25_conv2d1x15_vt_const_63(CONSTANT,13)
    assign i_idxprom25_conv2d1x15_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_add24_conv2d1x14(ADD,8)@0
    assign i_add24_conv2d1x14_a = {1'b0, bubble_select_stall_entry_d};
    assign i_add24_conv2d1x14_b = {1'b0, bubble_select_stall_entry_f};
    assign i_add24_conv2d1x14_o = $unsigned(i_add24_conv2d1x14_a) + $unsigned(i_add24_conv2d1x14_b);
    assign i_add24_conv2d1x14_q = i_add24_conv2d1x14_o[32:0];

    // bgTrunc_i_add24_conv2d1x14_sel_x(BITSELECT,34)@0
    assign bgTrunc_i_add24_conv2d1x14_sel_x_b = i_add24_conv2d1x14_q[31:0];

    // i_idxprom25_conv2d1x15_sel_x(BITSELECT,43)@0
    assign i_idxprom25_conv2d1x15_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add24_conv2d1x14_sel_x_b[31:0]};

    // i_idxprom25_conv2d1x15_vt_select_31(BITSELECT,15)@0
    assign i_idxprom25_conv2d1x15_vt_select_31_b = i_idxprom25_conv2d1x15_sel_x_b[31:0];

    // redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_0(REG,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_stall_entry_o7_4_0_backEN == 1'b1)
        begin
            redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_0_q <= $unsigned(i_idxprom25_conv2d1x15_vt_select_31_b);
        end
    end

    // redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_1(REG,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_stall_entry_o7_4_1_backEN == 1'b1)
        begin
            redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_1_q <= $unsigned(redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_0_q);
        end
    end

    // redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_2(REG,60)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_stall_entry_o7_4_2_backEN == 1'b1)
        begin
            redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_2_q <= $unsigned(redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_1_q);
        end
    end

    // redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_3(REG,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_stall_entry_o7_4_3_backEN == 1'b1)
        begin
            redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_3_q <= $unsigned(redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_2_q);
        end
    end

    // i_idxprom25_conv2d1x15_vt_join(BITJOIN,14)@4
    assign i_idxprom25_conv2d1x15_vt_join_q = {i_idxprom25_conv2d1x15_vt_const_63_q, redist3_i_idxprom25_conv2d1x15_vt_select_31_b_4_3_q};

    // i_arrayidx262_conv2d1x10_narrow_x(BITSELECT,39)@4
    assign i_arrayidx262_conv2d1x10_narrow_x_b = i_idxprom25_conv2d1x15_vt_join_q[61:0];

    // i_arrayidx262_conv2d1x10_shift_join_x(BITJOIN,40)@4
    assign i_arrayidx262_conv2d1x10_shift_join_x_q = {i_arrayidx262_conv2d1x10_narrow_x_b, i_arrayidx262_conv2d1x16_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10(BITJOIN,70)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_q = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10(BITSELECT,71)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_select_63(BITSELECT,20)@4
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_const_9(CONSTANT,18)
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_join(BITJOIN,19)@4
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_const_9_q};

    // i_arrayidx262_conv2d1x10_add_x(ADD,37)@4
    assign i_arrayidx262_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_join_q};
    assign i_arrayidx262_conv2d1x10_add_x_b = {1'b0, i_arrayidx262_conv2d1x10_shift_join_x_q};
    assign i_arrayidx262_conv2d1x10_add_x_o = $unsigned(i_arrayidx262_conv2d1x10_add_x_a) + $unsigned(i_arrayidx262_conv2d1x10_add_x_b);
    assign i_arrayidx262_conv2d1x10_add_x_q = i_arrayidx262_conv2d1x10_add_x_o[64:0];

    // i_arrayidx262_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,42)@4
    assign i_arrayidx262_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx262_conv2d1x10_add_x_q[63:0];

    // i_arrayidx262_conv2d1x16_vt_select_63(BITSELECT,11)@4
    assign i_arrayidx262_conv2d1x16_vt_select_63_b = i_arrayidx262_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx262_conv2d1x16_vt_const_1(CONSTANT,9)
    assign i_arrayidx262_conv2d1x16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx262_conv2d1x16_vt_join(BITJOIN,10)@4
    assign i_arrayidx262_conv2d1x16_vt_join_q = {i_arrayidx262_conv2d1x16_vt_select_63_b, i_arrayidx262_conv2d1x16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17(BLACKBOX,16)@4
    // in in_i_stall@20000000
    // out out_lsu_unnamed_conv2d1x110_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_unnamed_conv2d1x110_conv2d1x1_avm_address@20000000
    // out out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount@20000000
    // out out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable@20000000
    // out out_unnamed_conv2d1x110_conv2d1x1_avm_enable@20000000
    // out out_unnamed_conv2d1x110_conv2d1x1_avm_read@20000000
    // out out_unnamed_conv2d1x110_conv2d1x1_avm_write@20000000
    // out out_unnamed_conv2d1x110_conv2d1x1_avm_writedata@20000000
    conv2d1x1_i_llvm_fpga_mem_unnamed_10_conv2d1x10 thei_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx262_conv2d1x16_vt_join_q),
        .in_i_predicate(redist2_stall_entry_o7_4_3_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter97_conv2d1x12_aunroll_x_b),
        .in_unnamed_conv2d1x110_conv2d1x1_avm_readdata(in_unnamed_conv2d1x110_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x110_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x110_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x110_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x110_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x110_conv2d1x1_avm_writeack(in_unnamed_conv2d1x110_conv2d1x1_avm_writeack),
        .out_lsu_unnamed_conv2d1x110_o_active(i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_lsu_unnamed_conv2d1x110_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_o_valid),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_address(i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_enable(i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_read(i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_write(i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_writedata(i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_address = i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_address;
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_enable = i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_enable;
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_read = i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_read;
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_write = i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_write;
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_writedata = i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_writedata;
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable;
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount;

    // sync_out(GPOUT,32)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,35)
    assign out_lsu_unnamed_conv2d1x110_o_active = i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_out_lsu_unnamed_conv2d1x110_o_active;

    // coalesced_delay_0_5(REG,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_coalesced_delay_0_5_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,53)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_5_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_5_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,36)@6
    assign out_c0_exe101515 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe111526 = sel_for_coalesced_delay_0_c;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x110_conv2d1x17_V0;

endmodule
