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

// SystemVerilog created from avgpool2d_i_sfc_logic_s_c0_in_for_cond_c00000_enter15_avgpool2d0
// SystemVerilog created on Mon Jun  5 12:30:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_i_sfc_logic_s_c0_in_for_cond_c00000_enter15_avgpool2d0 (
    output wire [0:0] out_c0_exi117_0_tpl,
    output wire [31:0] out_c0_exi117_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_avgpool2d0,
    input wire [0:0] in_c0_eni114_0_tpl,
    input wire [31:0] in_c0_eni114_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_1_690000e_025_q;
    wire [31:0] i_conv6_avgpool2d2_out_primWireOut;
    reg [0:0] redist1_sync_together8_aunroll_x_in_i_valid_15_q;
    wire redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_reset0;
    wire [31:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_ia;
    wire [3:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_aa;
    wire [3:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_ab;
    wire [31:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_iq;
    wire [31:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_q;
    wire [3:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_q;
    (* preserve *) reg [3:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_i;
    (* preserve *) reg redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_eq;
    reg [3:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_wraddr_q;
    wire [3:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_last_q;
    wire [0:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_cmpReg_q;
    wire [0:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_notEnable_q;
    wire [0:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_sticky_ena_q;
    wire [0:0] redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together8_aunroll_x_in_i_valid_15(DELAY,9)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together8_aunroll_x_in_i_valid_15 ( .xin(in_i_valid), .xout(redist1_sync_together8_aunroll_x_in_i_valid_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_float_1_690000e_025(FLOATCONSTANT,2)
    assign c_float_1_690000e_025_q = $unsigned(32'b01000011001010010000000000000000);

    // redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_notEnable(LOGICAL,16)
    assign redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_nor(LOGICAL,17)
    assign redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_nor_q = ~ (redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_notEnable_q | redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_sticky_ena_q);

    // redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_last(CONSTANT,13)
    assign redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_last_q = $unsigned(4'b0111);

    // redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_cmp(LOGICAL,14)
    assign redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_cmp_q = $unsigned(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_last_q == redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_cmpReg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_cmpReg_q <= $unsigned(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_cmp_q);
        end
    end

    // redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_sticky_ena(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_nor_q == 1'b1)
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_sticky_ena_q <= $unsigned(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_cmpReg_q);
        end
    end

    // redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_enaAnd(LOGICAL,19)
    assign redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_enaAnd_q = redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_sticky_ena_q & VCC_q;

    // redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt(COUNTER,11)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_i <= 4'd0;
            redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_i == 4'd7)
            begin
                redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_i <= $unsigned(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_i <= $unsigned(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_q = redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_i[3:0];

    // redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_wraddr(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_wraddr_q <= $unsigned(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_q);
        end
    end

    // redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem(DUALMEM,10)
    assign redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_ia = $unsigned(in_c0_eni114_1_tpl);
    assign redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_aa = redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_wraddr_q;
    assign redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_ab = redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_rdcnt_q;
    assign redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(9),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(9),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_dmem (
        .clocken1(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_aa),
        .data_a(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_ab),
        .q_b(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_q = redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_iq[31:0];

    // i_conv6_avgpool2d2(BLACKBOX,4)@10
    // out out_primWireOut@15
    avgpool2d_flt_i_sfc_logic_s_c0_in_for_co0000226123642i229742iyc5 thei_conv6_avgpool2d2 (
        .in_0(redist0_sync_together8_aunroll_x_in_c0_eni114_1_tpl_10_mem_q),
        .in_1(c_float_1_690000e_025_q),
        .out_primWireOut(i_conv6_avgpool2d2_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,6)@15
    assign out_c0_exi117_0_tpl = GND_q;
    assign out_c0_exi117_1_tpl = i_conv6_avgpool2d2_out_primWireOut;
    assign out_o_valid = redist1_sync_together8_aunroll_x_in_i_valid_15_q;
    assign out_unnamed_avgpool2d0 = GND_q;

endmodule
