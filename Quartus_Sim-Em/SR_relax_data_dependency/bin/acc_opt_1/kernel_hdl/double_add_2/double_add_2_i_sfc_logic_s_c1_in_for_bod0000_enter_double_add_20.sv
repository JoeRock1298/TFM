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

// SystemVerilog created from double_add_2_i_sfc_logic_s_c1_in_for_bod0000_enter_double_add_20
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_i_sfc_logic_s_c1_in_for_bod0000_enter_double_add_20 (
    input wire [63:0] in_unmaskedload1_double_add_2_avm_readdata,
    input wire [0:0] in_unmaskedload1_double_add_2_avm_writeack,
    input wire [0:0] in_unmaskedload1_double_add_2_avm_waitrequest,
    input wire [0:0] in_unmaskedload1_double_add_2_avm_readdatavalid,
    output wire [31:0] out_unmaskedload1_double_add_2_avm_address,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_enable,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_read,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_write,
    output wire [63:0] out_unmaskedload1_double_add_2_avm_writedata,
    output wire [7:0] out_unmaskedload1_double_add_2_avm_byteenable,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_memdep_3_double_add_2_avm_readdata,
    input wire [0:0] in_memdep_3_double_add_2_avm_writeack,
    input wire [0:0] in_memdep_3_double_add_2_avm_waitrequest,
    input wire [0:0] in_memdep_3_double_add_2_avm_readdatavalid,
    output wire [31:0] out_memdep_3_double_add_2_avm_address,
    output wire [0:0] out_memdep_3_double_add_2_avm_enable,
    output wire [0:0] out_memdep_3_double_add_2_avm_read,
    output wire [0:0] out_memdep_3_double_add_2_avm_write,
    output wire [63:0] out_memdep_3_double_add_2_avm_writedata,
    output wire [7:0] out_memdep_3_double_add_2_avm_byteenable,
    output wire [0:0] out_memdep_3_double_add_2_avm_burstcount,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_double_add_23,
    output wire [0:0] out_unnamed_double_add_25_0_tpl,
    input wire [0:0] in_c1_eni4_0_tpl,
    input wire [0:0] in_c1_eni4_1_tpl,
    input wire [63:0] in_c1_eni4_2_tpl,
    input wire [0:0] in_c1_eni4_3_tpl,
    input wire [0:0] in_c1_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_462970041693686988810_q;
    wire [63:0] c_i64_462970041693686998411_q;
    wire [63:0] i_add_double_add_24_out_primWireOut;
    wire [31:0] i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_writedata;
    wire [0:0] i_memdep_phi5_or_double_add_25_qi;
    reg [0:0] i_memdep_phi5_or_double_add_25_q;
    wire [31:0] i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_address;
    wire [0:0] i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_read;
    wire [0:0] i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_write;
    wire [63:0] i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_writedata;
    wire [63:0] i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_o_readdata_0_tpl;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [0:0] redist1_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q;
    reg [0:0] redist3_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1_q;
    reg [0:0] redist4_sync_together13_aunroll_x_in_c1_eni4_4_tpl_16_q;
    reg [0:0] redist5_sync_together13_aunroll_x_in_i_valid_15_q;
    reg [0:0] redist6_i_memdep_phi5_or_double_add_25_q_15_q;
    reg [63:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_outputreg0_q;
    wire redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_reset0;
    wire [63:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_ia;
    wire [1:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_aa;
    wire [1:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_ab;
    wire [63:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_iq;
    wire [63:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_q;
    wire [1:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_rdcnt_i;
    reg [1:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_wraddr_q;
    wire [2:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_last_q;
    wire [2:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_cmp_b;
    wire [0:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_cmpReg_q;
    wire [0:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_notEnable_q;
    wire [0:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_sticky_ena_q;
    wire [0:0] redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,19)@8 + 1
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

    // redist1_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1(DELAY,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q <= $unsigned(in_c1_eni4_1_tpl);
        end
    end

    // c_i64_462970041693686988810(CONSTANT,4)
    assign c_i64_462970041693686988810_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x(BLACKBOX,15)@9
    // in in_i_stall@20000000
    // out out_o_stall@13
    // out out_o_valid@14
    // out out_unmaskedload1_double_add_2_avm_address@20000000
    // out out_unmaskedload1_double_add_2_avm_burstcount@20000000
    // out out_unmaskedload1_double_add_2_avm_byteenable@20000000
    // out out_unmaskedload1_double_add_2_avm_enable@20000000
    // out out_unmaskedload1_double_add_2_avm_read@20000000
    // out out_unmaskedload1_double_add_2_avm_write@20000000
    // out out_unmaskedload1_double_add_2_avm_writedata@20000000
    // out out_o_readdata_0_tpl@14
    double_add_2_i_llvm_fpga_mem_unmaskedload1_0 thei_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(c_i64_462970041693686988810_q),
        .in_i_dependence(redist1_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_unmaskedload1_double_add_2_avm_readdata(in_unmaskedload1_double_add_2_avm_readdata),
        .in_unmaskedload1_double_add_2_avm_readdatavalid(in_unmaskedload1_double_add_2_avm_readdatavalid),
        .in_unmaskedload1_double_add_2_avm_waitrequest(in_unmaskedload1_double_add_2_avm_waitrequest),
        .in_unmaskedload1_double_add_2_avm_writeack(in_unmaskedload1_double_add_2_avm_writeack),
        .out_o_stall(),
        .out_o_valid(),
        .out_unmaskedload1_double_add_2_avm_address(i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_address),
        .out_unmaskedload1_double_add_2_avm_burstcount(i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_burstcount),
        .out_unmaskedload1_double_add_2_avm_byteenable(i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_byteenable),
        .out_unmaskedload1_double_add_2_avm_enable(i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_enable),
        .out_unmaskedload1_double_add_2_avm_read(i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_read),
        .out_unmaskedload1_double_add_2_avm_write(i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_write),
        .out_unmaskedload1_double_add_2_avm_writedata(i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_writedata),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_o_readdata_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unmaskedload1_double_add_2_avm_address = i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_address;
    assign out_unmaskedload1_double_add_2_avm_enable = i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_enable;
    assign out_unmaskedload1_double_add_2_avm_read = i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_read;
    assign out_unmaskedload1_double_add_2_avm_write = i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_write;
    assign out_unmaskedload1_double_add_2_avm_writedata = i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_writedata;
    assign out_unmaskedload1_double_add_2_avm_byteenable = i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_byteenable;
    assign out_unmaskedload1_double_add_2_avm_burstcount = i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_unmaskedload1_double_add_2_avm_burstcount;

    // redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_notEnable(LOGICAL,35)
    assign redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_nor(LOGICAL,36)
    assign redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_nor_q = ~ (redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_notEnable_q | redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_sticky_ena_q);

    // redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_last(CONSTANT,32)
    assign redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_last_q = $unsigned(3'b010);

    // redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_cmp(LOGICAL,33)
    assign redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_cmp_b = {1'b0, redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_rdcnt_q};
    assign redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_cmp_q = $unsigned(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_last_q == redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_cmp_b ? 1'b1 : 1'b0);

    // redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_cmpReg(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_cmpReg_q <= $unsigned(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_cmp_q);
        end
    end

    // redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_sticky_ena(REG,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_nor_q == 1'b1)
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_sticky_ena_q <= $unsigned(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_cmpReg_q);
        end
    end

    // redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_enaAnd(LOGICAL,38)
    assign redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_enaAnd_q = redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_sticky_ena_q & VCC_q;

    // redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_rdcnt(COUNTER,30)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_rdcnt_i <= $unsigned(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_rdcnt_q = redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_rdcnt_i[1:0];

    // redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_wraddr(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_wraddr_q <= $unsigned(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_rdcnt_q);
        end
    end

    // redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem(DUALMEM,29)
    assign redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_ia = $unsigned(in_c1_eni4_2_tpl);
    assign redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_aa = redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_wraddr_q;
    assign redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_ab = redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_rdcnt_q;
    assign redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_dmem (
        .clocken1(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_aa),
        .data_a(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_ab),
        .q_b(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_iq),
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
    assign redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_q = redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_iq[63:0];

    // redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_outputreg0(DELAY,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_outputreg0_q <= '0;
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_outputreg0_q <= $unsigned(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_mem_q);
        end
    end

    // i_add_double_add_24(BLACKBOX,8)@14
    // out out_primWireOut@24
    double_add_2_flt_i_sfc_logic_s_c1_in_for0000cdd6oq3cd06o20cp0doz thei_add_double_add_24 (
        .in_0(i_llvm_fpga_mem_unmaskedload1_double_add_22_vunroll_x_out_o_readdata_0_tpl),
        .in_1(redist2_sync_together13_aunroll_x_in_c1_eni4_2_tpl_6_outputreg0_q),
        .out_primWireOut(i_add_double_add_24_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together13_aunroll_x_in_i_valid_15(DELAY,26)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_sync_together13_aunroll_x_in_i_valid_15 ( .xin(in_i_valid), .xout(redist5_sync_together13_aunroll_x_in_i_valid_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg2(REG,20)@23 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist5_sync_together13_aunroll_x_in_i_valid_15_q);
        end
    end

    // redist4_sync_together13_aunroll_x_in_c1_eni4_4_tpl_16(DELAY,25)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_sync_together13_aunroll_x_in_c1_eni4_4_tpl_16 ( .xin(in_c1_eni4_4_tpl), .xout(redist4_sync_together13_aunroll_x_in_c1_eni4_4_tpl_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1(DELAY,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1_q <= $unsigned(in_c1_eni4_3_tpl);
        end
    end

    // i_memdep_phi5_or_double_add_25(LOGICAL,10)@9 + 1
    assign i_memdep_phi5_or_double_add_25_qi = redist3_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1_q | redist1_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi5_or_double_add_25_delay ( .xin(i_memdep_phi5_or_double_add_25_qi), .xout(i_memdep_phi5_or_double_add_25_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_i_memdep_phi5_or_double_add_25_q_15(DELAY,27)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_i_memdep_phi5_or_double_add_25_q_15 ( .xin(i_memdep_phi5_or_double_add_25_q), .xout(redist6_i_memdep_phi5_or_double_add_25_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_462970041693686998411(CONSTANT,5)
    assign c_i64_462970041693686998411_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000001100000);

    // i_llvm_fpga_mem_memdep_3_double_add_26(BLACKBOX,9)@24
    // out out_memdep_3_double_add_2_avm_address@20000000
    // out out_memdep_3_double_add_2_avm_burstcount@20000000
    // out out_memdep_3_double_add_2_avm_byteenable@20000000
    // out out_memdep_3_double_add_2_avm_enable@20000000
    // out out_memdep_3_double_add_2_avm_read@20000000
    // out out_memdep_3_double_add_2_avm_write@20000000
    // out out_memdep_3_double_add_2_avm_writedata@20000000
    // out out_o_stall@25
    // out out_o_valid@25
    // out out_o_writeack@25
    double_add_2_i_llvm_fpga_mem_memdep_3_0 thei_llvm_fpga_mem_memdep_3_double_add_26 (
        .in_flush(in_flush),
        .in_i_address(c_i64_462970041693686998411_q),
        .in_i_dependence(redist6_i_memdep_phi5_or_double_add_25_q_15_q),
        .in_i_predicate(redist4_sync_together13_aunroll_x_in_c1_eni4_4_tpl_16_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_i_writedata(i_add_double_add_24_out_primWireOut),
        .in_memdep_3_double_add_2_avm_readdata(in_memdep_3_double_add_2_avm_readdata),
        .in_memdep_3_double_add_2_avm_readdatavalid(in_memdep_3_double_add_2_avm_readdatavalid),
        .in_memdep_3_double_add_2_avm_waitrequest(in_memdep_3_double_add_2_avm_waitrequest),
        .in_memdep_3_double_add_2_avm_writeack(in_memdep_3_double_add_2_avm_writeack),
        .out_memdep_3_double_add_2_avm_address(i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_address),
        .out_memdep_3_double_add_2_avm_burstcount(i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_burstcount),
        .out_memdep_3_double_add_2_avm_byteenable(i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_byteenable),
        .out_memdep_3_double_add_2_avm_enable(i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_enable),
        .out_memdep_3_double_add_2_avm_read(i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_read),
        .out_memdep_3_double_add_2_avm_write(i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_write),
        .out_memdep_3_double_add_2_avm_writedata(i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,14)
    assign out_memdep_3_double_add_2_avm_address = i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_address;
    assign out_memdep_3_double_add_2_avm_enable = i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_enable;
    assign out_memdep_3_double_add_2_avm_read = i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_read;
    assign out_memdep_3_double_add_2_avm_write = i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_write;
    assign out_memdep_3_double_add_2_avm_writedata = i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_writedata;
    assign out_memdep_3_double_add_2_avm_byteenable = i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_byteenable;
    assign out_memdep_3_double_add_2_avm_burstcount = i_llvm_fpga_mem_memdep_3_double_add_26_out_memdep_3_double_add_2_avm_burstcount;

    // valid_fanout_reg0(REG,18)@23 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together13_aunroll_x_in_i_valid_15_q);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,16)@25
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_double_add_23 = GND_q;
    assign out_unnamed_double_add_25_0_tpl = GND_q;

endmodule
