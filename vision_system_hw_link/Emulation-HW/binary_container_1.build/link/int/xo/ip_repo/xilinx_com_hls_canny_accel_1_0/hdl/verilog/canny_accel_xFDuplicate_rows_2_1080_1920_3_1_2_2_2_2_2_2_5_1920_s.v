// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_accel_xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_s (
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
        gradx_mat_data2_dout,
        gradx_mat_data2_num_data_valid,
        gradx_mat_data2_fifo_cap,
        gradx_mat_data2_empty_n,
        gradx_mat_data2_read,
        grady_mat_data5_dout,
        grady_mat_data5_num_data_valid,
        grady_mat_data5_fifo_cap,
        grady_mat_data5_empty_n,
        grady_mat_data5_read,
        gradx1_mat_data3_din,
        gradx1_mat_data3_num_data_valid,
        gradx1_mat_data3_fifo_cap,
        gradx1_mat_data3_full_n,
        gradx1_mat_data3_write,
        gradx2_mat_data4_din,
        gradx2_mat_data4_num_data_valid,
        gradx2_mat_data4_fifo_cap,
        gradx2_mat_data4_full_n,
        gradx2_mat_data4_write,
        grady1_mat_data6_din,
        grady1_mat_data6_num_data_valid,
        grady1_mat_data6_fifo_cap,
        grady1_mat_data6_full_n,
        grady1_mat_data6_write,
        grady2_mat_data7_din,
        grady2_mat_data7_num_data_valid,
        grady2_mat_data7_fifo_cap,
        grady2_mat_data7_full_n,
        grady2_mat_data7_write,
        img_height_dout,
        img_height_num_data_valid,
        img_height_fifo_cap,
        img_height_empty_n,
        img_height_read,
        img_width_dout,
        img_width_num_data_valid,
        img_width_fifo_cap,
        img_width_empty_n,
        img_width_read,
        img_height_c20_din,
        img_height_c20_num_data_valid,
        img_height_c20_fifo_cap,
        img_height_c20_full_n,
        img_height_c20_write,
        img_width_c24_din,
        img_width_c24_num_data_valid,
        img_width_c24_fifo_cap,
        img_width_c24_full_n,
        img_width_c24_write,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

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
input  [15:0] gradx_mat_data2_dout;
input  [1:0] gradx_mat_data2_num_data_valid;
input  [1:0] gradx_mat_data2_fifo_cap;
input   gradx_mat_data2_empty_n;
output   gradx_mat_data2_read;
input  [15:0] grady_mat_data5_dout;
input  [1:0] grady_mat_data5_num_data_valid;
input  [1:0] grady_mat_data5_fifo_cap;
input   grady_mat_data5_empty_n;
output   grady_mat_data5_read;
output  [15:0] gradx1_mat_data3_din;
input  [1:0] gradx1_mat_data3_num_data_valid;
input  [1:0] gradx1_mat_data3_fifo_cap;
input   gradx1_mat_data3_full_n;
output   gradx1_mat_data3_write;
output  [15:0] gradx2_mat_data4_din;
input  [1:0] gradx2_mat_data4_num_data_valid;
input  [1:0] gradx2_mat_data4_fifo_cap;
input   gradx2_mat_data4_full_n;
output   gradx2_mat_data4_write;
output  [15:0] grady1_mat_data6_din;
input  [1:0] grady1_mat_data6_num_data_valid;
input  [1:0] grady1_mat_data6_fifo_cap;
input   grady1_mat_data6_full_n;
output   grady1_mat_data6_write;
output  [15:0] grady2_mat_data7_din;
input  [1:0] grady2_mat_data7_num_data_valid;
input  [1:0] grady2_mat_data7_fifo_cap;
input   grady2_mat_data7_full_n;
output   grady2_mat_data7_write;
input  [15:0] img_height_dout;
input  [1:0] img_height_num_data_valid;
input  [1:0] img_height_fifo_cap;
input   img_height_empty_n;
output   img_height_read;
input  [15:0] img_width_dout;
input  [1:0] img_width_num_data_valid;
input  [1:0] img_width_fifo_cap;
input   img_width_empty_n;
output   img_width_read;
output  [15:0] img_height_c20_din;
input  [1:0] img_height_c20_num_data_valid;
input  [1:0] img_height_c20_fifo_cap;
input   img_height_c20_full_n;
output   img_height_c20_write;
output  [15:0] img_width_c24_din;
input  [1:0] img_width_c24_num_data_valid;
input  [1:0] img_width_c24_fifo_cap;
input   img_width_c24_full_n;
output   img_width_c24_write;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_done;
reg ap_idle;
reg start_write;
reg gradx_mat_data2_read;
reg grady_mat_data5_read;
reg gradx1_mat_data3_write;
reg gradx2_mat_data4_write;
reg grady1_mat_data6_write;
reg grady2_mat_data7_write;
reg img_height_read;
reg img_width_read;
reg img_height_c20_write;
reg img_width_c24_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    img_height_blk_n;
reg    img_width_blk_n;
reg    img_height_c20_blk_n;
reg    img_width_c24_blk_n;
reg   [15:0] img_width_read_reg_146;
reg   [15:0] img_height_read_reg_151;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_start;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_done;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_idle;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_ready;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady_mat_data5_read;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx_mat_data2_read;
wire   [15:0] grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx1_mat_data3_din;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx1_mat_data3_write;
wire   [15:0] grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx2_mat_data4_din;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx2_mat_data4_write;
wire   [15:0] grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady1_mat_data6_din;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady1_mat_data6_write;
wire   [15:0] grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady2_mat_data7_din;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady2_mat_data7_write;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_ext_blocking_n;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_str_blocking_n;
wire    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_int_blocking_n;
reg    grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln1027_fu_123_p2;
wire    ap_CS_fsm_state3;
reg   [12:0] row_V_fu_62;
wire   [12:0] row_V_7_fu_128_p2;
reg    ap_block_state1;
wire   [15:0] zext_ln1027_fu_119_p1;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_int_blocking_cur_n;
reg    ap_ext_blocking_sub_n;
reg    ap_wait_0;
reg    ap_sub_ext_blocking_0;
reg    ap_str_blocking_sub_n;
reg    ap_sub_str_blocking_0;
reg    ap_int_blocking_sub_n;
reg    ap_sub_int_blocking_0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_start_reg = 1'b0;
end

canny_accel_xFDuplicate_rows_Pipeline_Col_Loop grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_start),
    .ap_done(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_done),
    .ap_idle(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_idle),
    .ap_ready(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_ready),
    .grady_mat_data5_dout(grady_mat_data5_dout),
    .grady_mat_data5_num_data_valid(2'd0),
    .grady_mat_data5_fifo_cap(2'd0),
    .grady_mat_data5_empty_n(grady_mat_data5_empty_n),
    .grady_mat_data5_read(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady_mat_data5_read),
    .gradx_mat_data2_dout(gradx_mat_data2_dout),
    .gradx_mat_data2_num_data_valid(2'd0),
    .gradx_mat_data2_fifo_cap(2'd0),
    .gradx_mat_data2_empty_n(gradx_mat_data2_empty_n),
    .gradx_mat_data2_read(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx_mat_data2_read),
    .gradx1_mat_data3_din(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx1_mat_data3_din),
    .gradx1_mat_data3_num_data_valid(2'd0),
    .gradx1_mat_data3_fifo_cap(2'd0),
    .gradx1_mat_data3_full_n(gradx1_mat_data3_full_n),
    .gradx1_mat_data3_write(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx1_mat_data3_write),
    .gradx2_mat_data4_din(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx2_mat_data4_din),
    .gradx2_mat_data4_num_data_valid(2'd0),
    .gradx2_mat_data4_fifo_cap(2'd0),
    .gradx2_mat_data4_full_n(gradx2_mat_data4_full_n),
    .gradx2_mat_data4_write(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx2_mat_data4_write),
    .grady1_mat_data6_din(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady1_mat_data6_din),
    .grady1_mat_data6_num_data_valid(2'd0),
    .grady1_mat_data6_fifo_cap(2'd0),
    .grady1_mat_data6_full_n(grady1_mat_data6_full_n),
    .grady1_mat_data6_write(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady1_mat_data6_write),
    .grady2_mat_data7_din(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady2_mat_data7_din),
    .grady2_mat_data7_num_data_valid(2'd0),
    .grady2_mat_data7_fifo_cap(2'd0),
    .grady2_mat_data7_full_n(grady2_mat_data7_full_n),
    .grady2_mat_data7_write(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady2_mat_data7_write),
    .img_width_load(img_width_read_reg_146),
    .ap_ext_blocking_n(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_ext_blocking_n),
    .ap_str_blocking_n(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_str_blocking_n),
    .ap_int_blocking_n(grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_int_blocking_n)
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
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1027_fu_123_p2 == 1'd0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1027_fu_123_p2 == 1'd1))) begin
            grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_start_reg <= 1'b1;
        end else if ((grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_ready == 1'b1)) begin
            grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (img_width_c24_full_n == 1'b0) | (img_height_c20_full_n == 1'b0) | (img_width_empty_n == 1'b0) | (img_height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        row_V_fu_62 <= 13'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1027_fu_123_p2 == 1'd1))) begin
        row_V_fu_62 <= row_V_7_fu_128_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img_height_read_reg_151 <= img_height_dout;
        img_width_read_reg_146 <= img_width_dout;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) | (img_width_c24_full_n == 1'b0) | (img_height_c20_full_n == 1'b0) | (img_width_empty_n == 1'b0) | (img_height_empty_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1027_fu_123_p2 == 1'd0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_wait_0 & ap_sub_ext_blocking_0) == 1'b1)) begin
        ap_ext_blocking_sub_n = 1'b0;
    end else begin
        ap_ext_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_wait_0 & ap_sub_int_blocking_0) == 1'b1)) begin
        ap_int_blocking_sub_n = 1'b0;
    end else begin
        ap_int_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_wait_0 & ap_sub_str_blocking_0) == 1'b1)) begin
        ap_str_blocking_sub_n = 1'b0;
    end else begin
        ap_str_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if ((grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_ext_blocking_n == 1'b0)) begin
        ap_sub_ext_blocking_0 = 1'b1;
    end else begin
        ap_sub_ext_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_int_blocking_n == 1'b0)) begin
        ap_sub_int_blocking_0 = 1'b1;
    end else begin
        ap_sub_int_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_str_blocking_n == 1'b0)) begin
        ap_sub_str_blocking_0 = 1'b1;
    end else begin
        ap_sub_str_blocking_0 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        gradx1_mat_data3_write = grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx1_mat_data3_write;
    end else begin
        gradx1_mat_data3_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        gradx2_mat_data4_write = grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx2_mat_data4_write;
    end else begin
        gradx2_mat_data4_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        gradx_mat_data2_read = grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx_mat_data2_read;
    end else begin
        gradx_mat_data2_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grady1_mat_data6_write = grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady1_mat_data6_write;
    end else begin
        grady1_mat_data6_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grady2_mat_data7_write = grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady2_mat_data7_write;
    end else begin
        grady2_mat_data7_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grady_mat_data5_read = grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady_mat_data5_read;
    end else begin
        grady_mat_data5_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_height_blk_n = img_height_empty_n;
    end else begin
        img_height_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_height_c20_blk_n = img_height_c20_full_n;
    end else begin
        img_height_c20_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (img_width_c24_full_n == 1'b0) | (img_height_c20_full_n == 1'b0) | (img_width_empty_n == 1'b0) | (img_height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_height_c20_write = 1'b1;
    end else begin
        img_height_c20_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (img_width_c24_full_n == 1'b0) | (img_height_c20_full_n == 1'b0) | (img_width_empty_n == 1'b0) | (img_height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_height_read = 1'b1;
    end else begin
        img_height_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_width_blk_n = img_width_empty_n;
    end else begin
        img_width_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_width_c24_blk_n = img_width_c24_full_n;
    end else begin
        img_width_c24_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (img_width_c24_full_n == 1'b0) | (img_height_c20_full_n == 1'b0) | (img_width_empty_n == 1'b0) | (img_height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_width_c24_write = 1'b1;
    end else begin
        img_width_c24_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (img_width_c24_full_n == 1'b0) | (img_height_c20_full_n == 1'b0) | (img_width_empty_n == 1'b0) | (img_height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_width_read = 1'b1;
    end else begin
        img_width_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1027_fu_123_p2 == 1'd0))) begin
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
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (img_width_c24_full_n == 1'b0) | (img_height_c20_full_n == 1'b0) | (img_width_empty_n == 1'b0) | (img_height_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1027_fu_123_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (img_width_c24_full_n == 1'b0) | (img_height_c20_full_n == 1'b0) | (img_width_empty_n == 1'b0) | (img_height_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ext_blocking_n = (ap_ext_blocking_sub_n & 1'b1);

assign ap_int_blocking_cur_n = (img_width_c24_blk_n & img_width_blk_n & img_height_c20_blk_n & img_height_blk_n);

assign ap_int_blocking_n = (ap_int_blocking_sub_n & ap_int_blocking_cur_n);

assign ap_ready = internal_ap_ready;

assign ap_str_blocking_n = (ap_str_blocking_sub_n & 1'b1);

assign gradx1_mat_data3_din = grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx1_mat_data3_din;

assign gradx2_mat_data4_din = grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_gradx2_mat_data4_din;

assign grady1_mat_data6_din = grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady1_mat_data6_din;

assign grady2_mat_data7_din = grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_grady2_mat_data7_din;

assign grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_start = grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94_ap_start_reg;

assign icmp_ln1027_fu_123_p2 = ((zext_ln1027_fu_119_p1 < img_height_read_reg_151) ? 1'b1 : 1'b0);

assign img_height_c20_din = img_height_dout;

assign img_width_c24_din = img_width_dout;

assign row_V_7_fu_128_p2 = (row_V_fu_62 + 13'd1);

assign start_out = real_start;

assign zext_ln1027_fu_119_p1 = row_V_fu_62;

endmodule //canny_accel_xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_s
