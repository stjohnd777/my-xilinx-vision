// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fast_accel_fast_1_0_2160_3840_1_2_2_s (
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
        imgInput_data1_dout,
        imgInput_data1_num_data_valid,
        imgInput_data1_fifo_cap,
        imgInput_data1_empty_n,
        imgInput_data1_read,
        imgOutput_data2_din,
        imgOutput_data2_num_data_valid,
        imgOutput_data2_fifo_cap,
        imgOutput_data2_full_n,
        imgOutput_data2_write,
        p_threshold_dout,
        p_threshold_num_data_valid,
        p_threshold_fifo_cap,
        p_threshold_empty_n,
        p_threshold_read
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
input  [7:0] imgInput_data1_dout;
input  [1:0] imgInput_data1_num_data_valid;
input  [1:0] imgInput_data1_fifo_cap;
input   imgInput_data1_empty_n;
output   imgInput_data1_read;
output  [7:0] imgOutput_data2_din;
input  [1:0] imgOutput_data2_num_data_valid;
input  [1:0] imgOutput_data2_fifo_cap;
input   imgOutput_data2_full_n;
output   imgOutput_data2_write;
input  [7:0] p_threshold_dout;
input  [2:0] p_threshold_num_data_valid;
input  [2:0] p_threshold_fifo_cap;
input   p_threshold_empty_n;
output   p_threshold_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_mat_rows_read;
reg p_src_mat_cols_read;
reg imgInput_data1_read;
reg imgOutput_data2_write;
reg p_threshold_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_src_mat_rows_blk_n;
reg    p_src_mat_cols_blk_n;
reg    p_threshold_blk_n;
reg   [7:0] p_threshold_read_reg_76;
wire   [15:0] trunc_ln999_fu_66_p1;
reg   [15:0] trunc_ln999_reg_81;
wire   [15:0] trunc_ln999_1_fu_71_p1;
reg   [15:0] trunc_ln999_1_reg_86;
wire    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgInput_data1_read;
wire   [7:0] grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_din;
wire    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_write;
wire    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start;
wire    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done;
wire    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready;
wire    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_idle;
reg    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_continue;
reg    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start_reg;
reg    ap_block_state1_ignore_call10;
wire    ap_CS_fsm_state2;
wire    ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready;
wire    ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done;
reg    ap_block_state2_on_subcall_done;
reg    ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready;
reg    ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done;
reg    ap_block_state1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready = 1'b0;
#0 ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done = 1'b0;
end

fast_accel_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54(
    .imgInput_data1_dout(imgInput_data1_dout),
    .imgInput_data1_empty_n(imgInput_data1_empty_n),
    .imgInput_data1_read(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgInput_data1_read),
    .imgOutput_data2_din(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_din),
    .imgOutput_data2_full_n(imgOutput_data2_full_n),
    .imgOutput_data2_write(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_write),
    .p_image_height(trunc_ln999_reg_81),
    .p_image_width(trunc_ln999_1_reg_86),
    .p_threshold(p_threshold_read_reg_76),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .p_image_height_ap_vld(1'b1),
    .p_image_width_ap_vld(1'b1),
    .p_threshold_ap_vld(1'b1),
    .ap_start(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start),
    .ap_done(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done),
    .ap_ready(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready),
    .ap_idle(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_idle),
    .ap_continue(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_continue)
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
        end else if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
            ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done <= 1'b0;
        end else if ((grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done == 1'b1)) begin
            ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
            ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready <= 1'b0;
        end else if ((grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start_reg <= 1'b0;
    end else begin
        if (((~((ap_start == 1'b0) | (p_threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready == 1'b0)))) begin
            grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start_reg <= 1'b1;
        end else if ((grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready == 1'b1)) begin
            grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        p_threshold_read_reg_76 <= p_threshold_dout;
        trunc_ln999_1_reg_86 <= trunc_ln999_1_fu_71_p1;
        trunc_ln999_reg_81 <= trunc_ln999_fu_66_p1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (p_threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state2_on_subcall_done)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_continue = 1'b1;
    end else begin
        grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        imgInput_data1_read = grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgInput_data1_read;
    end else begin
        imgInput_data1_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        imgOutput_data2_write = grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_write;
    end else begin
        imgOutput_data2_write = 1'b0;
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
    if ((~((ap_start == 1'b0) | (p_threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((ap_start == 1'b0) | (p_threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_rows_read = 1'b1;
    end else begin
        p_src_mat_rows_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_threshold_blk_n = p_threshold_empty_n;
    end else begin
        p_threshold_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_threshold_read = 1'b1;
    end else begin
        p_threshold_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (p_threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
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
    ap_block_state1 = ((ap_start == 1'b0) | (p_threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call10 = ((ap_start == 1'b0) | (p_threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_on_subcall_done = ((ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready & ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done) == 1'b0);
end

assign ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done = (grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done | ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done);

assign ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready = (grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready | ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready);

assign grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start = grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start_reg;

assign imgOutput_data2_din = grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_din;

assign trunc_ln999_1_fu_71_p1 = p_src_mat_cols_dout[15:0];

assign trunc_ln999_fu_66_p1 = p_src_mat_rows_dout[15:0];

endmodule //fast_accel_fast_1_0_2160_3840_1_2_2_s