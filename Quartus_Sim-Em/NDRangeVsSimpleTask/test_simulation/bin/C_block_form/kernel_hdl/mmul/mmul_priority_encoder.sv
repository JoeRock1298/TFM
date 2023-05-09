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

// SystemVerilog created from mmul_priority_encoder
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_priority_encoder (
    input wire [0:0] in_i_stall,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [31:0] in_workgroup_size,
    output wire [0:0] out_o_select,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    reg [0:0] choose_0_q;
    wire [0:0] choose_0_mux_s;
    reg [0:0] choose_0_mux_q;
    reg [0:0] choose_1_q;
    wire [0:0] choose_1_mux_s;
    reg [0:0] choose_1_mux_q;
    wire [0:0] choose_based_on_valids_q;
    wire [6:0] const_wide_0_q;
    wire [0:0] counter_mux_s;
    reg [6:0] counter_mux_q;
    wire [0:0] enable_regs_q;
    wire [7:0] incrementor_a;
    wire [7:0] incrementor_b;
    logic [7:0] incrementor_o;
    wire [7:0] incrementor_q;
    wire [0:0] is_merge_data_to_local_regs_valid_s;
    reg [0:0] is_merge_data_to_local_regs_valid_q;
    wire [0:0] is_wg_through_q;
    wire [0:0] merge_block_selector_q;
    wire [0:0] not_choose_0_q;
    wire [0:0] not_merge_block_selector_q;
    wire [0:0] not_stall_in_q;
    wire [6:0] trunc_add_in;
    wire [6:0] trunc_add_q;
    wire [6:0] trunc_sub_in;
    wire [6:0] trunc_sub_q;
    wire [6:0] trunc_wgs_in;
    wire [6:0] trunc_wgs_q;
    wire [7:0] wg_limit_a;
    wire [7:0] wg_limit_b;
    logic [7:0] wg_limit_o;
    wire [7:0] wg_limit_q;
    reg [6:0] workgroup_counter_q;
    reg [6:0] workgroup_size_minus_1_q;


    // not_stall_in(LOGICAL,22)
    assign not_stall_in_q = ~ (in_i_stall);

    // is_merge_data_to_local_regs_valid(MUX,17)
    assign is_merge_data_to_local_regs_valid_s = merge_block_selector_q;
    always @(is_merge_data_to_local_regs_valid_s or in_valid_in_0 or in_valid_in_1)
    begin
        unique case (is_merge_data_to_local_regs_valid_s)
            1'b0 : is_merge_data_to_local_regs_valid_q = in_valid_in_0;
            1'b1 : is_merge_data_to_local_regs_valid_q = in_valid_in_1;
            default : is_merge_data_to_local_regs_valid_q = 1'b0;
        endcase
    end

    // enable_regs(LOGICAL,11)
    assign enable_regs_q = is_merge_data_to_local_regs_valid_q & not_stall_in_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_merge_block_selector(LOGICAL,21)
    assign not_merge_block_selector_q = ~ (merge_block_selector_q);

    // trunc_wgs(ROUND,27)
    assign trunc_wgs_in = in_workgroup_size[6:0];
    assign trunc_wgs_q = trunc_wgs_in[6:0];

    // wg_limit(SUB,28)
    assign wg_limit_a = {1'b0, trunc_wgs_q};
    assign wg_limit_b = {7'b0000000, VCC_q};
    assign wg_limit_o = $unsigned(wg_limit_a) - $unsigned(wg_limit_b);
    assign wg_limit_q = wg_limit_o[7:0];

    // trunc_sub(ROUND,26)
    assign trunc_sub_in = $unsigned(wg_limit_q[6:0]);
    assign trunc_sub_q = trunc_sub_in[6:0];

    // workgroup_size_minus_1(REG,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            workgroup_size_minus_1_q <= $unsigned(7'b0000000);
        end
        else
        begin
            workgroup_size_minus_1_q <= trunc_sub_q;
        end
    end

    // const_wide_0(CONSTANT,9)
    assign const_wide_0_q = $unsigned(7'b0000000);

    // incrementor(ADD,12)
    assign incrementor_a = {1'b0, workgroup_counter_q};
    assign incrementor_b = {7'b0000000, VCC_q};
    assign incrementor_o = $unsigned(incrementor_a) + $unsigned(incrementor_b);
    assign incrementor_q = incrementor_o[7:0];

    // trunc_add(ROUND,25)
    assign trunc_add_in = incrementor_q[6:0];
    assign trunc_add_q = trunc_add_in[6:0];

    // counter_mux(MUX,10)
    assign counter_mux_s = is_wg_through_q;
    always @(counter_mux_s or trunc_add_q or const_wide_0_q)
    begin
        unique case (counter_mux_s)
            1'b0 : counter_mux_q = trunc_add_q;
            1'b1 : counter_mux_q = const_wide_0_q;
            default : counter_mux_q = 7'b0;
        endcase
    end

    // workgroup_counter(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            workgroup_counter_q <= $unsigned(7'b0000000);
        end
        else if (enable_regs_q == 1'b1)
        begin
            workgroup_counter_q <= counter_mux_q;
        end
    end

    // is_wg_through(LOGICAL,18)
    assign is_wg_through_q = $unsigned(workgroup_counter_q == workgroup_size_minus_1_q ? 1'b1 : 1'b0);

    // choose_0_mux(MUX,3)
    assign choose_0_mux_s = is_wg_through_q;
    always @(choose_0_mux_s or not_merge_block_selector_q or GND_q)
    begin
        unique case (choose_0_mux_s)
            1'b0 : choose_0_mux_q = not_merge_block_selector_q;
            1'b1 : choose_0_mux_q = GND_q;
            default : choose_0_mux_q = 1'b0;
        endcase
    end

    // choose_0(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            choose_0_q <= $unsigned(1'b0);
        end
        else if (enable_regs_q == 1'b1)
        begin
            choose_0_q <= choose_0_mux_q;
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_choose_0(LOGICAL,20)
    assign not_choose_0_q = ~ (choose_0_q);

    // choose_based_on_valids(LOGICAL,6)
    assign choose_based_on_valids_q = not_choose_0_q & in_valid_in_1;

    // choose_1_mux(MUX,5)
    assign choose_1_mux_s = is_wg_through_q;
    always @(choose_1_mux_s or merge_block_selector_q or GND_q)
    begin
        unique case (choose_1_mux_s)
            1'b0 : choose_1_mux_q = merge_block_selector_q;
            1'b1 : choose_1_mux_q = GND_q;
            default : choose_1_mux_q = 1'b0;
        endcase
    end

    // choose_1(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            choose_1_q <= $unsigned(1'b0);
        end
        else if (enable_regs_q == 1'b1)
        begin
            choose_1_q <= choose_1_mux_q;
        end
    end

    // merge_block_selector(LOGICAL,19)
    assign merge_block_selector_q = choose_1_q | choose_based_on_valids_q;

    // out_o_select(GPOUT,23)
    assign out_o_select = merge_block_selector_q;

    // out_o_valid(GPOUT,24)
    assign out_o_valid = is_merge_data_to_local_regs_valid_q;

endmodule
