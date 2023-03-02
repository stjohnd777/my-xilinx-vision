// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_accel_addrbound (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rows_2,
        rows,
        cols,
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
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [16:0] rows_2;
input  [15:0] rows;
input  [10:0] cols;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[16:0] rows_2;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [16:0] rows_2_preg;
wire    ap_CS_fsm_state3;
wire   [26:0] trunc_ln1494_fu_65_p0;
wire  signed [26:0] grp_fu_93_p2;
wire   [21:0] trunc_ln1494_fu_65_p1;
wire   [22:0] ret_V_fu_68_p3;
wire   [22:0] add_ln541_fu_76_p2;
wire   [15:0] grp_fu_93_p0;
wire   [10:0] grp_fu_93_p1;
reg    grp_fu_93_ce;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire   [26:0] grp_fu_93_p00;
wire   [26:0] grp_fu_93_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 rows_2_preg = 17'd0;
end

canny_accel_mul_mul_16ns_11ns_27_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 27 ))
mul_mul_16ns_11ns_27_3_1_U295(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_93_p0),
    .din1(grp_fu_93_p1),
    .ce(grp_fu_93_ce),
    .dout(grp_fu_93_p2)
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
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        rows_2_preg <= 17'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            rows_2_preg <= {{add_ln541_fu_76_p2[22:6]}};
        end
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1)))) begin
        grp_fu_93_ce = 1'b0;
    end else begin
        grp_fu_93_ce = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        rows_2 = {{add_ln541_fu_76_p2[22:6]}};
    end else begin
        rows_2 = rows_2_preg;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln541_fu_76_p2 = (ret_V_fu_68_p3 + 23'd63);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ext_blocking_n = (1'b1 & 1'b1);

assign ap_int_blocking_n = (1'b1 & 1'b1);

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign grp_fu_93_p0 = grp_fu_93_p00;

assign grp_fu_93_p00 = rows;

assign grp_fu_93_p1 = grp_fu_93_p10;

assign grp_fu_93_p10 = cols;

assign ret_V_fu_68_p3 = {{trunc_ln1494_fu_65_p1}, {1'd0}};

assign trunc_ln1494_fu_65_p0 = grp_fu_93_p2;

assign trunc_ln1494_fu_65_p1 = trunc_ln1494_fu_65_p0[21:0];

endmodule //canny_accel_addrbound
