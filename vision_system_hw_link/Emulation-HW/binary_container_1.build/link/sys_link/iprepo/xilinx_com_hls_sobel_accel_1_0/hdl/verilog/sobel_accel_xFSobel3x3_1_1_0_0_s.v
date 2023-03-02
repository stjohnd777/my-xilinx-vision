// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sobel_accel_xFSobel3x3_1_1_0_0_s (
        ap_ready,
        p_read2,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        p_read9,
        p_read10,
        p_read11,
        ap_return_0,
        ap_return_1,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);


output   ap_ready;
input  [7:0] p_read2;
input  [7:0] p_read5;
input  [7:0] p_read6;
input  [7:0] p_read7;
input  [7:0] p_read8;
input  [7:0] p_read9;
input  [7:0] p_read10;
input  [7:0] p_read11;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

wire    tmp_V_xFGradientX3x3_0_0_s_fu_72_ap_ready;
wire   [7:0] tmp_V_xFGradientX3x3_0_0_s_fu_72_ap_return;
wire    tmp_V_xFGradientX3x3_0_0_s_fu_72_ap_ext_blocking_n;
wire    tmp_V_xFGradientX3x3_0_0_s_fu_72_ap_str_blocking_n;
wire    tmp_V_xFGradientX3x3_0_0_s_fu_72_ap_int_blocking_n;
wire    tmp_V_1_xFGradientY3x3_0_0_s_fu_88_ap_ready;
wire   [7:0] tmp_V_1_xFGradientY3x3_0_0_s_fu_88_ap_return;
wire    tmp_V_1_xFGradientY3x3_0_0_s_fu_88_ap_ext_blocking_n;
wire    tmp_V_1_xFGradientY3x3_0_0_s_fu_88_ap_str_blocking_n;
wire    tmp_V_1_xFGradientY3x3_0_0_s_fu_88_ap_int_blocking_n;

sobel_accel_xFGradientX3x3_0_0_s tmp_V_xFGradientX3x3_0_0_s_fu_72(
    .ap_ready(tmp_V_xFGradientX3x3_0_0_s_fu_72_ap_ready),
    .t0(p_read2),
    .t2(p_read6),
    .m0(p_read7),
    .m2(p_read8),
    .b0(p_read9),
    .b2(p_read11),
    .ap_return(tmp_V_xFGradientX3x3_0_0_s_fu_72_ap_return),
    .ap_ext_blocking_n(tmp_V_xFGradientX3x3_0_0_s_fu_72_ap_ext_blocking_n),
    .ap_str_blocking_n(tmp_V_xFGradientX3x3_0_0_s_fu_72_ap_str_blocking_n),
    .ap_int_blocking_n(tmp_V_xFGradientX3x3_0_0_s_fu_72_ap_int_blocking_n)
);

sobel_accel_xFGradientY3x3_0_0_s tmp_V_1_xFGradientY3x3_0_0_s_fu_88(
    .ap_ready(tmp_V_1_xFGradientY3x3_0_0_s_fu_88_ap_ready),
    .t0(p_read2),
    .t1(p_read5),
    .t2(p_read6),
    .b0(p_read9),
    .b1(p_read10),
    .b2(p_read11),
    .ap_return(tmp_V_1_xFGradientY3x3_0_0_s_fu_88_ap_return),
    .ap_ext_blocking_n(tmp_V_1_xFGradientY3x3_0_0_s_fu_88_ap_ext_blocking_n),
    .ap_str_blocking_n(tmp_V_1_xFGradientY3x3_0_0_s_fu_88_ap_str_blocking_n),
    .ap_int_blocking_n(tmp_V_1_xFGradientY3x3_0_0_s_fu_88_ap_int_blocking_n)
);

assign ap_ext_blocking_n = (1'b1 & 1'b1);

assign ap_int_blocking_n = (1'b1 & 1'b1);

assign ap_ready = 1'b1;

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign ap_return_0 = tmp_V_xFGradientX3x3_0_0_s_fu_72_ap_return;

assign ap_return_1 = tmp_V_1_xFGradientY3x3_0_0_s_fu_88_ap_return;

endmodule //sobel_accel_xFSobel3x3_1_1_0_0_s