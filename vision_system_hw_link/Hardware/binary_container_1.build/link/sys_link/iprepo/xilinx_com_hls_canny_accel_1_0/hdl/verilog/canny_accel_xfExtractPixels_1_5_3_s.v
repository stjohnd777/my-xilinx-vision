// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_accel_xfExtractPixels_1_5_3_s (
        ap_ready,
        p_read1,
        ap_return
);


output   ap_ready;
input  [15:0] p_read1;
output  [15:0] ap_return;

assign ap_ready = 1'b1;

assign ap_return = p_read1;

endmodule //canny_accel_xfExtractPixels_1_5_3_s
