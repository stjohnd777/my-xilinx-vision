// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_accel_AxiStream2MatStream_2_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        ldata1_dout,
        ldata1_num_data_valid,
        ldata1_fifo_cap,
        ldata1_empty_n,
        ldata1_read,
        in_mat_data1_din,
        in_mat_data1_num_data_valid,
        in_mat_data1_fifo_cap,
        in_mat_data1_full_n,
        in_mat_data1_write,
        rows_dout,
        rows_num_data_valid,
        rows_fifo_cap,
        rows_empty_n,
        rows_read,
        cols_bound_per_npc_dout,
        cols_bound_per_npc_num_data_valid,
        cols_bound_per_npc_fifo_cap,
        cols_bound_per_npc_empty_n,
        cols_bound_per_npc_read,
        last_blk_width
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] ldata1_dout;
input  [1:0] ldata1_num_data_valid;
input  [1:0] ldata1_fifo_cap;
input   ldata1_empty_n;
output   ldata1_read;
output  [7:0] in_mat_data1_din;
input  [1:0] in_mat_data1_num_data_valid;
input  [1:0] in_mat_data1_fifo_cap;
input   in_mat_data1_full_n;
output   in_mat_data1_write;
input  [31:0] rows_dout;
input  [2:0] rows_num_data_valid;
input  [2:0] rows_fifo_cap;
input   rows_empty_n;
output   rows_read;
input  [31:0] cols_bound_per_npc_dout;
input  [2:0] cols_bound_per_npc_num_data_valid;
input  [2:0] cols_bound_per_npc_fifo_cap;
input   cols_bound_per_npc_empty_n;
output   cols_bound_per_npc_read;
input  [3:0] last_blk_width;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg ldata1_read;
reg in_mat_data1_write;
reg rows_read;
reg cols_bound_per_npc_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    rows_blk_n;
reg    cols_bound_per_npc_blk_n;
reg   [3:0] last_blk_width_read_reg_115;
reg   [31:0] cols_bound_per_npc_read_reg_122;
reg  signed [31:0] rows_read_reg_129;
wire   [31:0] bound_fu_83_p2;
reg   [31:0] bound_reg_134;
wire    ap_CS_fsm_state2;
wire   [31:0] sub_fu_88_p2;
reg   [31:0] sub_reg_139;
wire   [6:0] sub3_fu_94_p2;
reg   [6:0] sub3_reg_144;
wire   [4:0] sub38_fu_101_p2;
reg   [4:0] sub38_reg_149;
wire   [6:0] add_ln1075_fu_108_p2;
reg   [6:0] add_ln1075_reg_154;
wire    grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start;
wire    grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done;
wire    grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_idle;
wire    grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_ready;
wire    grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ldata1_read;
wire   [7:0] grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_in_mat_data1_din;
wire    grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_in_mat_data1_write;
reg    grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    ap_block_state1;
wire   [6:0] last_blk_width_cast2_fu_77_p1;
wire   [4:0] last_blk_width_cast5_fu_80_p1;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start_reg = 1'b0;
end

canny_accel_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start),
    .ap_done(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done),
    .ap_idle(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_idle),
    .ap_ready(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_ready),
    .ldata1_dout(ldata1_dout),
    .ldata1_num_data_valid(2'd0),
    .ldata1_fifo_cap(2'd0),
    .ldata1_empty_n(ldata1_empty_n),
    .ldata1_read(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ldata1_read),
    .in_mat_data1_din(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_in_mat_data1_din),
    .in_mat_data1_num_data_valid(2'd0),
    .in_mat_data1_fifo_cap(2'd0),
    .in_mat_data1_full_n(in_mat_data1_full_n),
    .in_mat_data1_write(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_in_mat_data1_write),
    .bound(bound_reg_134),
    .sext_ln1075(sub38_reg_149),
    .cols_bound_per_npc_load(cols_bound_per_npc_read_reg_122),
    .sub(sub_reg_139),
    .last_blk_width_load(last_blk_width_read_reg_115),
    .sub3(sub3_reg_144),
    .add_ln1075(add_ln1075_reg_154)
);

canny_accel_mul_32s_32s_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U36(
    .din0(cols_bound_per_npc_read_reg_122),
    .din1(rows_read_reg_129),
    .dout(bound_fu_83_p2)
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
        end else if (((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start_reg <= 1'b1;
        end else if ((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_ready == 1'b1)) begin
            grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln1075_reg_154 <= add_ln1075_fu_108_p2;
        bound_reg_134 <= bound_fu_83_p2;
        sub38_reg_149 <= sub38_fu_101_p2;
        sub3_reg_144 <= sub3_fu_94_p2;
        sub_reg_139 <= sub_fu_88_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        cols_bound_per_npc_read_reg_122 <= cols_bound_per_npc_dout;
        last_blk_width_read_reg_115 <= last_blk_width;
        rows_read_reg_129 <= rows_dout;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (cols_bound_per_npc_empty_n == 1'b0) | (rows_empty_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if (((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if (((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols_bound_per_npc_blk_n = cols_bound_per_npc_empty_n;
    end else begin
        cols_bound_per_npc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (cols_bound_per_npc_empty_n == 1'b0) | (rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols_bound_per_npc_read = 1'b1;
    end else begin
        cols_bound_per_npc_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_mat_data1_write = grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_in_mat_data1_write;
    end else begin
        in_mat_data1_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ldata1_read = grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ldata1_read;
    end else begin
        ldata1_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        rows_blk_n = rows_empty_n;
    end else begin
        rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (cols_bound_per_npc_empty_n == 1'b0) | (rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        rows_read = 1'b1;
    end else begin
        rows_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (cols_bound_per_npc_empty_n == 1'b0) | (rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1075_fu_108_p2 = (last_blk_width_cast2_fu_77_p1 + 7'd63);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (cols_bound_per_npc_empty_n == 1'b0) | (rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start = grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start_reg;

assign in_mat_data1_din = grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_in_mat_data1_din;

assign last_blk_width_cast2_fu_77_p1 = last_blk_width_read_reg_115;

assign last_blk_width_cast5_fu_80_p1 = last_blk_width_read_reg_115;

assign sub38_fu_101_p2 = ($signed(last_blk_width_cast5_fu_80_p1) + $signed(5'd31));

assign sub3_fu_94_p2 = ($signed(7'd64) - $signed(last_blk_width_cast2_fu_77_p1));

assign sub_fu_88_p2 = ($signed(cols_bound_per_npc_read_reg_122) + $signed(32'd4294967295));

endmodule //canny_accel_AxiStream2MatStream_2_s
