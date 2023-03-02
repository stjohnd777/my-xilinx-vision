// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_accel_entry_proc18 (
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
        img_out,
        img_out_c_din,
        img_out_c_num_data_valid,
        img_out_c_fifo_cap,
        img_out_c_full_n,
        img_out_c_write,
        low_threshold,
        low_threshold_c_din,
        low_threshold_c_num_data_valid,
        low_threshold_c_fifo_cap,
        low_threshold_c_full_n,
        low_threshold_c_write,
        high_threshold,
        high_threshold_c_din,
        high_threshold_c_num_data_valid,
        high_threshold_c_fifo_cap,
        high_threshold_c_full_n,
        high_threshold_c_write
);

parameter    ap_ST_fsm_state1 = 1'd1;

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
input  [63:0] img_out;
output  [63:0] img_out_c_din;
input  [3:0] img_out_c_num_data_valid;
input  [3:0] img_out_c_fifo_cap;
input   img_out_c_full_n;
output   img_out_c_write;
input  [31:0] low_threshold;
output  [31:0] low_threshold_c_din;
input  [2:0] low_threshold_c_num_data_valid;
input  [2:0] low_threshold_c_fifo_cap;
input   low_threshold_c_full_n;
output   low_threshold_c_write;
input  [31:0] high_threshold;
output  [31:0] high_threshold_c_din;
input  [2:0] high_threshold_c_num_data_valid;
input  [2:0] high_threshold_c_fifo_cap;
input   high_threshold_c_full_n;
output   high_threshold_c_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg img_out_c_write;
reg low_threshold_c_write;
reg high_threshold_c_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    img_out_c_blk_n;
reg    low_threshold_c_blk_n;
reg    high_threshold_c_blk_n;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
end

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
        end else if ((~((real_start == 1'b0) | (high_threshold_c_full_n == 1'b0) | (low_threshold_c_full_n == 1'b0) | (img_out_c_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
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

always @ (*) begin
    if (((real_start == 1'b0) | (high_threshold_c_full_n == 1'b0) | (low_threshold_c_full_n == 1'b0) | (img_out_c_full_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (high_threshold_c_full_n == 1'b0) | (low_threshold_c_full_n == 1'b0) | (img_out_c_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        high_threshold_c_blk_n = high_threshold_c_full_n;
    end else begin
        high_threshold_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (high_threshold_c_full_n == 1'b0) | (low_threshold_c_full_n == 1'b0) | (img_out_c_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        high_threshold_c_write = 1'b1;
    end else begin
        high_threshold_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_out_c_blk_n = img_out_c_full_n;
    end else begin
        img_out_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (high_threshold_c_full_n == 1'b0) | (low_threshold_c_full_n == 1'b0) | (img_out_c_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_out_c_write = 1'b1;
    end else begin
        img_out_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (high_threshold_c_full_n == 1'b0) | (low_threshold_c_full_n == 1'b0) | (img_out_c_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        low_threshold_c_blk_n = low_threshold_c_full_n;
    end else begin
        low_threshold_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (high_threshold_c_full_n == 1'b0) | (low_threshold_c_full_n == 1'b0) | (img_out_c_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        low_threshold_c_write = 1'b1;
    end else begin
        low_threshold_c_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (high_threshold_c_full_n == 1'b0) | (low_threshold_c_full_n == 1'b0) | (img_out_c_full_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign high_threshold_c_din = high_threshold;

assign img_out_c_din = img_out;

assign low_threshold_c_din = low_threshold;

assign start_out = real_start;

endmodule //canny_accel_entry_proc18
