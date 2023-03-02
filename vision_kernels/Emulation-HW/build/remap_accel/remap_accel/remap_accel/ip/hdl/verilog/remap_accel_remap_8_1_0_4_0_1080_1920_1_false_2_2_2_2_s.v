// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module remap_accel_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s (
        p_src_mat_rows_dout,
        p_src_mat_rows_empty_n,
        p_src_mat_rows_read,
        p_src_mat_cols_dout,
        p_src_mat_cols_empty_n,
        p_src_mat_cols_read,
        imgInput_data1_dout,
        imgInput_data1_empty_n,
        imgInput_data1_read,
        imgOutput_data4_din,
        imgOutput_data4_full_n,
        imgOutput_data4_write,
        mapX_data2_dout,
        mapX_data2_empty_n,
        mapX_data2_read,
        mapY_data3_dout,
        mapY_data3_empty_n,
        mapY_data3_read,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);


input  [31:0] p_src_mat_rows_dout;
input   p_src_mat_rows_empty_n;
output   p_src_mat_rows_read;
input  [31:0] p_src_mat_cols_dout;
input   p_src_mat_cols_empty_n;
output   p_src_mat_cols_read;
input  [7:0] imgInput_data1_dout;
input   imgInput_data1_empty_n;
output   imgInput_data1_read;
output  [7:0] imgOutput_data4_din;
input   imgOutput_data4_full_n;
output   imgOutput_data4_write;
input  [31:0] mapX_data2_dout;
input   mapX_data2_empty_n;
output   mapX_data2_read;
input  [31:0] mapY_data3_dout;
input   mapY_data3_empty_n;
output   mapY_data3_read;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

wire    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_start;
wire    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_done;
wire    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_continue;
wire    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_idle;
wire    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_ready;
wire    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_p_src_mat_rows_read;
wire    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_p_src_mat_cols_read;
wire   [15:0] remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_return_0;
wire   [15:0] remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_return_1;
wire    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_ext_blocking_n;
wire    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_str_blocking_n;
wire    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_int_blocking_n;
wire    ap_channel_done_cols_loc_channel;
wire    cols_loc_channel_full_n;
reg    ap_sync_reg_channel_write_cols_loc_channel;
wire    ap_sync_channel_write_cols_loc_channel;
wire    ap_channel_done_rows_loc_channel;
wire    rows_loc_channel_full_n;
reg    ap_sync_reg_channel_write_rows_loc_channel;
wire    ap_sync_channel_write_rows_loc_channel;
wire    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_start;
wire    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_done;
wire    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_continue;
wire    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_idle;
wire    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ready;
wire    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgInput_data1_read;
wire   [7:0] xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgOutput_data4_din;
wire    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgOutput_data4_write;
wire    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_mapX_data2_read;
wire    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_mapY_data3_read;
wire    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ext_blocking_n;
wire    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_str_blocking_n;
wire    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_int_blocking_n;
wire   [15:0] rows_loc_channel_dout;
wire   [1:0] rows_loc_channel_num_data_valid;
wire   [1:0] rows_loc_channel_fifo_cap;
wire    rows_loc_channel_empty_n;
wire   [15:0] cols_loc_channel_dout;
wire   [1:0] cols_loc_channel_num_data_valid;
wire   [1:0] cols_loc_channel_fifo_cap;
wire    cols_loc_channel_empty_n;
wire    ap_ext_blocking_cur_n;
wire    ap_str_blocking_cur_n;
wire    ap_int_blocking_cur_n;
wire    ap_ext_blocking_sub_n;
wire    ap_str_blocking_sub_n;
wire    ap_int_blocking_sub_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_cols_loc_channel = 1'b0;
#0 ap_sync_reg_channel_write_rows_loc_channel = 1'b0;
end

remap_accel_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_start),
    .ap_done(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_done),
    .ap_continue(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_continue),
    .ap_idle(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_idle),
    .ap_ready(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_ready),
    .p_src_mat_rows_dout(p_src_mat_rows_dout),
    .p_src_mat_rows_num_data_valid(2'd0),
    .p_src_mat_rows_fifo_cap(2'd0),
    .p_src_mat_rows_empty_n(p_src_mat_rows_empty_n),
    .p_src_mat_rows_read(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_p_src_mat_rows_read),
    .p_src_mat_cols_dout(p_src_mat_cols_dout),
    .p_src_mat_cols_num_data_valid(2'd0),
    .p_src_mat_cols_fifo_cap(2'd0),
    .p_src_mat_cols_empty_n(p_src_mat_cols_empty_n),
    .p_src_mat_cols_read(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_p_src_mat_cols_read),
    .ap_return_0(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_return_0),
    .ap_return_1(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_return_1),
    .ap_ext_blocking_n(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_str_blocking_n),
    .ap_int_blocking_n(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_int_blocking_n)
);

remap_accel_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_start),
    .ap_done(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_done),
    .ap_continue(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_continue),
    .ap_idle(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_idle),
    .ap_ready(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ready),
    .imgInput_data1_dout(imgInput_data1_dout),
    .imgInput_data1_num_data_valid(2'd0),
    .imgInput_data1_fifo_cap(2'd0),
    .imgInput_data1_empty_n(imgInput_data1_empty_n),
    .imgInput_data1_read(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgInput_data1_read),
    .imgOutput_data4_din(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgOutput_data4_din),
    .imgOutput_data4_num_data_valid(2'd0),
    .imgOutput_data4_fifo_cap(2'd0),
    .imgOutput_data4_full_n(imgOutput_data4_full_n),
    .imgOutput_data4_write(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgOutput_data4_write),
    .mapX_data2_dout(mapX_data2_dout),
    .mapX_data2_num_data_valid(2'd0),
    .mapX_data2_fifo_cap(2'd0),
    .mapX_data2_empty_n(mapX_data2_empty_n),
    .mapX_data2_read(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_mapX_data2_read),
    .mapY_data3_dout(mapY_data3_dout),
    .mapY_data3_num_data_valid(2'd0),
    .mapY_data3_fifo_cap(2'd0),
    .mapY_data3_empty_n(mapY_data3_empty_n),
    .mapY_data3_read(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_mapY_data3_read),
    .p_read(rows_loc_channel_dout),
    .p_read1(cols_loc_channel_dout),
    .ap_ext_blocking_n(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_str_blocking_n),
    .ap_int_blocking_n(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_int_blocking_n)
);

remap_accel_fifo_w16_d2_S rows_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_return_0),
    .if_full_n(rows_loc_channel_full_n),
    .if_write(ap_channel_done_rows_loc_channel),
    .if_dout(rows_loc_channel_dout),
    .if_num_data_valid(rows_loc_channel_num_data_valid),
    .if_fifo_cap(rows_loc_channel_fifo_cap),
    .if_empty_n(rows_loc_channel_empty_n),
    .if_read(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ready)
);

remap_accel_fifo_w16_d2_S cols_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_return_1),
    .if_full_n(cols_loc_channel_full_n),
    .if_write(ap_channel_done_cols_loc_channel),
    .if_dout(cols_loc_channel_dout),
    .if_num_data_valid(cols_loc_channel_num_data_valid),
    .if_fifo_cap(cols_loc_channel_fifo_cap),
    .if_empty_n(cols_loc_channel_empty_n),
    .if_read(xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_cols_loc_channel <= 1'b0;
    end else begin
        if (((remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_done & remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_cols_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_cols_loc_channel <= ap_sync_channel_write_cols_loc_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_rows_loc_channel <= 1'b0;
    end else begin
        if (((remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_done & remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_rows_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_rows_loc_channel <= ap_sync_channel_write_rows_loc_channel;
        end
    end
end

assign ap_channel_done_cols_loc_channel = (remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_done & (ap_sync_reg_channel_write_cols_loc_channel ^ 1'b1));

assign ap_channel_done_rows_loc_channel = (remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_done & (ap_sync_reg_channel_write_rows_loc_channel ^ 1'b1));

assign ap_done = xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_done;

assign ap_ext_blocking_cur_n = 1'b1;

assign ap_ext_blocking_n = (ap_ext_blocking_sub_n & ap_ext_blocking_cur_n);

assign ap_ext_blocking_sub_n = (xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ext_blocking_n & remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_ext_blocking_n);

assign ap_idle = (xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_idle & remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_idle & (cols_loc_channel_empty_n ^ 1'b1) & (rows_loc_channel_empty_n ^ 1'b1));

assign ap_int_blocking_cur_n = 1'b1;

assign ap_int_blocking_n = (ap_int_blocking_sub_n & ap_int_blocking_cur_n);

assign ap_int_blocking_sub_n = (xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_int_blocking_n & remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_int_blocking_n);

assign ap_ready = remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_ready;

assign ap_str_blocking_cur_n = 1'b1;

assign ap_str_blocking_n = (ap_str_blocking_sub_n & ap_str_blocking_cur_n);

assign ap_str_blocking_sub_n = (xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_str_blocking_n & remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_str_blocking_n);

assign ap_sync_channel_write_cols_loc_channel = ((cols_loc_channel_full_n & ap_channel_done_cols_loc_channel) | ap_sync_reg_channel_write_cols_loc_channel);

assign ap_sync_channel_write_rows_loc_channel = ((rows_loc_channel_full_n & ap_channel_done_rows_loc_channel) | ap_sync_reg_channel_write_rows_loc_channel);

assign imgInput_data1_read = xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgInput_data1_read;

assign imgOutput_data4_din = xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgOutput_data4_din;

assign imgOutput_data4_write = xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgOutput_data4_write;

assign mapX_data2_read = xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_mapX_data2_read;

assign mapY_data3_read = xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_mapY_data3_read;

assign p_src_mat_cols_read = remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_p_src_mat_cols_read;

assign p_src_mat_rows_read = remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_p_src_mat_rows_read;

assign remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_continue = (ap_sync_channel_write_rows_loc_channel & ap_sync_channel_write_cols_loc_channel);

assign remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_start = ap_start;

assign xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_continue = ap_continue;

assign xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_start = (rows_loc_channel_empty_n & cols_loc_channel_empty_n);

endmodule //remap_accel_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s
