// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_accel_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_s (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        in_mat_data1_dout,
        in_mat_data1_num_data_valid,
        in_mat_data1_fifo_cap,
        in_mat_data1_empty_n,
        in_mat_data1_read,
        gaussian_mat_data1_din,
        gaussian_mat_data1_num_data_valid,
        gaussian_mat_data1_fifo_cap,
        gaussian_mat_data1_full_n,
        gaussian_mat_data1_write,
        img_height,
        img_width,
        img_height_c22_din,
        img_height_c22_num_data_valid,
        img_height_c22_fifo_cap,
        img_height_c22_full_n,
        img_height_c22_write,
        img_width_c26_din,
        img_width_c26_num_data_valid,
        img_width_c26_fifo_cap,
        img_width_c26_full_n,
        img_width_c26_write,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [7:0] in_mat_data1_dout;
input  [1:0] in_mat_data1_num_data_valid;
input  [1:0] in_mat_data1_fifo_cap;
input   in_mat_data1_empty_n;
output   in_mat_data1_read;
output  [7:0] gaussian_mat_data1_din;
input  [1:0] gaussian_mat_data1_num_data_valid;
input  [1:0] gaussian_mat_data1_fifo_cap;
input   gaussian_mat_data1_full_n;
output   gaussian_mat_data1_write;
input  [15:0] img_height;
input  [15:0] img_width;
output  [15:0] img_height_c22_din;
input  [1:0] img_height_c22_num_data_valid;
input  [1:0] img_height_c22_fifo_cap;
input   img_height_c22_full_n;
output   img_height_c22_write;
output  [15:0] img_width_c26_din;
input  [1:0] img_width_c26_num_data_valid;
input  [1:0] img_width_c26_fifo_cap;
input   img_width_c26_full_n;
output   img_width_c26_write;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_done;
reg ap_idle;
reg start_write;
reg in_mat_data1_read;
reg[7:0] gaussian_mat_data1_din;
reg gaussian_mat_data1_write;
reg img_height_c22_write;
reg img_width_c26_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    gaussian_mat_data1_blk_n;
wire    ap_CS_fsm_state7;
reg    img_height_c22_blk_n;
reg    img_width_c26_blk_n;
wire   [1:0] bottom_V_fu_282_p3;
reg   [1:0] bottom_V_reg_608;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln1027_fu_229_p2;
wire   [1:0] mid_V_fu_313_p3;
reg   [1:0] mid_V_reg_613;
wire   [1:0] tp_V_fu_344_p3;
reg   [1:0] tp_V_reg_618;
wire   [0:0] cmp_i_i422_i_fu_353_p2;
reg   [0:0] cmp_i_i422_i_reg_623;
reg    buf_V_ce0;
wire   [7:0] buf_V_q0;
reg   [10:0] buf_V_address1;
reg    buf_V_ce1;
reg    buf_V_we1;
reg   [7:0] buf_V_d1;
reg    buf_V_5_ce0;
wire   [7:0] buf_V_5_q0;
reg   [10:0] buf_V_5_address1;
reg    buf_V_5_ce1;
reg    buf_V_5_we1;
reg   [7:0] buf_V_5_d1;
wire   [7:0] buf_V_6_q0;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_start;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_done;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_idle;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_ready;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_in_mat_data1_read;
wire   [10:0] grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_5_address1;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_5_ce1;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_5_we1;
wire   [7:0] grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_5_d1;
wire   [10:0] grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_address1;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_ce1;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_we1;
wire   [7:0] grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_d1;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_ext_blocking_n;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_str_blocking_n;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_int_blocking_n;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_start;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_done;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_idle;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_ready;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_in_mat_data1_read;
wire   [7:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_gaussian_mat_data1_din;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_gaussian_mat_data1_write;
wire   [10:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_address0;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_ce0;
wire   [10:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_address1;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_ce1;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_we1;
wire   [7:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_d1;
wire   [10:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_address0;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_ce0;
wire   [10:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_address1;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_ce1;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_we1;
wire   [7:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_d1;
wire   [10:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_address0;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_ce0;
wire   [10:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_address1;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_ce1;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_we1;
wire   [7:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_d1;
wire   [7:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_b1_V_out;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_b1_V_out_ap_vld;
wire   [7:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_b0_V_out;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_b0_V_out_ap_vld;
wire   [7:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_m1_V_out;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_m1_V_out_ap_vld;
wire   [7:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_m0_V_out;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_m0_V_out_ap_vld;
wire   [7:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_t1_V_out;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_t1_V_out_ap_vld;
wire   [7:0] grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_t0_V_out;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_t0_V_out_ap_vld;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_ext_blocking_n;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_str_blocking_n;
wire    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_int_blocking_n;
reg    grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg    grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_start_reg;
wire    ap_CS_fsm_state6;
reg   [12:0] row_ind_V_fu_90;
wire   [12:0] row_ind_V_13_fu_371_p3;
reg    ap_block_state1;
reg   [12:0] row_V_fu_94;
wire   [12:0] row_V_9_fu_379_p2;
reg   [1:0] tp_fu_98;
reg   [1:0] mid_fu_102;
reg   [1:0] bottom_fu_106;
wire   [15:0] zext_ln1027_fu_225_p1;
wire   [0:0] icmp_ln231_fu_246_p2;
wire   [0:0] icmp_ln231_2_fu_266_p2;
wire   [0:0] icmp_ln231_1_fu_260_p2;
wire   [0:0] empty_108_fu_276_p2;
wire   [1:0] empty_107_fu_272_p1;
wire   [1:0] select_ln231_fu_252_p3;
wire   [0:0] empty_110_fu_307_p2;
wire   [1:0] empty_109_fu_299_p3;
wire   [1:0] select_ln231_1_fu_291_p3;
wire   [0:0] empty_112_fu_338_p2;
wire   [1:0] empty_111_fu_330_p3;
wire   [1:0] select_ln231_2_fu_322_p3;
wire   [12:0] row_ind_V_12_fu_359_p2;
wire   [0:0] icmp_ln1019_fu_365_p2;
wire   [8:0] zext_ln1632_1_fu_432_p1;
wire   [8:0] zext_ln1632_fu_428_p1;
wire   [8:0] zext_ln50_fu_446_p1;
wire   [8:0] zext_ln47_fu_442_p1;
wire   [8:0] add_ln50_fu_454_p2;
wire   [9:0] zext_ln50_2_fu_460_p1;
wire   [9:0] zext_ln50_1_fu_450_p1;
wire   [9:0] add_ln50_1_fu_464_p2;
wire   [8:0] A0_fu_436_p2;
wire   [10:0] A1_fu_470_p3;
wire   [9:0] A2_fu_478_p3;
wire   [10:0] zext_ln52_2_fu_494_p1;
wire   [10:0] zext_ln52_fu_486_p1;
wire   [10:0] add_ln52_fu_498_p2;
wire   [11:0] zext_ln52_3_fu_504_p1;
wire   [11:0] zext_ln52_1_fu_490_p1;
wire   [11:0] add_ln52_1_fu_508_p2;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_int_blocking_cur_n;
reg    ap_ext_blocking_sub_n;
reg    ap_wait_0;
reg    ap_sub_ext_blocking_0;
reg    ap_wait_1;
reg    ap_sub_ext_blocking_1;
reg    ap_str_blocking_sub_n;
reg    ap_sub_str_blocking_0;
reg    ap_sub_str_blocking_1;
reg    ap_int_blocking_sub_n;
reg    ap_sub_int_blocking_0;
reg    ap_sub_int_blocking_1;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
#0 grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_start_reg = 1'b0;
#0 grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_start_reg = 1'b0;
end

canny_accel_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_s_buf_V_RAM_S2P_BRAM_1R1W #(
    .DataWidth( 8 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
buf_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_address0),
    .ce0(buf_V_ce0),
    .q0(buf_V_q0),
    .address1(buf_V_address1),
    .ce1(buf_V_ce1),
    .we1(buf_V_we1),
    .d1(buf_V_d1)
);

canny_accel_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_s_buf_V_RAM_S2P_BRAM_1R1W #(
    .DataWidth( 8 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
buf_V_5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_address0),
    .ce0(buf_V_5_ce0),
    .q0(buf_V_5_q0),
    .address1(buf_V_5_address1),
    .ce1(buf_V_5_ce1),
    .we1(buf_V_5_we1),
    .d1(buf_V_5_d1)
);

canny_accel_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_s_buf_V_RAM_S2P_BRAM_1R1W #(
    .DataWidth( 8 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
buf_V_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_address0),
    .ce0(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_ce0),
    .q0(buf_V_6_q0),
    .address1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_address1),
    .ce1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_ce1),
    .we1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_we1),
    .d1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_d1)
);

canny_accel_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_start),
    .ap_done(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_done),
    .ap_idle(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_idle),
    .ap_ready(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_ready),
    .in_mat_data1_dout(in_mat_data1_dout),
    .in_mat_data1_num_data_valid(2'd0),
    .in_mat_data1_fifo_cap(2'd0),
    .in_mat_data1_empty_n(in_mat_data1_empty_n),
    .in_mat_data1_read(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_in_mat_data1_read),
    .img_width(img_width),
    .buf_V_5_address1(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_5_address1),
    .buf_V_5_ce1(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_5_ce1),
    .buf_V_5_we1(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_5_we1),
    .buf_V_5_d1(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_5_d1),
    .buf_V_address1(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_address1),
    .buf_V_ce1(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_ce1),
    .buf_V_we1(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_we1),
    .buf_V_d1(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_d1),
    .ap_ext_blocking_n(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_ext_blocking_n),
    .ap_str_blocking_n(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_str_blocking_n),
    .ap_int_blocking_n(grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_int_blocking_n)
);

canny_accel_xFAverageGaussianMask3x3_Pipeline_Col_Loop grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_start),
    .ap_done(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_done),
    .ap_idle(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_idle),
    .ap_ready(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_ready),
    .in_mat_data1_dout(in_mat_data1_dout),
    .in_mat_data1_num_data_valid(2'd0),
    .in_mat_data1_fifo_cap(2'd0),
    .in_mat_data1_empty_n(in_mat_data1_empty_n),
    .in_mat_data1_read(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_in_mat_data1_read),
    .gaussian_mat_data1_din(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_gaussian_mat_data1_din),
    .gaussian_mat_data1_num_data_valid(2'd0),
    .gaussian_mat_data1_fifo_cap(2'd0),
    .gaussian_mat_data1_full_n(gaussian_mat_data1_full_n),
    .gaussian_mat_data1_write(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_gaussian_mat_data1_write),
    .img_width(img_width),
    .buf_V_address0(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_address0),
    .buf_V_ce0(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_ce0),
    .buf_V_q0(buf_V_q0),
    .buf_V_address1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_address1),
    .buf_V_ce1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_ce1),
    .buf_V_we1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_we1),
    .buf_V_d1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_d1),
    .buf_V_5_address0(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_address0),
    .buf_V_5_ce0(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_ce0),
    .buf_V_5_q0(buf_V_5_q0),
    .buf_V_5_address1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_address1),
    .buf_V_5_ce1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_ce1),
    .buf_V_5_we1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_we1),
    .buf_V_5_d1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_d1),
    .buf_V_6_address0(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_address0),
    .buf_V_6_ce0(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_ce0),
    .buf_V_6_q0(buf_V_6_q0),
    .buf_V_6_address1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_address1),
    .buf_V_6_ce1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_ce1),
    .buf_V_6_we1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_we1),
    .buf_V_6_d1(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_6_d1),
    .tp_V(tp_V_reg_618),
    .mid_V(mid_V_reg_613),
    .bottom_V(bottom_V_reg_608),
    .cmp_i_i422_i(cmp_i_i422_i_reg_623),
    .b1_V_out(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_b1_V_out),
    .b1_V_out_ap_vld(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_b1_V_out_ap_vld),
    .b0_V_out(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_b0_V_out),
    .b0_V_out_ap_vld(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_b0_V_out_ap_vld),
    .m1_V_out(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_m1_V_out),
    .m1_V_out_ap_vld(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_m1_V_out_ap_vld),
    .m0_V_out(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_m0_V_out),
    .m0_V_out_ap_vld(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_m0_V_out_ap_vld),
    .t1_V_out(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_t1_V_out),
    .t1_V_out_ap_vld(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_t1_V_out_ap_vld),
    .t0_V_out(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_t0_V_out),
    .t0_V_out_ap_vld(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_t0_V_out_ap_vld),
    .ap_ext_blocking_n(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_ext_blocking_n),
    .ap_str_blocking_n(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_str_blocking_n),
    .ap_int_blocking_n(grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_int_blocking_n)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((icmp_ln1027_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_start_reg <= 1'b1;
        end else if ((grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_ready == 1'b1)) begin
            grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln1027_fu_229_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_start_reg <= 1'b1;
        end else if ((grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_ready == 1'b1)) begin
            grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((img_width_c26_full_n == 1'b0) | (img_height_c22_full_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        row_V_fu_94 <= 13'd1;
    end else if (((icmp_ln1027_fu_229_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        row_V_fu_94 <= row_V_9_fu_379_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((img_width_c26_full_n == 1'b0) | (img_height_c22_full_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        row_ind_V_fu_90 <= 13'd2;
    end else if (((icmp_ln1027_fu_229_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        row_ind_V_fu_90 <= row_ind_V_13_fu_371_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1027_fu_229_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        bottom_V_reg_608 <= bottom_V_fu_282_p3;
        bottom_fu_106 <= bottom_V_fu_282_p3;
        cmp_i_i422_i_reg_623 <= cmp_i_i422_i_fu_353_p2;
        mid_V_reg_613 <= mid_V_fu_313_p3;
        mid_fu_102 <= mid_V_fu_313_p3;
        tp_V_reg_618 <= tp_V_fu_344_p3;
        tp_fu_98 <= tp_V_fu_344_p3;
    end
end

always @ (*) begin
    if (((img_width_c26_full_n == 1'b0) | (img_height_c22_full_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if ((gaussian_mat_data1_full_n == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1027_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if ((((ap_wait_1 & ap_sub_ext_blocking_1) == 1'b1) & ((ap_wait_0 & ap_sub_ext_blocking_0) == 1'b1))) begin
        ap_ext_blocking_sub_n = 1'b0;
    end else begin
        ap_ext_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_wait_1 & ap_sub_int_blocking_1) == 1'b1) & ((ap_wait_0 & ap_sub_int_blocking_0) == 1'b1))) begin
        ap_int_blocking_sub_n = 1'b0;
    end else begin
        ap_int_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_wait_1 & ap_sub_str_blocking_1) == 1'b1) & ((ap_wait_0 & ap_sub_str_blocking_0) == 1'b1))) begin
        ap_str_blocking_sub_n = 1'b0;
    end else begin
        ap_str_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if ((grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_ext_blocking_n == 1'b0)) begin
        ap_sub_ext_blocking_0 = 1'b1;
    end else begin
        ap_sub_ext_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_ext_blocking_n == 1'b0)) begin
        ap_sub_ext_blocking_1 = 1'b1;
    end else begin
        ap_sub_ext_blocking_1 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_int_blocking_n == 1'b0)) begin
        ap_sub_int_blocking_0 = 1'b1;
    end else begin
        ap_sub_int_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_int_blocking_n == 1'b0)) begin
        ap_sub_int_blocking_1 = 1'b1;
    end else begin
        ap_sub_int_blocking_1 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_str_blocking_n == 1'b0)) begin
        ap_sub_str_blocking_0 = 1'b1;
    end else begin
        ap_sub_str_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_str_blocking_n == 1'b0)) begin
        ap_sub_str_blocking_1 = 1'b1;
    end else begin
        ap_sub_str_blocking_1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_ST_fsm_state3 == ap_CS_fsm)) begin
        ap_wait_0 = 1'b1;
    end else begin
        ap_wait_0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_ST_fsm_state6 == ap_CS_fsm)) begin
        ap_wait_1 = 1'b1;
    end else begin
        ap_wait_1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_5_address1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_5_address1 = grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_5_address1;
    end else begin
        buf_V_5_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_5_ce0 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_ce0;
    end else begin
        buf_V_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_5_ce1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_5_ce1 = grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_5_ce1;
    end else begin
        buf_V_5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_5_d1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_d1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_5_d1 = grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_5_d1;
    end else begin
        buf_V_5_d1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_5_we1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_5_we1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_5_we1 = grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_5_we1;
    end else begin
        buf_V_5_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_address1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_address1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_address1 = grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_address1;
    end else begin
        buf_V_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_ce0 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_ce0;
    end else begin
        buf_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_ce1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_ce1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_ce1 = grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_ce1;
    end else begin
        buf_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_d1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_d1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_d1 = grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_d1;
    end else begin
        buf_V_d1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_V_we1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_buf_V_we1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_V_we1 = grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_buf_V_we1;
    end else begin
        buf_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        gaussian_mat_data1_blk_n = gaussian_mat_data1_full_n;
    end else begin
        gaussian_mat_data1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((gaussian_mat_data1_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        gaussian_mat_data1_din = {{add_ln52_1_fu_508_p2[11:4]}};
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        gaussian_mat_data1_din = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_gaussian_mat_data1_din;
    end else begin
        gaussian_mat_data1_din = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_gaussian_mat_data1_din;
    end
end

always @ (*) begin
    if (((gaussian_mat_data1_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        gaussian_mat_data1_write = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        gaussian_mat_data1_write = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_gaussian_mat_data1_write;
    end else begin
        gaussian_mat_data1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_height_c22_blk_n = img_height_c22_full_n;
    end else begin
        img_height_c22_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_width_c26_full_n == 1'b0) | (img_height_c22_full_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_height_c22_write = 1'b1;
    end else begin
        img_height_c22_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_width_c26_blk_n = img_width_c26_full_n;
    end else begin
        img_width_c26_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_width_c26_full_n == 1'b0) | (img_height_c22_full_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_width_c26_write = 1'b1;
    end else begin
        img_width_c26_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        in_mat_data1_read = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_in_mat_data1_read;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        in_mat_data1_read = grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_in_mat_data1_read;
    end else begin
        in_mat_data1_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1027_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((img_width_c26_full_n == 1'b0) | (img_height_c22_full_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln1027_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((gaussian_mat_data1_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A0_fu_436_p2 = (zext_ln1632_1_fu_432_p1 + zext_ln1632_fu_428_p1);

assign A1_fu_470_p3 = {{add_ln50_1_fu_464_p2}, {1'd0}};

assign A2_fu_478_p3 = {{grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_m1_V_out}, {2'd0}};

assign add_ln50_1_fu_464_p2 = (zext_ln50_2_fu_460_p1 + zext_ln50_1_fu_450_p1);

assign add_ln50_fu_454_p2 = (zext_ln50_fu_446_p1 + zext_ln47_fu_442_p1);

assign add_ln52_1_fu_508_p2 = (zext_ln52_3_fu_504_p1 + zext_ln52_1_fu_490_p1);

assign add_ln52_fu_498_p2 = (zext_ln52_2_fu_494_p1 + zext_ln52_fu_486_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state1 = ((img_width_c26_full_n == 1'b0) | (img_height_c22_full_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0));
end

assign ap_ext_blocking_n = (ap_ext_blocking_sub_n & 1'b1);

assign ap_int_blocking_cur_n = (img_width_c26_blk_n & img_height_c22_blk_n & gaussian_mat_data1_blk_n);

assign ap_int_blocking_n = (ap_int_blocking_sub_n & ap_int_blocking_cur_n);

assign ap_ready = internal_ap_ready;

assign ap_str_blocking_n = (ap_str_blocking_sub_n & 1'b1);

assign bottom_V_fu_282_p3 = ((empty_108_fu_276_p2[0:0] == 1'b1) ? empty_107_fu_272_p1 : select_ln231_fu_252_p3);

assign cmp_i_i422_i_fu_353_p2 = ((zext_ln1027_fu_225_p1 < img_height) ? 1'b1 : 1'b0);

assign empty_107_fu_272_p1 = icmp_ln231_2_fu_266_p2;

assign empty_108_fu_276_p2 = (icmp_ln231_2_fu_266_p2 | icmp_ln231_1_fu_260_p2);

assign empty_109_fu_299_p3 = ((icmp_ln231_2_fu_266_p2[0:0] == 1'b1) ? 2'd0 : 2'd2);

assign empty_110_fu_307_p2 = (icmp_ln231_2_fu_266_p2 | icmp_ln231_1_fu_260_p2);

assign empty_111_fu_330_p3 = ((icmp_ln231_2_fu_266_p2[0:0] == 1'b1) ? 2'd2 : 2'd1);

assign empty_112_fu_338_p2 = (icmp_ln231_2_fu_266_p2 | icmp_ln231_1_fu_260_p2);

assign grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_start = grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181_ap_start_reg;

assign grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_start = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_ap_start_reg;

assign icmp_ln1019_fu_365_p2 = ((row_ind_V_12_fu_359_p2 == 13'd3) ? 1'b1 : 1'b0);

assign icmp_ln1027_fu_229_p2 = ((zext_ln1027_fu_225_p1 > img_height) ? 1'b1 : 1'b0);

assign icmp_ln231_1_fu_260_p2 = ((row_ind_V_fu_90 == 13'd0) ? 1'b1 : 1'b0);

assign icmp_ln231_2_fu_266_p2 = ((row_ind_V_fu_90 == 13'd1) ? 1'b1 : 1'b0);

assign icmp_ln231_fu_246_p2 = ((row_ind_V_fu_90 == 13'd2) ? 1'b1 : 1'b0);

assign img_height_c22_din = img_height;

assign img_width_c26_din = img_width;

assign mid_V_fu_313_p3 = ((empty_110_fu_307_p2[0:0] == 1'b1) ? empty_109_fu_299_p3 : select_ln231_1_fu_291_p3);

assign row_V_9_fu_379_p2 = (row_V_fu_94 + 13'd1);

assign row_ind_V_12_fu_359_p2 = (row_ind_V_fu_90 + 13'd1);

assign row_ind_V_13_fu_371_p3 = ((icmp_ln1019_fu_365_p2[0:0] == 1'b1) ? 13'd0 : row_ind_V_12_fu_359_p2);

assign select_ln231_1_fu_291_p3 = ((icmp_ln231_fu_246_p2[0:0] == 1'b1) ? 2'd1 : mid_fu_102);

assign select_ln231_2_fu_322_p3 = ((icmp_ln231_fu_246_p2[0:0] == 1'b1) ? 2'd0 : tp_fu_98);

assign select_ln231_fu_252_p3 = ((icmp_ln231_fu_246_p2[0:0] == 1'b1) ? 2'd2 : bottom_fu_106);

assign start_out = real_start;

assign tp_V_fu_344_p3 = ((empty_112_fu_338_p2[0:0] == 1'b1) ? empty_111_fu_330_p3 : select_ln231_2_fu_322_p3);

assign zext_ln1027_fu_225_p1 = row_V_fu_94;

assign zext_ln1632_1_fu_432_p1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_b0_V_out;

assign zext_ln1632_fu_428_p1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_t0_V_out;

assign zext_ln47_fu_442_p1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_t1_V_out;

assign zext_ln50_1_fu_450_p1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_b1_V_out;

assign zext_ln50_2_fu_460_p1 = add_ln50_fu_454_p2;

assign zext_ln50_fu_446_p1 = grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190_m0_V_out;

assign zext_ln52_1_fu_490_p1 = A1_fu_470_p3;

assign zext_ln52_2_fu_494_p1 = A2_fu_478_p3;

assign zext_ln52_3_fu_504_p1 = add_ln52_fu_498_p2;

assign zext_ln52_fu_486_p1 = A0_fu_436_p2;

endmodule //canny_accel_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_s
