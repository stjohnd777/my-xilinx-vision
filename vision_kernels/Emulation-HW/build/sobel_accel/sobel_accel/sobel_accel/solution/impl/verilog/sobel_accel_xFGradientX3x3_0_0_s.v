// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sobel_accel_xFGradientX3x3_0_0_s (
        ap_ready,
        t0,
        t2,
        m0,
        m2,
        b0,
        b2,
        ap_return,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);


output   ap_ready;
input  [7:0] t0;
input  [7:0] t2;
input  [7:0] m0;
input  [7:0] m2;
input  [7:0] b0;
input  [7:0] b2;
output  [7:0] ap_return;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

wire   [8:0] M00_fu_70_p3;
wire   [8:0] M01_fu_82_p3;
wire   [8:0] zext_ln186_4_fu_98_p1;
wire   [8:0] zext_ln186_fu_94_p1;
wire   [8:0] ret_V_fu_102_p2;
wire   [8:0] zext_ln186_6_fu_116_p1;
wire   [8:0] zext_ln186_5_fu_112_p1;
wire   [8:0] ret_V_2_fu_120_p2;
wire   [9:0] zext_ln60_fu_90_p1;
wire   [9:0] zext_ln59_fu_78_p1;
wire   [9:0] out_pix_7_fu_130_p2;
wire  signed [10:0] sext_ln66_fu_136_p1;
wire   [10:0] zext_ln61_fu_108_p1;
wire   [10:0] out_pix_8_fu_140_p2;
wire   [10:0] zext_ln62_fu_126_p1;
wire   [10:0] out_pix_fu_146_p2;
wire   [2:0] tmp_2_fu_164_p4;
wire   [0:0] tmp_fu_156_p3;
wire   [0:0] xor_ln72_fu_180_p2;
wire   [0:0] icmp_ln74_fu_174_p2;
wire   [0:0] or_ln72_fu_194_p2;
wire   [7:0] select_ln72_fu_186_p3;
wire   [7:0] trunc_ln212_fu_152_p1;

assign M00_fu_70_p3 = {{m0}, {1'd0}};

assign M01_fu_82_p3 = {{m2}, {1'd0}};

assign ap_ext_blocking_n = (1'b1 & 1'b1);

assign ap_int_blocking_n = (1'b1 & 1'b1);

assign ap_ready = 1'b1;

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign or_ln72_fu_194_p2 = (tmp_fu_156_p3 | icmp_ln74_fu_174_p2);

assign out_pix_7_fu_130_p2 = (zext_ln60_fu_90_p1 - zext_ln59_fu_78_p1);

assign out_pix_8_fu_140_p2 = ($signed(sext_ln66_fu_136_p1) + $signed(zext_ln61_fu_108_p1));

assign out_pix_fu_146_p2 = (out_pix_8_fu_140_p2 - zext_ln62_fu_126_p1);

assign ret_V_2_fu_120_p2 = (zext_ln186_6_fu_116_p1 + zext_ln186_5_fu_112_p1);

assign ret_V_fu_102_p2 = (zext_ln186_4_fu_98_p1 + zext_ln186_fu_94_p1);

assign select_ln72_fu_186_p3 = ((xor_ln72_fu_180_p2[0:0] == 1'b1) ? 8'd255 : 8'd0);

assign sext_ln66_fu_136_p1 = $signed(out_pix_7_fu_130_p2);

assign tmp_2_fu_164_p4 = {{out_pix_fu_146_p2[10:8]}};

assign tmp_fu_156_p3 = out_pix_fu_146_p2[32'd10];

assign trunc_ln212_fu_152_p1 = out_pix_fu_146_p2[7:0];

assign xor_ln72_fu_180_p2 = (tmp_fu_156_p3 ^ 1'd1);

assign zext_ln186_4_fu_98_p1 = b2;

assign zext_ln186_5_fu_112_p1 = t0;

assign zext_ln186_6_fu_116_p1 = b0;

assign zext_ln186_fu_94_p1 = t2;

assign zext_ln59_fu_78_p1 = M00_fu_70_p3;

assign zext_ln60_fu_90_p1 = M01_fu_82_p3;

assign zext_ln61_fu_108_p1 = ret_V_fu_102_p2;

assign zext_ln62_fu_126_p1 = ret_V_2_fu_120_p2;

assign ap_return = ((or_ln72_fu_194_p2[0:0] == 1'b1) ? select_ln72_fu_186_p3 : trunc_ln212_fu_152_p1);

assign icmp_ln74_fu_174_p2 = (($signed(tmp_2_fu_164_p4) > $signed(3'd0)) ? 1'b1 : 1'b0);

endmodule //sobel_accel_xFGradientX3x3_0_0_s