// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module gaussian_filter_accel_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        cf_address0,
        cf_ce0,
        cf_we0,
        cf_d0,
        cf_q0,
        sum,
        weights_1_out,
        weights_1_out_ap_vld,
        weights_out,
        weights_out_ap_vld,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n,
        grp_fu_289_p_din0,
        grp_fu_289_p_din1,
        grp_fu_289_p_opcode,
        grp_fu_289_p_dout0,
        grp_fu_289_p_ce,
        grp_fu_123_p_din0,
        grp_fu_123_p_din1,
        grp_fu_123_p_dout0,
        grp_fu_123_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 28'd1;
parameter    ap_ST_fsm_pp0_stage1 = 28'd2;
parameter    ap_ST_fsm_pp0_stage2 = 28'd4;
parameter    ap_ST_fsm_pp0_stage3 = 28'd8;
parameter    ap_ST_fsm_pp0_stage4 = 28'd16;
parameter    ap_ST_fsm_pp0_stage5 = 28'd32;
parameter    ap_ST_fsm_pp0_stage6 = 28'd64;
parameter    ap_ST_fsm_pp0_stage7 = 28'd128;
parameter    ap_ST_fsm_pp0_stage8 = 28'd256;
parameter    ap_ST_fsm_pp0_stage9 = 28'd512;
parameter    ap_ST_fsm_pp0_stage10 = 28'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 28'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 28'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 28'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 28'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 28'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 28'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 28'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 28'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 28'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 28'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 28'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 28'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 28'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 28'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 28'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 28'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 28'd134217728;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] cf_address0;
output   cf_ce0;
output   cf_we0;
output  [31:0] cf_d0;
input  [31:0] cf_q0;
input  [31:0] sum;
output  [7:0] weights_1_out;
output   weights_1_out_ap_vld;
output  [7:0] weights_out;
output   weights_out_ap_vld;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;
output  [31:0] grp_fu_289_p_din0;
output  [31:0] grp_fu_289_p_din1;
output  [1:0] grp_fu_289_p_opcode;
input  [31:0] grp_fu_289_p_dout0;
output   grp_fu_289_p_ce;
output  [31:0] grp_fu_123_p_din0;
output  [31:0] grp_fu_123_p_din1;
input  [31:0] grp_fu_123_p_dout0;
output   grp_fu_123_p_ce;

reg ap_idle;
reg[1:0] cf_address0;
reg cf_ce0;
reg cf_we0;
reg weights_1_out_ap_vld;
reg weights_out_ap_vld;

(* fsm_encoding = "none" *) reg   [27:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_state10_pp0_stage9_iter0;
wire    ap_block_state38_pp0_stage9_iter1;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] icmp_ln58_reg_364;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_state28_pp0_stage27_iter0;
wire    ap_block_pp0_stage27_subdone;
reg   [31:0] reg_143;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_state15_pp0_stage14_iter0;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_state9_pp0_stage8_iter0;
wire    ap_block_state37_pp0_stage8_iter1;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state29_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] i_1_reg_360;
wire   [0:0] icmp_ln58_fu_161_p2;
reg   [1:0] cf_addr_reg_368;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state30_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] mul19_i_reg_378;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_state5_pp0_stage4_iter0;
wire    ap_block_state33_pp0_stage4_iter1;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] mul24_i_reg_383;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] grp_fu_135_p1;
reg   [63:0] conv26_i_reg_393;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_state17_pp0_stage16_iter0;
wire    ap_block_pp0_stage16_11001;
reg   [10:0] xs_exp_V_reg_398;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_state25_pp0_stage24_iter0;
wire    ap_block_pp0_stage24_11001;
wire   [51:0] p_Result_s_fu_201_p1;
reg   [51:0] p_Result_s_reg_404;
wire   [7:0] weights_3_fu_294_p3;
reg   [7:0] weights_3_reg_409;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_state26_pp0_stage25_iter0;
wire    ap_block_pp0_stage25_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_state27_pp0_stage26_iter0;
wire    ap_block_pp0_stage26_11001;
wire   [31:0] grp_fu_132_p1;
reg   [31:0] conv37_i_reg_419;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_state31_pp0_stage2_iter1;
wire    ap_block_pp0_stage2_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] trunc_ln60_cast_fu_173_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] err_fu_72;
reg   [31:0] ap_sig_allocacmp_err_load;
wire    ap_block_pp0_stage9;
wire    ap_loop_init;
reg   [1:0] i_fu_76;
wire   [1:0] add_ln58_fu_167_p2;
reg   [1:0] ap_sig_allocacmp_i_1;
reg   [7:0] weights_fu_80;
reg   [7:0] weights_1_fu_84;
wire    ap_block_pp0_stage9_01001;
wire    ap_block_pp0_stage4;
reg   [31:0] grp_fu_121_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg   [31:0] grp_fu_125_p0;
reg   [31:0] grp_fu_125_p1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire   [31:0] grp_fu_132_p0;
wire    ap_block_pp0_stage26;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire   [63:0] grp_fu_138_p2;
wire    ap_block_pp0_stage24;
wire   [63:0] data_V_fu_187_p1;
wire    ap_block_pp0_stage25;
wire   [53:0] mantissa_fu_205_p4;
wire   [11:0] zext_ln515_fu_218_p1;
wire   [11:0] add_ln515_fu_221_p2;
wire   [10:0] sub_ln1512_fu_235_p2;
wire   [0:0] isNeg_fu_227_p3;
wire  signed [11:0] sext_ln1512_fu_240_p1;
wire   [11:0] ush_fu_244_p3;
wire  signed [31:0] sext_ln1488_fu_252_p1;
wire   [112:0] zext_ln68_fu_214_p1;
wire   [112:0] zext_ln1488_fu_256_p1;
wire   [112:0] r_V_fu_260_p2;
wire   [0:0] tmp_fu_272_p3;
wire   [112:0] r_V_4_fu_266_p2;
wire   [7:0] zext_ln818_fu_280_p1;
wire   [7:0] tmp_4_fu_284_p4;
reg   [1:0] grp_fu_121_opcode;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_state32_pp0_stage3_iter1;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [27:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_state6_pp0_stage5_iter0;
wire    ap_block_state34_pp0_stage5_iter1;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_state7_pp0_stage6_iter0;
wire    ap_block_state35_pp0_stage6_iter1;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_state8_pp0_stage7_iter0;
wire    ap_block_state36_pp0_stage7_iter1;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_state11_pp0_stage10_iter0;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_state12_pp0_stage11_iter0;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_state13_pp0_stage12_iter0;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_state14_pp0_stage13_iter0;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_state16_pp0_stage15_iter0;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_state18_pp0_stage17_iter0;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_state19_pp0_stage18_iter0;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_state20_pp0_stage19_iter0;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_state21_pp0_stage20_iter0;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_state22_pp0_stage21_iter0;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_state23_pp0_stage22_iter0;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_state24_pp0_stage23_iter0;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_CS_fsm_pp0_stage23;

// power-on initialization
initial begin
#0 ap_CS_fsm = 28'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

gaussian_filter_accel_sitofp_32ns_32_5_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sitofp_32ns_32_5_no_dsp_1_U75(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_132_p0),
    .ce(1'b1),
    .dout(grp_fu_132_p1)
);

gaussian_filter_accel_fpext_32ns_64_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
fpext_32ns_64_2_no_dsp_1_U76(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_143),
    .ce(1'b1),
    .dout(grp_fu_135_p1)
);

gaussian_filter_accel_dadd_64ns_64ns_64_8_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 8 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U77(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(conv26_i_reg_393),
    .din1(64'd4602678819172646912),
    .ce(1'b1),
    .dout(grp_fu_138_p2)
);

gaussian_filter_accel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage27_subdone) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        err_fu_72 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        err_fu_72 <= reg_143;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln58_fu_161_p2 == 1'd0))) begin
            i_fu_76 <= add_ln58_fu_167_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_76 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln58_fu_161_p2 == 1'd0))) begin
        cf_addr_reg_368 <= trunc_ln60_cast_fu_173_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_reg_364 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        conv26_i_reg_393 <= grp_fu_135_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        conv37_i_reg_419 <= grp_fu_132_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_360 <= ap_sig_allocacmp_i_1;
        icmp_ln58_reg_364 <= icmp_ln58_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_reg_364 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul19_i_reg_378 <= grp_fu_123_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_reg_364 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul24_i_reg_383 <= grp_fu_123_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_reg_364 == 1'd0) & (1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        p_Result_s_reg_404 <= p_Result_s_fu_201_p1;
        xs_exp_V_reg_398 <= {{data_V_fu_187_p1[62:52]}};
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln58_reg_364 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_143 <= grp_fu_289_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_reg_364 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25) & (i_1_reg_360 == 2'd0))) begin
        weights_1_fu_84 <= weights_3_fu_294_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_reg_364 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights_3_reg_409 <= weights_3_fu_294_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_reg_364 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25) & (i_1_reg_360 == 2'd1))) begin
        weights_fu_80 <= weights_3_fu_294_p3;
    end
end

always @ (*) begin
    if (((icmp_ln58_reg_364 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage27_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_sig_allocacmp_err_load = reg_143;
    end else begin
        ap_sig_allocacmp_err_load = err_fu_72;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_76;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            cf_address0 = cf_addr_reg_368;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cf_address0 = trunc_ln60_cast_fu_173_p1;
        end else begin
            cf_address0 = 'bx;
        end
    end else begin
        cf_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        cf_ce0 = 1'b1;
    end else begin
        cf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln58_reg_364 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        cf_we0 = 1'b1;
    end else begin
        cf_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_121_opcode = 2'd1;
    end else if (((icmp_ln58_reg_364 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_121_opcode = 2'd0;
    end else begin
        grp_fu_121_opcode = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_121_p1 = conv37_i_reg_419;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_121_p1 = ap_sig_allocacmp_err_load;
    end else begin
        grp_fu_121_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_125_p0 = mul19_i_reg_378;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_125_p0 = cf_q0;
        end else begin
            grp_fu_125_p0 = 'bx;
        end
    end else begin
        grp_fu_125_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_125_p1 = 32'd1132462080;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_125_p1 = sum;
        end else begin
            grp_fu_125_p1 = 'bx;
        end
    end else begin
        grp_fu_125_p1 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln58_reg_364 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights_1_out_ap_vld = 1'b1;
    end else begin
        weights_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln58_reg_364 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights_out_ap_vld = 1'b1;
    end else begin
        weights_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln515_fu_221_p2 = ($signed(zext_ln515_fu_218_p1) + $signed(12'd3073));

assign add_ln58_fu_167_p2 = (ap_sig_allocacmp_i_1 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage9_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage9_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage10_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage11_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage12_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage13_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage14_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage15_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage16_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage17_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage18_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage19_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage20_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage21_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage22_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage23_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage24_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage25_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage26_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage27_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage3_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state33_pp0_stage4_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state34_pp0_stage5_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state35_pp0_stage6_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state36_pp0_stage7_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state37_pp0_stage8_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state38_pp0_stage9_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage5_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage6_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage7_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage8_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ext_blocking_n = (1'b1 & 1'b1);

assign ap_int_blocking_n = (1'b1 & 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign cf_d0 = grp_fu_123_p_dout0;

assign data_V_fu_187_p1 = grp_fu_138_p2;

assign grp_fu_123_p_ce = 1'b1;

assign grp_fu_123_p_din0 = grp_fu_125_p0;

assign grp_fu_123_p_din1 = grp_fu_125_p1;

assign grp_fu_132_p0 = weights_3_reg_409;

assign grp_fu_289_p_ce = 1'b1;

assign grp_fu_289_p_din0 = mul24_i_reg_383;

assign grp_fu_289_p_din1 = grp_fu_121_p1;

assign grp_fu_289_p_opcode = grp_fu_121_opcode;

assign icmp_ln58_fu_161_p2 = ((ap_sig_allocacmp_i_1 == 2'd3) ? 1'b1 : 1'b0);

assign isNeg_fu_227_p3 = add_ln515_fu_221_p2[32'd11];

assign mantissa_fu_205_p4 = {{{{1'd1}, {p_Result_s_reg_404}}}, {1'd0}};

assign p_Result_s_fu_201_p1 = data_V_fu_187_p1[51:0];

assign r_V_4_fu_266_p2 = zext_ln68_fu_214_p1 << zext_ln1488_fu_256_p1;

assign r_V_fu_260_p2 = zext_ln68_fu_214_p1 >> zext_ln1488_fu_256_p1;

assign sext_ln1488_fu_252_p1 = $signed(ush_fu_244_p3);

assign sext_ln1512_fu_240_p1 = $signed(sub_ln1512_fu_235_p2);

assign sub_ln1512_fu_235_p2 = (11'd1023 - xs_exp_V_reg_398);

assign tmp_4_fu_284_p4 = {{r_V_4_fu_266_p2[60:53]}};

assign tmp_fu_272_p3 = r_V_fu_260_p2[32'd53];

assign trunc_ln60_cast_fu_173_p1 = ap_sig_allocacmp_i_1;

assign ush_fu_244_p3 = ((isNeg_fu_227_p3[0:0] == 1'b1) ? sext_ln1512_fu_240_p1 : add_ln515_fu_221_p2);

assign weights_1_out = weights_1_fu_84;

assign weights_3_fu_294_p3 = ((isNeg_fu_227_p3[0:0] == 1'b1) ? zext_ln818_fu_280_p1 : tmp_4_fu_284_p4);

assign weights_out = weights_fu_80;

assign zext_ln1488_fu_256_p1 = $unsigned(sext_ln1488_fu_252_p1);

assign zext_ln515_fu_218_p1 = xs_exp_V_reg_398;

assign zext_ln68_fu_214_p1 = mantissa_fu_205_p4;

assign zext_ln818_fu_280_p1 = tmp_fu_272_p3;

endmodule //gaussian_filter_accel_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2
