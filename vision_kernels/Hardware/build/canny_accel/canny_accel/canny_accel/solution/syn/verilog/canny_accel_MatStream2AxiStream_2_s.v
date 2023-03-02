// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_accel_MatStream2AxiStream_2_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        dst_mat_data2_dout,
        dst_mat_data2_num_data_valid,
        dst_mat_data2_fifo_cap,
        dst_mat_data2_empty_n,
        dst_mat_data2_read,
        ldata1_din,
        ldata1_num_data_valid,
        ldata1_fifo_cap,
        ldata1_full_n,
        ldata1_write,
        rows_dout,
        rows_num_data_valid,
        rows_fifo_cap,
        rows_empty_n,
        rows_read,
        cols_bound_per_npc,
        last_blk_width
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] dst_mat_data2_dout;
input  [1:0] dst_mat_data2_num_data_valid;
input  [1:0] dst_mat_data2_fifo_cap;
input   dst_mat_data2_empty_n;
output   dst_mat_data2_read;
output  [63:0] ldata1_din;
input  [1:0] ldata1_num_data_valid;
input  [1:0] ldata1_fifo_cap;
input   ldata1_full_n;
output   ldata1_write;
input  [15:0] rows_dout;
input  [2:0] rows_num_data_valid;
input  [2:0] rows_fifo_cap;
input   rows_empty_n;
output   rows_read;
input  [6:0] cols_bound_per_npc;
input  [6:0] last_blk_width;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg dst_mat_data2_read;
reg[63:0] ldata1_din;
reg ldata1_write;
reg rows_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ldata1_blk_n;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln1023_fu_120_p2;
reg    rows_blk_n;
reg   [6:0] last_blk_width_read_reg_161;
wire    ap_CS_fsm_state3;
wire   [7:0] op2_assign_fu_106_p2;
reg   [7:0] op2_assign_reg_166;
wire    ap_CS_fsm_state4;
wire  signed [22:0] grp_fu_126_p2;
reg   [22:0] bound_reg_171;
wire    grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_start;
wire    grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_done;
wire    grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_idle;
wire    grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_ready;
wire    grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_dst_mat_data2_read;
wire   [63:0] grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ldata1_din;
wire    grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ldata1_write;
wire   [63:0] grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_localbuffer_V_3_out;
wire    grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_localbuffer_V_3_out_ap_vld;
wire   [6:0] grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_filled_V_1_out;
wire    grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_filled_V_1_out_ap_vld;
reg    grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    ap_block_state1;
reg    ap_block_state6;
wire   [7:0] cols_bound_per_npc_cast6_fu_103_p1;
wire   [15:0] grp_fu_126_p0;
wire   [6:0] grp_fu_126_p1;
reg    grp_fu_126_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [22:0] grp_fu_126_p00;
wire   [22:0] grp_fu_126_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 6'd1;
#0 grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_start_reg = 1'b0;
end

canny_accel_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_start),
    .ap_done(grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_done),
    .ap_idle(grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_idle),
    .ap_ready(grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_ready),
    .dst_mat_data2_dout(dst_mat_data2_dout),
    .dst_mat_data2_num_data_valid(2'd0),
    .dst_mat_data2_fifo_cap(2'd0),
    .dst_mat_data2_empty_n(dst_mat_data2_empty_n),
    .dst_mat_data2_read(grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_dst_mat_data2_read),
    .ldata1_din(grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ldata1_din),
    .ldata1_num_data_valid(2'd0),
    .ldata1_fifo_cap(2'd0),
    .ldata1_full_n(ldata1_full_n),
    .ldata1_write(grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ldata1_write),
    .bound(bound_reg_171),
    .cols_bound_per_npc(cols_bound_per_npc),
    .op2_assign(op2_assign_reg_166),
    .last_blk_width_load(last_blk_width_read_reg_161),
    .localbuffer_V_3_out(grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_localbuffer_V_3_out),
    .localbuffer_V_3_out_ap_vld(grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_localbuffer_V_3_out_ap_vld),
    .filled_V_1_out(grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_filled_V_1_out),
    .filled_V_1_out_ap_vld(grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_filled_V_1_out_ap_vld)
);

canny_accel_mul_mul_16ns_7ns_23_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 7 ),
    .dout_WIDTH( 23 ))
mul_mul_16ns_7ns_23_4_1_U316(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_126_p0),
    .din1(grp_fu_126_p1),
    .ce(grp_fu_126_ce),
    .dout(grp_fu_126_p2)
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
        end else if ((~((icmp_ln1023_fu_120_p2 == 1'd0) & (ldata1_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_start_reg <= 1'b1;
        end else if ((grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_ready == 1'b1)) begin
            grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bound_reg_171 <= grp_fu_126_p2;
        op2_assign_reg_166 <= op2_assign_fu_106_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        last_blk_width_read_reg_161 <= last_blk_width;
    end
end

always @ (*) begin
    if (((rows_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1023_fu_120_p2 == 1'd0) & (ldata1_full_n == 1'b0))) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln1023_fu_120_p2 == 1'd0) & (ldata1_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln1023_fu_120_p2 == 1'd0) & (ldata1_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        dst_mat_data2_read = grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_dst_mat_data2_read;
    end else begin
        dst_mat_data2_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & ((rows_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))))) begin
        grp_fu_126_ce = 1'b0;
    end else begin
        grp_fu_126_ce = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln1023_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ldata1_blk_n = ldata1_full_n;
    end else begin
        ldata1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln1023_fu_120_p2 == 1'd0) & (ldata1_full_n == 1'b0)) & (icmp_ln1023_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ldata1_din = grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_localbuffer_V_3_out;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        ldata1_din = grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ldata1_din;
    end else begin
        ldata1_din = grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ldata1_din;
    end
end

always @ (*) begin
    if ((~((icmp_ln1023_fu_120_p2 == 1'd0) & (ldata1_full_n == 1'b0)) & (icmp_ln1023_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ldata1_write = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        ldata1_write = grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ldata1_write;
    end else begin
        ldata1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        rows_blk_n = rows_empty_n;
    end else begin
        rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((rows_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        rows_read = 1'b1;
    end else begin
        rows_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((rows_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if ((~((icmp_ln1023_fu_120_p2 == 1'd0) & (ldata1_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state1 = ((rows_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state6 = ((icmp_ln1023_fu_120_p2 == 1'd0) & (ldata1_full_n == 1'b0));
end

assign cols_bound_per_npc_cast6_fu_103_p1 = cols_bound_per_npc;

assign grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_start = grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_ap_start_reg;

assign grp_fu_126_p0 = grp_fu_126_p00;

assign grp_fu_126_p00 = rows_dout;

assign grp_fu_126_p1 = grp_fu_126_p10;

assign grp_fu_126_p10 = cols_bound_per_npc;

assign icmp_ln1023_fu_120_p2 = ((grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81_filled_V_1_out == 7'd0) ? 1'b1 : 1'b0);

assign op2_assign_fu_106_p2 = ($signed(cols_bound_per_npc_cast6_fu_103_p1) + $signed(8'd255));

endmodule //canny_accel_MatStream2AxiStream_2_s