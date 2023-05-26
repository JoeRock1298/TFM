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
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B5_stall_region (
    input wire [511:0] in_unnamed_conv2d1x112_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x112_conv2d1x1_avm_writeack,
    input wire [0:0] in_unnamed_conv2d1x112_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x112_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_unnamed_conv2d1x112_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x112_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x112_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x112_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x112_conv2d1x1_avm_writedata,
    output wire [63:0] out_unnamed_conv2d1x112_conv2d1x1_avm_byteenable,
    output wire [4:0] out_unnamed_conv2d1x112_conv2d1x1_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe111692,
    input wire [0:0] in_c0_exe121703,
    input wire [0:0] in_c0_exe131715,
    input wire [0:0] in_c0_exe141726,
    input wire [31:0] in_c0_exe31611,
    input wire [31:0] in_c1_exe17,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_conv2d1x112_o_active,
    output wire [0:0] out_c0_exe131715,
    output wire [0:0] out_c0_exe141726,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_idxprom52_conv2d1x10_vt_const_63_q;
    wire [63:0] i_idxprom52_conv2d1x10_vt_join_q;
    wire [31:0] i_idxprom52_conv2d1x10_vt_select_31_b;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_lsu_unnamed_conv2d1x112_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_writedata;
    wire [64:0] i_arrayidx53_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx53_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx53_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx53_conv2d1x10_add_x_q;
    wire [1:0] i_arrayidx53_conv2d1x10_c_i2_01_x_q;
    wire [61:0] i_arrayidx53_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx53_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx53_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom52_conv2d1x10_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_out_c0_exit117_1_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [64:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    reg [1:0] coalesced_delay_0_0_q;
    reg [1:0] coalesced_delay_0_1_q;
    reg [1:0] coalesced_delay_0_2_q;
    reg [1:0] coalesced_delay_0_3_q;
    reg [1:0] coalesced_delay_0_4_q;
    reg [1:0] coalesced_delay_0_5_q;
    reg [64:0] coalesced_delay_1_0_q;
    reg [64:0] coalesced_delay_1_1_q;
    reg [64:0] coalesced_delay_1_2_q;
    reg [64:0] coalesced_delay_1_3_q;
    wire [130:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_V0;
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
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    reg [0:0] SE_coalesced_delay_0_3_R_v_0;
    reg [0:0] SE_coalesced_delay_0_3_R_v_1;
    wire [0:0] SE_coalesced_delay_0_3_v_s_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_3_backEN;
    wire [0:0] SE_coalesced_delay_0_3_or0;
    wire [0:0] SE_coalesced_delay_0_3_backStall;
    wire [0:0] SE_coalesced_delay_0_3_V0;
    wire [0:0] SE_coalesced_delay_0_3_V1;
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
    wire [0:0] SR_SE_coalesced_delay_0_5_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_5_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_5_V;
    wire [1:0] SR_SE_coalesced_delay_0_5_D0;


    // bubble_join_stall_entry(BITJOIN,55)
    assign bubble_join_stall_entry_q = {in_c1_exe17, in_c0_exe31611, in_c0_exe141726, in_c0_exe131715, in_c0_exe121703, in_c0_exe111692};

    // bubble_select_stall_entry(BITSELECT,56)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[98:67]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[130:99]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // join_for_coalesced_delay_0(BITJOIN,38)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_e, bubble_select_stall_entry_d};

    // coalesced_delay_0_0(REG,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // coalesced_delay_0_4(REG,47)
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

    // SE_coalesced_delay_0_5(STALLENABLE,83)
    // Valid signal propagation
    assign SE_coalesced_delay_0_5_V0 = SE_coalesced_delay_0_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_5_s_tv_0 = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_backStall & SE_coalesced_delay_0_5_R_v_0;
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

    // SR_SE_coalesced_delay_0_5(STALLREG,100)
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

    // SE_coalesced_delay_0_4(STALLENABLE,82)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SR_SE_coalesced_delay_0_5_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SE_coalesced_delay_0_3_V0;
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

    // SE_coalesced_delay_0_3(STALLENABLE,81)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    assign SE_coalesced_delay_0_3_V1 = SE_coalesced_delay_0_3_R_v_1;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
    assign SE_coalesced_delay_0_3_s_tv_1 = SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_backStall & SE_coalesced_delay_0_3_R_v_1;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_or0 = SE_coalesced_delay_0_3_s_tv_0;
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_1 | SE_coalesced_delay_0_3_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SE_coalesced_delay_0_2_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_3_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_3_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_R_v_0 & SE_coalesced_delay_0_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_v_s_0;
            end

            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_1 <= SE_coalesced_delay_0_3_R_v_1 & SE_coalesced_delay_0_3_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_1 <= SE_coalesced_delay_0_3_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_2(STALLENABLE,80)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SE_coalesced_delay_0_1_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_1(STALLENABLE,79)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_coalesced_delay_0_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_0(STALLENABLE,78)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,65)
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
    assign SE_stall_entry_consumed0 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x(BLACKBOX,31)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@4
    // out out_c0_exit117_0_tpl@4
    // out out_c0_exit117_1_tpl@4
    conv2d1x1_i_sfc_s_c0_in_for_cond_cleanup0000_enter114_conv2d1x12 thei_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_c0_eni1113_0_tpl(GND_q),
        .in_c0_eni1113_1_tpl(bubble_select_stall_entry_g),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_out_o_valid),
        .out_c0_exit117_0_tpl(),
        .out_c0_exit117_1_tpl(i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_out_c0_exit117_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x(BITJOIN,59)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_out_c0_exit117_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x(BITSELECT,60)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_q[31:0]);

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x(STALLENABLE,73)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_backStall = i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_and0 = i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_wireValid = SE_coalesced_delay_0_3_V1 & SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15(STALLENABLE,64)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_V0 = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_and0 = i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_wireValid = SE_coalesced_delay_0_5_V0 & SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_and0;

    // i_idxprom52_conv2d1x10_vt_const_63(CONSTANT,8)
    assign i_idxprom52_conv2d1x10_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_idxprom52_conv2d1x10_sel_x(BITSELECT,30)@0
    assign i_idxprom52_conv2d1x10_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_stall_entry_f[31:0]};

    // i_idxprom52_conv2d1x10_vt_select_31(BITSELECT,10)@0
    assign i_idxprom52_conv2d1x10_vt_select_31_b = i_idxprom52_conv2d1x10_sel_x_b[31:0];

    // i_idxprom52_conv2d1x10_vt_join(BITJOIN,9)@0
    assign i_idxprom52_conv2d1x10_vt_join_q = {i_idxprom52_conv2d1x10_vt_const_63_q, i_idxprom52_conv2d1x10_vt_select_31_b};

    // i_arrayidx53_conv2d1x10_narrow_x(BITSELECT,26)@0
    assign i_arrayidx53_conv2d1x10_narrow_x_b = i_idxprom52_conv2d1x10_vt_join_q[61:0];

    // i_arrayidx53_conv2d1x10_c_i2_01_x(CONSTANT,25)
    assign i_arrayidx53_conv2d1x10_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx53_conv2d1x10_shift_join_x(BITJOIN,27)@0
    assign i_arrayidx53_conv2d1x10_shift_join_x_q = {i_arrayidx53_conv2d1x10_narrow_x_b, i_arrayidx53_conv2d1x10_c_i2_01_x_q};

    // i_arrayidx53_conv2d1x10_add_x(ADD,24)@0
    assign i_arrayidx53_conv2d1x10_add_x_a = {1'b0, bubble_select_stall_entry_b};
    assign i_arrayidx53_conv2d1x10_add_x_b = {1'b0, i_arrayidx53_conv2d1x10_shift_join_x_q};
    assign i_arrayidx53_conv2d1x10_add_x_o = $unsigned(i_arrayidx53_conv2d1x10_add_x_a) + $unsigned(i_arrayidx53_conv2d1x10_add_x_b);
    assign i_arrayidx53_conv2d1x10_add_x_q = i_arrayidx53_conv2d1x10_add_x_o[64:0];

    // i_arrayidx53_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,29)@0
    assign i_arrayidx53_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx53_conv2d1x10_add_x_q[63:0];

    // join_for_coalesced_delay_1(BITJOIN,41)
    assign join_for_coalesced_delay_1_q = {bubble_select_stall_entry_c, i_arrayidx53_conv2d1x10_dupName_0_trunc_sel_x_b};

    // coalesced_delay_1_0(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(join_for_coalesced_delay_1_q);
        end
    end

    // coalesced_delay_1_1(REG,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_1_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_1_1_q <= $unsigned(coalesced_delay_1_0_q);
        end
    end

    // coalesced_delay_1_2(REG,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_2_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_1_2_q <= $unsigned(coalesced_delay_1_1_q);
        end
    end

    // coalesced_delay_1_3(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_3_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_1_3_q <= $unsigned(coalesced_delay_1_2_q);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,42)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_3_q[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_3_q[64:64]);

    // i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15(BLACKBOX,11)@4
    // in in_i_stall@20000000
    // out out_lsu_unnamed_conv2d1x112_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_unnamed_conv2d1x112_conv2d1x1_avm_address@20000000
    // out out_unnamed_conv2d1x112_conv2d1x1_avm_burstcount@20000000
    // out out_unnamed_conv2d1x112_conv2d1x1_avm_byteenable@20000000
    // out out_unnamed_conv2d1x112_conv2d1x1_avm_enable@20000000
    // out out_unnamed_conv2d1x112_conv2d1x1_avm_read@20000000
    // out out_unnamed_conv2d1x112_conv2d1x1_avm_write@20000000
    // out out_unnamed_conv2d1x112_conv2d1x1_avm_writedata@20000000
    conv2d1x1_i_llvm_fpga_mem_unnamed_12_conv2d1x10 thei_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_1_b),
        .in_i_predicate(sel_for_coalesced_delay_1_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_cond_cleanup7_conv2d1x1s_c0_enter114_conv2d1x12_aunroll_x_b),
        .in_unnamed_conv2d1x112_conv2d1x1_avm_readdata(in_unnamed_conv2d1x112_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x112_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x112_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x112_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x112_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x112_conv2d1x1_avm_writeack(in_unnamed_conv2d1x112_conv2d1x1_avm_writeack),
        .out_lsu_unnamed_conv2d1x112_o_active(i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_lsu_unnamed_conv2d1x112_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_o_valid),
        .out_unnamed_conv2d1x112_conv2d1x1_avm_address(i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x112_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x112_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x112_conv2d1x1_avm_enable(i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x112_conv2d1x1_avm_read(i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x112_conv2d1x1_avm_write(i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x112_conv2d1x1_avm_writedata(i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_conv2d1x112_conv2d1x1_avm_address = i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_address;
    assign out_unnamed_conv2d1x112_conv2d1x1_avm_enable = i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_enable;
    assign out_unnamed_conv2d1x112_conv2d1x1_avm_read = i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_read;
    assign out_unnamed_conv2d1x112_conv2d1x1_avm_write = i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_write;
    assign out_unnamed_conv2d1x112_conv2d1x1_avm_writedata = i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_writedata;
    assign out_unnamed_conv2d1x112_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_byteenable;
    assign out_unnamed_conv2d1x112_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_unnamed_conv2d1x112_conv2d1x1_avm_burstcount;

    // sync_out(GPOUT,20)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,22)
    assign out_lsu_unnamed_conv2d1x112_o_active = i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_out_lsu_unnamed_conv2d1x112_o_active;

    // coalesced_delay_0_5(REG,48)
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

    // sel_for_coalesced_delay_0(BITSELECT,39)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_5_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_5_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,23)@6
    assign out_c0_exe131715 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe141726 = sel_for_coalesced_delay_0_c;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x112_conv2d1x15_V0;

endmodule
