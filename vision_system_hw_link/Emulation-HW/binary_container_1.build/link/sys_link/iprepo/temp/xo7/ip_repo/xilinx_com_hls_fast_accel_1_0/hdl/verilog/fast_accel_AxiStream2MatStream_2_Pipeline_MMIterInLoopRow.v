// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fast_accel_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ldata1_dout,
        ldata1_num_data_valid,
        ldata1_fifo_cap,
        ldata1_empty_n,
        ldata1_read,
        imgInput_data1_din,
        imgInput_data1_num_data_valid,
        imgInput_data1_fifo_cap,
        imgInput_data1_full_n,
        imgInput_data1_write,
        bound,
        sext_ln1075,
        cols_bound_per_npc_load,
        sub,
        last_blk_width_load,
        sub3,
        add_ln1075,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] ldata1_dout;
input  [1:0] ldata1_num_data_valid;
input  [1:0] ldata1_fifo_cap;
input   ldata1_empty_n;
output   ldata1_read;
output  [7:0] imgInput_data1_din;
input  [1:0] imgInput_data1_num_data_valid;
input  [1:0] imgInput_data1_fifo_cap;
input   imgInput_data1_full_n;
output   imgInput_data1_write;
input  [31:0] bound;
input  [4:0] sext_ln1075;
input  [31:0] cols_bound_per_npc_load;
input  [31:0] sub;
input  [3:0] last_blk_width_load;
input  [4:0] sub3;
input  [4:0] add_ln1075;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_idle;
reg ldata1_read;
reg imgInput_data1_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] icmp_ln1055_reg_753;
reg   [0:0] icmp_ln1066_reg_762;
reg    ap_predicate_op105_read_state3;
reg    ap_block_state3_pp0_stage0_iter2;
reg   [0:0] icmp_ln1085_reg_821;
reg   [0:0] icmp_ln1085_reg_821_pp0_iter2_reg;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1055_fu_193_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ldata1_blk_n;
wire    ap_block_pp0_stage0;
reg    imgInput_data1_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] bLast_width_fu_204_p2;
reg   [0:0] bLast_width_reg_757;
reg   [0:0] bLast_width_reg_757_pp0_iter2_reg;
wire   [0:0] icmp_ln1066_fu_235_p2;
wire   [0:0] icmp_ln628_fu_264_p2;
reg   [0:0] icmp_ln628_reg_766;
wire   [2:0] trunc_ln628_fu_270_p1;
reg   [2:0] trunc_ln628_reg_772;
wire   [7:0] lshr_ln628_4_fu_308_p2;
reg   [7:0] lshr_ln628_4_reg_778;
wire   [0:0] icmp_ln1067_fu_325_p2;
reg   [0:0] icmp_ln1067_reg_783;
wire   [2:0] trunc_ln1068_fu_331_p1;
reg   [2:0] trunc_ln1068_reg_788;
wire   [2:0] trunc_ln1068_1_fu_335_p1;
reg   [2:0] trunc_ln1068_1_reg_793;
wire   [2:0] sub_ln628_1_fu_357_p2;
reg   [2:0] sub_ln628_1_reg_798;
wire   [0:0] icmp_ln368_fu_363_p2;
reg   [0:0] icmp_ln368_reg_803;
wire   [2:0] trunc_ln368_fu_369_p1;
reg   [2:0] trunc_ln368_reg_809;
wire   [7:0] and_ln368_fu_419_p2;
reg   [7:0] and_ln368_reg_815;
wire   [0:0] icmp_ln1085_fu_436_p2;
wire   [7:0] p_Result_4_fu_506_p2;
wire   [7:0] p_Result_3_fu_645_p2;
wire   [7:0] ap_phi_reg_pp0_iter0_localbuffer_V_6_reg_151;
reg   [7:0] ap_phi_reg_pp0_iter1_localbuffer_V_6_reg_151;
reg   [7:0] ap_phi_reg_pp0_iter2_localbuffer_V_6_reg_151;
reg   [7:0] ap_phi_reg_pp0_iter3_localbuffer_V_6_reg_151;
reg   [31:0] rem_fu_80;
wire   [31:0] rem_3_fu_314_p2;
wire   [31:0] rem_2_fu_425_p2;
wire    ap_loop_init;
reg   [30:0] i_fu_84;
wire   [30:0] add_ln1055_fu_198_p2;
reg   [31:0] j_fu_88;
wire   [31:0] j_3_fu_447_p3;
reg   [7:0] p_Val2_s_fu_92;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] zext_ln1055_fu_189_p1;
wire   [3:0] xf_bits_per_clock_fu_209_p3;
wire   [4:0] ptr_width_minus_fu_224_p3;
wire   [31:0] zext_ln1061_fu_216_p1;
wire   [4:0] select_ln1075_fu_241_p3;
wire   [31:0] zext_ln1075_fu_248_p1;
wire   [31:0] sub_ln1075_1_fu_258_p2;
wire   [31:0] sub_ln1075_fu_252_p2;
wire   [2:0] trunc_ln628_1_fu_274_p1;
wire   [2:0] sub_ln628_2_fu_278_p2;
wire   [2:0] sub_ln628_3_fu_284_p2;
wire   [2:0] select_ln628_fu_290_p3;
wire   [2:0] xor_ln628_2_fu_298_p2;
wire   [7:0] zext_ln628_4_fu_304_p1;
wire   [4:0] zext_ln1061_1_fu_220_p1;
wire  signed [4:0] add_ln1072_fu_339_p2;
wire   [2:0] trunc_ln1072_fu_349_p1;
wire   [2:0] trunc_ln1072_1_fu_353_p1;
wire  signed [31:0] sext_ln1072_fu_345_p1;
wire   [2:0] trunc_ln368_1_fu_373_p1;
wire   [2:0] select_ln368_fu_377_p3;
wire   [2:0] select_ln368_1_fu_385_p3;
wire   [2:0] xor_ln368_1_fu_393_p2;
wire   [7:0] zext_ln368_2_fu_399_p1;
wire   [7:0] zext_ln368_3_fu_403_p1;
wire   [7:0] shl_ln368_1_fu_407_p2;
wire   [7:0] lshr_ln368_1_fu_413_p2;
wire  signed [31:0] sext_ln1062_fu_231_p1;
wire   [31:0] add_ln1087_fu_441_p2;
reg   [7:0] tmp_3_fu_468_p4;
wire   [2:0] xor_ln628_1_fu_478_p2;
wire   [2:0] select_ln628_2_fu_490_p3;
wire   [7:0] select_ln628_1_fu_483_p3;
wire   [7:0] zext_ln628_3_fu_496_p1;
wire   [7:0] lshr_ln628_3_fu_500_p2;
wire   [2:0] sub_ln628_fu_511_p2;
wire   [7:0] zext_ln628_fu_516_p1;
wire   [7:0] zext_ln628_1_fu_520_p1;
wire   [7:0] lshr_ln628_fu_524_p2;
wire   [7:0] lshr_ln628_1_fu_530_p2;
wire   [2:0] sub_ln368_fu_542_p2;
wire   [7:0] zext_ln368_fu_547_p1;
wire   [7:0] p_Result_s_fu_536_p2;
wire   [7:0] lshr_ln368_fu_551_p2;
wire   [7:0] p_Result_1_fu_557_p2;
wire   [2:0] xor_ln628_fu_570_p2;
wire   [7:0] zext_ln628_2_fu_575_p1;
wire   [7:0] lshr_ln628_2_fu_579_p2;
wire   [2:0] xor_ln368_fu_591_p2;
wire   [2:0] select_ln368_2_fu_596_p3;
wire   [7:0] p_Result_2_fu_585_p2;
wire   [7:0] zext_ln368_1_fu_602_p1;
wire   [7:0] shl_ln368_fu_606_p2;
reg   [7:0] tmp_fu_612_p4;
wire   [7:0] localbuffer_V_7_fu_563_p3;
wire   [7:0] xor_ln368_2_fu_629_p2;
wire   [7:0] select_ln368_3_fu_622_p3;
wire   [7:0] and_ln368_1_fu_634_p2;
wire   [7:0] and_ln368_2_fu_640_p2;
wire   [2:0] trunc_ln628_2_fu_656_p1;
wire   [2:0] xor_ln628_3_fu_659_p2;
wire   [7:0] zext_ln628_5_fu_665_p1;
wire   [7:0] lshr_ln628_5_fu_669_p2;
wire   [7:0] select_ln1060_fu_675_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_int_blocking_cur_n;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_597;
reg    ap_condition_600;
reg    ap_condition_603;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
end

fast_accel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((icmp_ln1066_reg_762 == 1'd0) & (icmp_ln1055_reg_753 == 1'd1))) begin
            ap_phi_reg_pp0_iter3_localbuffer_V_6_reg_151 <= p_Result_4_fu_506_p2;
        end else if (((icmp_ln1066_reg_762 == 1'd1) & (icmp_ln1055_reg_753 == 1'd1))) begin
            ap_phi_reg_pp0_iter3_localbuffer_V_6_reg_151 <= p_Result_3_fu_645_p2;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter3_localbuffer_V_6_reg_151 <= ap_phi_reg_pp0_iter2_localbuffer_V_6_reg_151;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_84 <= 31'd0;
        end else if (((icmp_ln1055_fu_193_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            i_fu_84 <= add_ln1055_fu_198_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_88 <= 32'd0;
        end else if (((icmp_ln1055_fu_193_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            j_fu_88 <= j_3_fu_447_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            p_Val2_s_fu_92 <= 8'd0;
        end else if ((1'b1 == ap_condition_597)) begin
            p_Val2_s_fu_92 <= ldata1_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            rem_fu_80 <= 32'd0;
        end else if ((1'b1 == ap_condition_603)) begin
            rem_fu_80 <= rem_2_fu_425_p2;
        end else if ((1'b1 == ap_condition_600)) begin
            rem_fu_80 <= rem_3_fu_314_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1055_fu_193_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1066_fu_235_p2 == 1'd1))) begin
        and_ln368_reg_815 <= and_ln368_fu_419_p2;
        icmp_ln1067_reg_783 <= icmp_ln1067_fu_325_p2;
        icmp_ln368_reg_803 <= icmp_ln368_fu_363_p2;
        sub_ln628_1_reg_798 <= sub_ln628_1_fu_357_p2;
        trunc_ln1068_1_reg_793 <= trunc_ln1068_1_fu_335_p1;
        trunc_ln1068_reg_788 <= trunc_ln1068_fu_331_p1;
        trunc_ln368_reg_809 <= trunc_ln368_fu_369_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln1055_reg_753 <= icmp_ln1055_fu_193_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_localbuffer_V_6_reg_151 <= ap_phi_reg_pp0_iter0_localbuffer_V_6_reg_151;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter2_localbuffer_V_6_reg_151 <= ap_phi_reg_pp0_iter1_localbuffer_V_6_reg_151;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1055_fu_193_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bLast_width_reg_757 <= bLast_width_fu_204_p2;
        icmp_ln1066_reg_762 <= icmp_ln1066_fu_235_p2;
        icmp_ln1085_reg_821 <= icmp_ln1085_fu_436_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        bLast_width_reg_757_pp0_iter2_reg <= bLast_width_reg_757;
        icmp_ln1085_reg_821_pp0_iter2_reg <= icmp_ln1085_reg_821;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1055_fu_193_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1066_fu_235_p2 == 1'd0))) begin
        icmp_ln628_reg_766 <= icmp_ln628_fu_264_p2;
        lshr_ln628_4_reg_778 <= lshr_ln628_4_fu_308_p2;
        trunc_ln628_reg_772 <= trunc_ln628_fu_270_p1;
    end
end

always @ (*) begin
    if (((icmp_ln1055_fu_193_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln1085_reg_821_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        imgInput_data1_blk_n = imgInput_data1_full_n;
    end else begin
        imgInput_data1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1085_reg_821_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        imgInput_data1_write = 1'b1;
    end else begin
        imgInput_data1_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op105_read_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ldata1_blk_n = ldata1_empty_n;
    end else begin
        ldata1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op105_read_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ldata1_read = 1'b1;
    end else begin
        ldata1_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1055_fu_198_p2 = (i_fu_84 + 31'd1);

assign add_ln1072_fu_339_p2 = ($signed(zext_ln1061_1_fu_220_p1) + $signed(5'd31));

assign add_ln1087_fu_441_p2 = (j_fu_88 + 32'd1);

assign and_ln368_1_fu_634_p2 = (xor_ln368_2_fu_629_p2 & localbuffer_V_7_fu_563_p3);

assign and_ln368_2_fu_640_p2 = (select_ln368_3_fu_622_p3 & and_ln368_reg_815);

assign and_ln368_fu_419_p2 = (shl_ln368_1_fu_407_p2 & lshr_ln368_1_fu_413_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln1085_reg_821_pp0_iter2_reg == 1'd1) & (imgInput_data1_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_op105_read_state3 == 1'b1) & (ldata1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln1085_reg_821_pp0_iter2_reg == 1'd1) & (imgInput_data1_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_op105_read_state3 == 1'b1) & (ldata1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln1085_reg_821_pp0_iter2_reg == 1'd1) & (imgInput_data1_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_op105_read_state3 == 1'b1) & (ldata1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((ap_predicate_op105_read_state3 == 1'b1) & (ldata1_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = ((icmp_ln1085_reg_821_pp0_iter2_reg == 1'd1) & (imgInput_data1_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_597 = ((icmp_ln1066_reg_762 == 1'd1) & (icmp_ln1055_reg_753 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_condition_600 = ((icmp_ln1055_fu_193_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1066_fu_235_p2 == 1'd0));
end

always @ (*) begin
    ap_condition_603 = ((icmp_ln1055_fu_193_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1066_fu_235_p2 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_ext_blocking_n = (1'b1 & 1'b1);

assign ap_int_blocking_cur_n = (ldata1_blk_n & imgInput_data1_blk_n);

assign ap_int_blocking_n = (ap_int_blocking_cur_n & 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign ap_phi_reg_pp0_iter0_localbuffer_V_6_reg_151 = 'bx;

always @ (*) begin
    ap_predicate_op105_read_state3 = ((icmp_ln1066_reg_762 == 1'd1) & (icmp_ln1055_reg_753 == 1'd1));
end

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign bLast_width_fu_204_p2 = ((j_fu_88 == sub) ? 1'b1 : 1'b0);

assign icmp_ln1055_fu_193_p2 = (($signed(zext_ln1055_fu_189_p1) < $signed(bound)) ? 1'b1 : 1'b0);

assign icmp_ln1066_fu_235_p2 = (($signed(zext_ln1061_fu_216_p1) > $signed(rem_fu_80)) ? 1'b1 : 1'b0);

assign icmp_ln1067_fu_325_p2 = ((rem_fu_80 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln1085_fu_436_p2 = (($signed(j_fu_88) < $signed(cols_bound_per_npc_load)) ? 1'b1 : 1'b0);

assign icmp_ln368_fu_363_p2 = ((rem_fu_80 > sext_ln1072_fu_345_p1) ? 1'b1 : 1'b0);

assign icmp_ln628_fu_264_p2 = ((sub_ln1075_1_fu_258_p2 > sub_ln1075_fu_252_p2) ? 1'b1 : 1'b0);

assign imgInput_data1_din = (select_ln1060_fu_675_p3 & ap_phi_reg_pp0_iter3_localbuffer_V_6_reg_151);

assign j_3_fu_447_p3 = ((bLast_width_fu_204_p2[0:0] == 1'b1) ? 32'd0 : add_ln1087_fu_441_p2);

assign localbuffer_V_7_fu_563_p3 = ((icmp_ln1067_reg_783[0:0] == 1'b1) ? 8'd0 : p_Result_1_fu_557_p2);

assign lshr_ln368_1_fu_413_p2 = 8'd255 >> zext_ln368_3_fu_403_p1;

assign lshr_ln368_fu_551_p2 = 8'd255 >> zext_ln368_fu_547_p1;

assign lshr_ln628_1_fu_530_p2 = 8'd255 >> zext_ln628_1_fu_520_p1;

assign lshr_ln628_2_fu_579_p2 = 8'd255 >> zext_ln628_2_fu_575_p1;

assign lshr_ln628_3_fu_500_p2 = select_ln628_1_fu_483_p3 >> zext_ln628_3_fu_496_p1;

assign lshr_ln628_4_fu_308_p2 = 8'd255 >> zext_ln628_4_fu_304_p1;

assign lshr_ln628_5_fu_669_p2 = 8'd255 >> zext_ln628_5_fu_665_p1;

assign lshr_ln628_fu_524_p2 = p_Val2_s_fu_92 >> zext_ln628_fu_516_p1;

assign p_Result_1_fu_557_p2 = (p_Result_s_fu_536_p2 & lshr_ln368_fu_551_p2);

assign p_Result_2_fu_585_p2 = (lshr_ln628_2_fu_579_p2 & ldata1_dout);

assign p_Result_3_fu_645_p2 = (and_ln368_2_fu_640_p2 | and_ln368_1_fu_634_p2);

assign p_Result_4_fu_506_p2 = (lshr_ln628_4_reg_778 & lshr_ln628_3_fu_500_p2);

assign p_Result_s_fu_536_p2 = (lshr_ln628_fu_524_p2 & lshr_ln628_1_fu_530_p2);

assign ptr_width_minus_fu_224_p3 = ((bLast_width_fu_204_p2[0:0] == 1'b1) ? sub3 : 5'd0);

assign rem_2_fu_425_p2 = ($signed(rem_fu_80) + $signed(sext_ln1062_fu_231_p1));

assign rem_3_fu_314_p2 = (rem_fu_80 - zext_ln1061_fu_216_p1);

assign select_ln1060_fu_675_p3 = ((bLast_width_reg_757_pp0_iter2_reg[0:0] == 1'b1) ? lshr_ln628_5_fu_669_p2 : 8'd255);

assign select_ln1075_fu_241_p3 = ((bLast_width_fu_204_p2[0:0] == 1'b1) ? add_ln1075 : 5'd15);

assign select_ln368_1_fu_385_p3 = ((icmp_ln368_fu_363_p2[0:0] == 1'b1) ? trunc_ln368_1_fu_373_p1 : trunc_ln368_fu_369_p1);

assign select_ln368_2_fu_596_p3 = ((icmp_ln368_reg_803[0:0] == 1'b1) ? xor_ln368_fu_591_p2 : trunc_ln368_reg_809);

assign select_ln368_3_fu_622_p3 = ((icmp_ln368_reg_803[0:0] == 1'b1) ? tmp_fu_612_p4 : shl_ln368_fu_606_p2);

assign select_ln368_fu_377_p3 = ((icmp_ln368_fu_363_p2[0:0] == 1'b1) ? trunc_ln368_fu_369_p1 : trunc_ln368_1_fu_373_p1);

assign select_ln628_1_fu_483_p3 = ((icmp_ln628_reg_766[0:0] == 1'b1) ? tmp_3_fu_468_p4 : p_Val2_s_fu_92);

assign select_ln628_2_fu_490_p3 = ((icmp_ln628_reg_766[0:0] == 1'b1) ? xor_ln628_1_fu_478_p2 : trunc_ln628_reg_772);

assign select_ln628_fu_290_p3 = ((icmp_ln628_fu_264_p2[0:0] == 1'b1) ? sub_ln628_2_fu_278_p2 : sub_ln628_3_fu_284_p2);

assign sext_ln1062_fu_231_p1 = $signed(ptr_width_minus_fu_224_p3);

assign sext_ln1072_fu_345_p1 = add_ln1072_fu_339_p2;

assign shl_ln368_1_fu_407_p2 = 8'd255 << zext_ln368_2_fu_399_p1;

assign shl_ln368_fu_606_p2 = p_Result_2_fu_585_p2 << zext_ln368_1_fu_602_p1;

assign sub_ln1075_1_fu_258_p2 = (32'd8 - rem_fu_80);

assign sub_ln1075_fu_252_p2 = (zext_ln1075_fu_248_p1 - rem_fu_80);

assign sub_ln368_fu_542_p2 = (3'd0 - trunc_ln1068_1_reg_793);

assign sub_ln628_1_fu_357_p2 = (trunc_ln1072_fu_349_p1 - trunc_ln1072_1_fu_353_p1);

assign sub_ln628_2_fu_278_p2 = (trunc_ln628_fu_270_p1 - trunc_ln628_1_fu_274_p1);

assign sub_ln628_3_fu_284_p2 = (trunc_ln628_1_fu_274_p1 - trunc_ln628_fu_270_p1);

assign sub_ln628_fu_511_p2 = (3'd0 - trunc_ln1068_reg_788);

integer ap_tvar_int_0;

always @ (p_Val2_s_fu_92) begin
    for (ap_tvar_int_0 = 8 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 7 - 0) begin
            tmp_3_fu_468_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_3_fu_468_p4[ap_tvar_int_0] = p_Val2_s_fu_92[7 - ap_tvar_int_0];
        end
    end
end

integer ap_tvar_int_1;

always @ (shl_ln368_fu_606_p2) begin
    for (ap_tvar_int_1 = 8 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 7 - 0) begin
            tmp_fu_612_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_fu_612_p4[ap_tvar_int_1] = shl_ln368_fu_606_p2[7 - ap_tvar_int_1];
        end
    end
end

assign trunc_ln1068_1_fu_335_p1 = rem_fu_80[2:0];

assign trunc_ln1068_fu_331_p1 = rem_fu_80[2:0];

assign trunc_ln1072_1_fu_353_p1 = rem_fu_80[2:0];

assign trunc_ln1072_fu_349_p1 = add_ln1072_fu_339_p2[2:0];

assign trunc_ln368_1_fu_373_p1 = add_ln1072_fu_339_p2[2:0];

assign trunc_ln368_fu_369_p1 = rem_fu_80[2:0];

assign trunc_ln628_1_fu_274_p1 = sub_ln1075_fu_252_p2[2:0];

assign trunc_ln628_2_fu_656_p1 = sext_ln1075[2:0];

assign trunc_ln628_fu_270_p1 = sub_ln1075_1_fu_258_p2[2:0];

assign xf_bits_per_clock_fu_209_p3 = ((bLast_width_fu_204_p2[0:0] == 1'b1) ? last_blk_width_load : 4'd8);

assign xor_ln368_1_fu_393_p2 = (select_ln368_fu_377_p3 ^ 3'd7);

assign xor_ln368_2_fu_629_p2 = (8'd255 ^ and_ln368_reg_815);

assign xor_ln368_fu_591_p2 = (trunc_ln368_reg_809 ^ 3'd7);

assign xor_ln628_1_fu_478_p2 = (trunc_ln628_reg_772 ^ 3'd7);

assign xor_ln628_2_fu_298_p2 = (select_ln628_fu_290_p3 ^ 3'd7);

assign xor_ln628_3_fu_659_p2 = (trunc_ln628_2_fu_656_p1 ^ 3'd7);

assign xor_ln628_fu_570_p2 = (sub_ln628_1_reg_798 ^ 3'd7);

assign zext_ln1055_fu_189_p1 = i_fu_84;

assign zext_ln1061_1_fu_220_p1 = xf_bits_per_clock_fu_209_p3;

assign zext_ln1061_fu_216_p1 = xf_bits_per_clock_fu_209_p3;

assign zext_ln1075_fu_248_p1 = select_ln1075_fu_241_p3;

assign zext_ln368_1_fu_602_p1 = select_ln368_2_fu_596_p3;

assign zext_ln368_2_fu_399_p1 = select_ln368_1_fu_385_p3;

assign zext_ln368_3_fu_403_p1 = xor_ln368_1_fu_393_p2;

assign zext_ln368_fu_547_p1 = sub_ln368_fu_542_p2;

assign zext_ln628_1_fu_520_p1 = sub_ln628_fu_511_p2;

assign zext_ln628_2_fu_575_p1 = xor_ln628_fu_570_p2;

assign zext_ln628_3_fu_496_p1 = select_ln628_2_fu_490_p3;

assign zext_ln628_4_fu_304_p1 = xor_ln628_2_fu_298_p2;

assign zext_ln628_5_fu_665_p1 = xor_ln628_3_fu_659_p2;

assign zext_ln628_fu_516_p1 = sub_ln628_fu_511_p2;

endmodule //fast_accel_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow
