// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sobel_accel_Sobel_0_3_0_0_2160_3840_1_false_2_2_2_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_src_mat_rows_dout,
        p_src_mat_rows_num_data_valid,
        p_src_mat_rows_fifo_cap,
        p_src_mat_rows_empty_n,
        p_src_mat_rows_read,
        p_src_mat_cols_dout,
        p_src_mat_cols_num_data_valid,
        p_src_mat_cols_fifo_cap,
        p_src_mat_cols_empty_n,
        p_src_mat_cols_read,
        in_mat_data1_dout,
        in_mat_data1_num_data_valid,
        in_mat_data1_fifo_cap,
        in_mat_data1_empty_n,
        in_mat_data1_read,
        p_dstgx_data2_din,
        p_dstgx_data2_num_data_valid,
        p_dstgx_data2_fifo_cap,
        p_dstgx_data2_full_n,
        p_dstgx_data2_write,
        p_dstgy_data3_din,
        p_dstgy_data3_num_data_valid,
        p_dstgy_data3_fifo_cap,
        p_dstgy_data3_full_n,
        p_dstgy_data3_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] p_src_mat_rows_dout;
input  [1:0] p_src_mat_rows_num_data_valid;
input  [1:0] p_src_mat_rows_fifo_cap;
input   p_src_mat_rows_empty_n;
output   p_src_mat_rows_read;
input  [31:0] p_src_mat_cols_dout;
input  [1:0] p_src_mat_cols_num_data_valid;
input  [1:0] p_src_mat_cols_fifo_cap;
input   p_src_mat_cols_empty_n;
output   p_src_mat_cols_read;
input  [7:0] in_mat_data1_dout;
input  [1:0] in_mat_data1_num_data_valid;
input  [1:0] in_mat_data1_fifo_cap;
input   in_mat_data1_empty_n;
output   in_mat_data1_read;
output  [7:0] p_dstgx_data2_din;
input  [1:0] p_dstgx_data2_num_data_valid;
input  [1:0] p_dstgx_data2_fifo_cap;
input   p_dstgx_data2_full_n;
output   p_dstgx_data2_write;
output  [7:0] p_dstgy_data3_din;
input  [1:0] p_dstgy_data3_num_data_valid;
input  [1:0] p_dstgy_data3_fifo_cap;
input   p_dstgy_data3_full_n;
output   p_dstgy_data3_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_mat_rows_read;
reg p_src_mat_cols_read;
reg in_mat_data1_read;
reg p_dstgx_data2_write;
reg p_dstgy_data3_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_src_mat_rows_blk_n;
reg    p_src_mat_cols_blk_n;
wire   [15:0] width_fu_58_p1;
reg   [15:0] width_reg_68;
wire   [15:0] height_fu_63_p1;
reg   [15:0] height_reg_73;
wire    grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_start;
wire    grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_done;
wire    grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_idle;
wire    grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_ready;
wire    grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_in_mat_data1_read;
wire   [7:0] grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_p_dstgx_data2_din;
wire    grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_p_dstgx_data2_write;
wire   [7:0] grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_p_dstgy_data3_din;
wire    grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_p_dstgy_data3_write;
reg    grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_start_reg;
reg    ap_block_state1_ignore_call9;
wire    ap_CS_fsm_state2;
reg    ap_block_state1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_start_reg = 1'b0;
end

sobel_accel_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_start),
    .ap_done(grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_done),
    .ap_idle(grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_idle),
    .ap_ready(grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_ready),
    .in_mat_data1_dout(in_mat_data1_dout),
    .in_mat_data1_num_data_valid(2'd0),
    .in_mat_data1_fifo_cap(2'd0),
    .in_mat_data1_empty_n(in_mat_data1_empty_n),
    .in_mat_data1_read(grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_in_mat_data1_read),
    .p_dstgx_data2_din(grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_p_dstgx_data2_din),
    .p_dstgx_data2_num_data_valid(2'd0),
    .p_dstgx_data2_fifo_cap(2'd0),
    .p_dstgx_data2_full_n(p_dstgx_data2_full_n),
    .p_dstgx_data2_write(grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_p_dstgx_data2_write),
    .p_dstgy_data3_din(grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_p_dstgy_data3_din),
    .p_dstgy_data3_num_data_valid(2'd0),
    .p_dstgy_data3_fifo_cap(2'd0),
    .p_dstgy_data3_full_n(p_dstgy_data3_full_n),
    .p_dstgy_data3_write(grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_p_dstgy_data3_write),
    .img_height(height_reg_73),
    .img_width(width_reg_68)
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
        end else if (((grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_start_reg <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_start_reg <= 1'b1;
        end else if ((grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_ready == 1'b1)) begin
            grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        height_reg_73 <= height_fu_63_p1;
        width_reg_68 <= width_fu_58_p1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if (((grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_mat_data1_read = grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_in_mat_data1_read;
    end else begin
        in_mat_data1_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_dstgx_data2_write = grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_p_dstgx_data2_write;
    end else begin
        p_dstgx_data2_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_dstgy_data3_write = grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_p_dstgy_data3_write;
    end else begin
        p_dstgy_data3_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_cols_blk_n = p_src_mat_cols_empty_n;
    end else begin
        p_src_mat_cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_cols_read = 1'b1;
    end else begin
        p_src_mat_cols_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_rows_blk_n = p_src_mat_rows_empty_n;
    end else begin
        p_src_mat_rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_rows_read = 1'b1;
    end else begin
        p_src_mat_rows_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call9 = ((ap_start == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_start = grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_ap_start_reg;

assign height_fu_63_p1 = p_src_mat_rows_dout[15:0];

assign p_dstgx_data2_din = grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_p_dstgx_data2_din;

assign p_dstgy_data3_din = grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46_p_dstgy_data3_din;

assign width_fu_58_p1 = p_src_mat_cols_dout[15:0];

endmodule //sobel_accel_Sobel_0_3_0_0_2160_3840_1_false_2_2_2_s
