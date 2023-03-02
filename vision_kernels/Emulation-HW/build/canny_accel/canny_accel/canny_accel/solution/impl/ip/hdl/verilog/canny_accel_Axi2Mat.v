// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_accel_Axi2Mat (
        m_axi_gmem1_AWVALID,
        m_axi_gmem1_AWREADY,
        m_axi_gmem1_AWADDR,
        m_axi_gmem1_AWID,
        m_axi_gmem1_AWLEN,
        m_axi_gmem1_AWSIZE,
        m_axi_gmem1_AWBURST,
        m_axi_gmem1_AWLOCK,
        m_axi_gmem1_AWCACHE,
        m_axi_gmem1_AWPROT,
        m_axi_gmem1_AWQOS,
        m_axi_gmem1_AWREGION,
        m_axi_gmem1_AWUSER,
        m_axi_gmem1_WVALID,
        m_axi_gmem1_WREADY,
        m_axi_gmem1_WDATA,
        m_axi_gmem1_WSTRB,
        m_axi_gmem1_WLAST,
        m_axi_gmem1_WID,
        m_axi_gmem1_WUSER,
        m_axi_gmem1_ARVALID,
        m_axi_gmem1_ARREADY,
        m_axi_gmem1_ARADDR,
        m_axi_gmem1_ARID,
        m_axi_gmem1_ARLEN,
        m_axi_gmem1_ARSIZE,
        m_axi_gmem1_ARBURST,
        m_axi_gmem1_ARLOCK,
        m_axi_gmem1_ARCACHE,
        m_axi_gmem1_ARPROT,
        m_axi_gmem1_ARQOS,
        m_axi_gmem1_ARREGION,
        m_axi_gmem1_ARUSER,
        m_axi_gmem1_RVALID,
        m_axi_gmem1_RREADY,
        m_axi_gmem1_RDATA,
        m_axi_gmem1_RLAST,
        m_axi_gmem1_RID,
        m_axi_gmem1_RFIFONUM,
        m_axi_gmem1_RUSER,
        m_axi_gmem1_RRESP,
        m_axi_gmem1_BVALID,
        m_axi_gmem1_BREADY,
        m_axi_gmem1_BRESP,
        m_axi_gmem1_BID,
        m_axi_gmem1_BUSER,
        din,
        in_mat_data1_din,
        in_mat_data1_full_n,
        in_mat_data1_write,
        rows,
        cols,
        ap_clk,
        ap_rst,
        din_ap_vld,
        rows_ap_vld,
        cols_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);


output   m_axi_gmem1_AWVALID;
input   m_axi_gmem1_AWREADY;
output  [63:0] m_axi_gmem1_AWADDR;
output  [0:0] m_axi_gmem1_AWID;
output  [31:0] m_axi_gmem1_AWLEN;
output  [2:0] m_axi_gmem1_AWSIZE;
output  [1:0] m_axi_gmem1_AWBURST;
output  [1:0] m_axi_gmem1_AWLOCK;
output  [3:0] m_axi_gmem1_AWCACHE;
output  [2:0] m_axi_gmem1_AWPROT;
output  [3:0] m_axi_gmem1_AWQOS;
output  [3:0] m_axi_gmem1_AWREGION;
output  [0:0] m_axi_gmem1_AWUSER;
output   m_axi_gmem1_WVALID;
input   m_axi_gmem1_WREADY;
output  [63:0] m_axi_gmem1_WDATA;
output  [7:0] m_axi_gmem1_WSTRB;
output   m_axi_gmem1_WLAST;
output  [0:0] m_axi_gmem1_WID;
output  [0:0] m_axi_gmem1_WUSER;
output   m_axi_gmem1_ARVALID;
input   m_axi_gmem1_ARREADY;
output  [63:0] m_axi_gmem1_ARADDR;
output  [0:0] m_axi_gmem1_ARID;
output  [31:0] m_axi_gmem1_ARLEN;
output  [2:0] m_axi_gmem1_ARSIZE;
output  [1:0] m_axi_gmem1_ARBURST;
output  [1:0] m_axi_gmem1_ARLOCK;
output  [3:0] m_axi_gmem1_ARCACHE;
output  [2:0] m_axi_gmem1_ARPROT;
output  [3:0] m_axi_gmem1_ARQOS;
output  [3:0] m_axi_gmem1_ARREGION;
output  [0:0] m_axi_gmem1_ARUSER;
input   m_axi_gmem1_RVALID;
output   m_axi_gmem1_RREADY;
input  [63:0] m_axi_gmem1_RDATA;
input   m_axi_gmem1_RLAST;
input  [0:0] m_axi_gmem1_RID;
input  [8:0] m_axi_gmem1_RFIFONUM;
input  [0:0] m_axi_gmem1_RUSER;
input  [1:0] m_axi_gmem1_RRESP;
input   m_axi_gmem1_BVALID;
output   m_axi_gmem1_BREADY;
input  [1:0] m_axi_gmem1_BRESP;
input  [0:0] m_axi_gmem1_BID;
input  [0:0] m_axi_gmem1_BUSER;
input  [63:0] din;
output  [7:0] in_mat_data1_din;
input   in_mat_data1_full_n;
output   in_mat_data1_write;
input  [31:0] rows;
input  [31:0] cols;
input   ap_clk;
input   ap_rst;
input   din_ap_vld;
input   rows_ap_vld;
input   cols_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

wire    Axi2AxiStream_U0_ap_start;
wire    Axi2AxiStream_U0_ap_done;
wire    Axi2AxiStream_U0_ap_continue;
wire    Axi2AxiStream_U0_ap_idle;
wire    Axi2AxiStream_U0_ap_ready;
wire    Axi2AxiStream_U0_start_out;
wire    Axi2AxiStream_U0_start_write;
wire    Axi2AxiStream_U0_m_axi_gmem1_AWVALID;
wire   [63:0] Axi2AxiStream_U0_m_axi_gmem1_AWADDR;
wire   [0:0] Axi2AxiStream_U0_m_axi_gmem1_AWID;
wire   [31:0] Axi2AxiStream_U0_m_axi_gmem1_AWLEN;
wire   [2:0] Axi2AxiStream_U0_m_axi_gmem1_AWSIZE;
wire   [1:0] Axi2AxiStream_U0_m_axi_gmem1_AWBURST;
wire   [1:0] Axi2AxiStream_U0_m_axi_gmem1_AWLOCK;
wire   [3:0] Axi2AxiStream_U0_m_axi_gmem1_AWCACHE;
wire   [2:0] Axi2AxiStream_U0_m_axi_gmem1_AWPROT;
wire   [3:0] Axi2AxiStream_U0_m_axi_gmem1_AWQOS;
wire   [3:0] Axi2AxiStream_U0_m_axi_gmem1_AWREGION;
wire   [0:0] Axi2AxiStream_U0_m_axi_gmem1_AWUSER;
wire    Axi2AxiStream_U0_m_axi_gmem1_WVALID;
wire   [63:0] Axi2AxiStream_U0_m_axi_gmem1_WDATA;
wire   [7:0] Axi2AxiStream_U0_m_axi_gmem1_WSTRB;
wire    Axi2AxiStream_U0_m_axi_gmem1_WLAST;
wire   [0:0] Axi2AxiStream_U0_m_axi_gmem1_WID;
wire   [0:0] Axi2AxiStream_U0_m_axi_gmem1_WUSER;
wire    Axi2AxiStream_U0_m_axi_gmem1_ARVALID;
wire   [63:0] Axi2AxiStream_U0_m_axi_gmem1_ARADDR;
wire   [0:0] Axi2AxiStream_U0_m_axi_gmem1_ARID;
wire   [31:0] Axi2AxiStream_U0_m_axi_gmem1_ARLEN;
wire   [2:0] Axi2AxiStream_U0_m_axi_gmem1_ARSIZE;
wire   [1:0] Axi2AxiStream_U0_m_axi_gmem1_ARBURST;
wire   [1:0] Axi2AxiStream_U0_m_axi_gmem1_ARLOCK;
wire   [3:0] Axi2AxiStream_U0_m_axi_gmem1_ARCACHE;
wire   [2:0] Axi2AxiStream_U0_m_axi_gmem1_ARPROT;
wire   [3:0] Axi2AxiStream_U0_m_axi_gmem1_ARQOS;
wire   [3:0] Axi2AxiStream_U0_m_axi_gmem1_ARREGION;
wire   [0:0] Axi2AxiStream_U0_m_axi_gmem1_ARUSER;
wire    Axi2AxiStream_U0_m_axi_gmem1_RREADY;
wire    Axi2AxiStream_U0_m_axi_gmem1_BREADY;
wire   [63:0] Axi2AxiStream_U0_ldata_din;
wire    Axi2AxiStream_U0_ldata_write;
wire   [31:0] Axi2AxiStream_U0_rows_c_din;
wire    Axi2AxiStream_U0_rows_c_write;
wire   [31:0] Axi2AxiStream_U0_cols_c_din;
wire    Axi2AxiStream_U0_cols_c_write;
wire    Axi2AxiStream_U0_ap_ext_blocking_n;
wire    Axi2AxiStream_U0_ap_str_blocking_n;
wire    Axi2AxiStream_U0_ap_int_blocking_n;
wire    AxiStream2Mat_U0_ldata1_read;
wire   [7:0] AxiStream2Mat_U0_in_mat_data1_din;
wire    AxiStream2Mat_U0_in_mat_data1_write;
wire    AxiStream2Mat_U0_rows_read;
wire    AxiStream2Mat_U0_cols_read;
wire    AxiStream2Mat_U0_ap_start;
wire    AxiStream2Mat_U0_ap_done;
wire    AxiStream2Mat_U0_ap_ready;
wire    AxiStream2Mat_U0_ap_idle;
wire    AxiStream2Mat_U0_ap_continue;
wire    AxiStream2Mat_U0_ap_ext_blocking_n;
wire    AxiStream2Mat_U0_ap_str_blocking_n;
wire    AxiStream2Mat_U0_ap_int_blocking_n;
wire    ldata_full_n;
wire   [63:0] ldata_dout;
wire   [1:0] ldata_num_data_valid;
wire   [1:0] ldata_fifo_cap;
wire    ldata_empty_n;
wire    rows_c_full_n;
wire   [31:0] rows_c_dout;
wire   [1:0] rows_c_num_data_valid;
wire   [1:0] rows_c_fifo_cap;
wire    rows_c_empty_n;
wire    cols_c_full_n;
wire   [31:0] cols_c_dout;
wire   [1:0] cols_c_num_data_valid;
wire   [1:0] cols_c_fifo_cap;
wire    cols_c_empty_n;
wire   [0:0] start_for_AxiStream2Mat_U0_din;
wire    start_for_AxiStream2Mat_U0_full_n;
wire   [0:0] start_for_AxiStream2Mat_U0_dout;
wire    start_for_AxiStream2Mat_U0_empty_n;
wire    ap_ext_blocking_cur_n;
wire    ap_str_blocking_cur_n;
wire    ap_int_blocking_cur_n;
wire    ap_ext_blocking_sub_n;
wire    ap_str_blocking_sub_n;
wire    ap_int_blocking_sub_n;

canny_accel_Axi2AxiStream Axi2AxiStream_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Axi2AxiStream_U0_ap_start),
    .start_full_n(start_for_AxiStream2Mat_U0_full_n),
    .ap_done(Axi2AxiStream_U0_ap_done),
    .ap_continue(Axi2AxiStream_U0_ap_continue),
    .ap_idle(Axi2AxiStream_U0_ap_idle),
    .ap_ready(Axi2AxiStream_U0_ap_ready),
    .start_out(Axi2AxiStream_U0_start_out),
    .start_write(Axi2AxiStream_U0_start_write),
    .m_axi_gmem1_AWVALID(Axi2AxiStream_U0_m_axi_gmem1_AWVALID),
    .m_axi_gmem1_AWREADY(1'b0),
    .m_axi_gmem1_AWADDR(Axi2AxiStream_U0_m_axi_gmem1_AWADDR),
    .m_axi_gmem1_AWID(Axi2AxiStream_U0_m_axi_gmem1_AWID),
    .m_axi_gmem1_AWLEN(Axi2AxiStream_U0_m_axi_gmem1_AWLEN),
    .m_axi_gmem1_AWSIZE(Axi2AxiStream_U0_m_axi_gmem1_AWSIZE),
    .m_axi_gmem1_AWBURST(Axi2AxiStream_U0_m_axi_gmem1_AWBURST),
    .m_axi_gmem1_AWLOCK(Axi2AxiStream_U0_m_axi_gmem1_AWLOCK),
    .m_axi_gmem1_AWCACHE(Axi2AxiStream_U0_m_axi_gmem1_AWCACHE),
    .m_axi_gmem1_AWPROT(Axi2AxiStream_U0_m_axi_gmem1_AWPROT),
    .m_axi_gmem1_AWQOS(Axi2AxiStream_U0_m_axi_gmem1_AWQOS),
    .m_axi_gmem1_AWREGION(Axi2AxiStream_U0_m_axi_gmem1_AWREGION),
    .m_axi_gmem1_AWUSER(Axi2AxiStream_U0_m_axi_gmem1_AWUSER),
    .m_axi_gmem1_WVALID(Axi2AxiStream_U0_m_axi_gmem1_WVALID),
    .m_axi_gmem1_WREADY(1'b0),
    .m_axi_gmem1_WDATA(Axi2AxiStream_U0_m_axi_gmem1_WDATA),
    .m_axi_gmem1_WSTRB(Axi2AxiStream_U0_m_axi_gmem1_WSTRB),
    .m_axi_gmem1_WLAST(Axi2AxiStream_U0_m_axi_gmem1_WLAST),
    .m_axi_gmem1_WID(Axi2AxiStream_U0_m_axi_gmem1_WID),
    .m_axi_gmem1_WUSER(Axi2AxiStream_U0_m_axi_gmem1_WUSER),
    .m_axi_gmem1_ARVALID(Axi2AxiStream_U0_m_axi_gmem1_ARVALID),
    .m_axi_gmem1_ARREADY(m_axi_gmem1_ARREADY),
    .m_axi_gmem1_ARADDR(Axi2AxiStream_U0_m_axi_gmem1_ARADDR),
    .m_axi_gmem1_ARID(Axi2AxiStream_U0_m_axi_gmem1_ARID),
    .m_axi_gmem1_ARLEN(Axi2AxiStream_U0_m_axi_gmem1_ARLEN),
    .m_axi_gmem1_ARSIZE(Axi2AxiStream_U0_m_axi_gmem1_ARSIZE),
    .m_axi_gmem1_ARBURST(Axi2AxiStream_U0_m_axi_gmem1_ARBURST),
    .m_axi_gmem1_ARLOCK(Axi2AxiStream_U0_m_axi_gmem1_ARLOCK),
    .m_axi_gmem1_ARCACHE(Axi2AxiStream_U0_m_axi_gmem1_ARCACHE),
    .m_axi_gmem1_ARPROT(Axi2AxiStream_U0_m_axi_gmem1_ARPROT),
    .m_axi_gmem1_ARQOS(Axi2AxiStream_U0_m_axi_gmem1_ARQOS),
    .m_axi_gmem1_ARREGION(Axi2AxiStream_U0_m_axi_gmem1_ARREGION),
    .m_axi_gmem1_ARUSER(Axi2AxiStream_U0_m_axi_gmem1_ARUSER),
    .m_axi_gmem1_RVALID(m_axi_gmem1_RVALID),
    .m_axi_gmem1_RREADY(Axi2AxiStream_U0_m_axi_gmem1_RREADY),
    .m_axi_gmem1_RDATA(m_axi_gmem1_RDATA),
    .m_axi_gmem1_RLAST(m_axi_gmem1_RLAST),
    .m_axi_gmem1_RID(m_axi_gmem1_RID),
    .m_axi_gmem1_RFIFONUM(m_axi_gmem1_RFIFONUM),
    .m_axi_gmem1_RUSER(m_axi_gmem1_RUSER),
    .m_axi_gmem1_RRESP(m_axi_gmem1_RRESP),
    .m_axi_gmem1_BVALID(1'b0),
    .m_axi_gmem1_BREADY(Axi2AxiStream_U0_m_axi_gmem1_BREADY),
    .m_axi_gmem1_BRESP(2'd0),
    .m_axi_gmem1_BID(1'd0),
    .m_axi_gmem1_BUSER(1'd0),
    .din(din),
    .ldata_din(Axi2AxiStream_U0_ldata_din),
    .ldata_num_data_valid(ldata_num_data_valid),
    .ldata_fifo_cap(ldata_fifo_cap),
    .ldata_full_n(ldata_full_n),
    .ldata_write(Axi2AxiStream_U0_ldata_write),
    .rows(rows),
    .cols(cols),
    .rows_c_din(Axi2AxiStream_U0_rows_c_din),
    .rows_c_num_data_valid(rows_c_num_data_valid),
    .rows_c_fifo_cap(rows_c_fifo_cap),
    .rows_c_full_n(rows_c_full_n),
    .rows_c_write(Axi2AxiStream_U0_rows_c_write),
    .cols_c_din(Axi2AxiStream_U0_cols_c_din),
    .cols_c_num_data_valid(cols_c_num_data_valid),
    .cols_c_fifo_cap(cols_c_fifo_cap),
    .cols_c_full_n(cols_c_full_n),
    .cols_c_write(Axi2AxiStream_U0_cols_c_write),
    .ap_ext_blocking_n(Axi2AxiStream_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(Axi2AxiStream_U0_ap_str_blocking_n),
    .ap_int_blocking_n(Axi2AxiStream_U0_ap_int_blocking_n)
);

canny_accel_AxiStream2Mat AxiStream2Mat_U0(
    .ldata1_dout(ldata_dout),
    .ldata1_empty_n(ldata_empty_n),
    .ldata1_read(AxiStream2Mat_U0_ldata1_read),
    .in_mat_data1_din(AxiStream2Mat_U0_in_mat_data1_din),
    .in_mat_data1_full_n(in_mat_data1_full_n),
    .in_mat_data1_write(AxiStream2Mat_U0_in_mat_data1_write),
    .rows_dout(rows_c_dout),
    .rows_empty_n(rows_c_empty_n),
    .rows_read(AxiStream2Mat_U0_rows_read),
    .cols_dout(cols_c_dout),
    .cols_empty_n(cols_c_empty_n),
    .cols_read(AxiStream2Mat_U0_cols_read),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(AxiStream2Mat_U0_ap_start),
    .ap_done(AxiStream2Mat_U0_ap_done),
    .ap_ready(AxiStream2Mat_U0_ap_ready),
    .ap_idle(AxiStream2Mat_U0_ap_idle),
    .ap_continue(AxiStream2Mat_U0_ap_continue),
    .ap_ext_blocking_n(AxiStream2Mat_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(AxiStream2Mat_U0_ap_str_blocking_n),
    .ap_int_blocking_n(AxiStream2Mat_U0_ap_int_blocking_n)
);

canny_accel_fifo_w64_d2_S ldata_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Axi2AxiStream_U0_ldata_din),
    .if_full_n(ldata_full_n),
    .if_write(Axi2AxiStream_U0_ldata_write),
    .if_dout(ldata_dout),
    .if_num_data_valid(ldata_num_data_valid),
    .if_fifo_cap(ldata_fifo_cap),
    .if_empty_n(ldata_empty_n),
    .if_read(AxiStream2Mat_U0_ldata1_read)
);

canny_accel_fifo_w32_d2_S rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Axi2AxiStream_U0_rows_c_din),
    .if_full_n(rows_c_full_n),
    .if_write(Axi2AxiStream_U0_rows_c_write),
    .if_dout(rows_c_dout),
    .if_num_data_valid(rows_c_num_data_valid),
    .if_fifo_cap(rows_c_fifo_cap),
    .if_empty_n(rows_c_empty_n),
    .if_read(AxiStream2Mat_U0_rows_read)
);

canny_accel_fifo_w32_d2_S cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Axi2AxiStream_U0_cols_c_din),
    .if_full_n(cols_c_full_n),
    .if_write(Axi2AxiStream_U0_cols_c_write),
    .if_dout(cols_c_dout),
    .if_num_data_valid(cols_c_num_data_valid),
    .if_fifo_cap(cols_c_fifo_cap),
    .if_empty_n(cols_c_empty_n),
    .if_read(AxiStream2Mat_U0_cols_read)
);

canny_accel_start_for_AxiStream2Mat_U0 start_for_AxiStream2Mat_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_AxiStream2Mat_U0_din),
    .if_full_n(start_for_AxiStream2Mat_U0_full_n),
    .if_write(Axi2AxiStream_U0_start_write),
    .if_dout(start_for_AxiStream2Mat_U0_dout),
    .if_empty_n(start_for_AxiStream2Mat_U0_empty_n),
    .if_read(AxiStream2Mat_U0_ap_ready)
);

assign Axi2AxiStream_U0_ap_continue = 1'b1;

assign Axi2AxiStream_U0_ap_start = ap_start;

assign AxiStream2Mat_U0_ap_continue = ap_continue;

assign AxiStream2Mat_U0_ap_start = start_for_AxiStream2Mat_U0_empty_n;

assign ap_done = AxiStream2Mat_U0_ap_done;

assign ap_ext_blocking_cur_n = 1'b1;

assign ap_ext_blocking_n = (ap_ext_blocking_sub_n & ap_ext_blocking_cur_n);

assign ap_ext_blocking_sub_n = (AxiStream2Mat_U0_ap_ext_blocking_n & Axi2AxiStream_U0_ap_ext_blocking_n);

assign ap_idle = (AxiStream2Mat_U0_ap_idle & Axi2AxiStream_U0_ap_idle);

assign ap_int_blocking_cur_n = 1'b1;

assign ap_int_blocking_n = (ap_int_blocking_sub_n & ap_int_blocking_cur_n);

assign ap_int_blocking_sub_n = (AxiStream2Mat_U0_ap_int_blocking_n & Axi2AxiStream_U0_ap_int_blocking_n);

assign ap_ready = Axi2AxiStream_U0_ap_ready;

assign ap_str_blocking_cur_n = 1'b1;

assign ap_str_blocking_n = (ap_str_blocking_sub_n & ap_str_blocking_cur_n);

assign ap_str_blocking_sub_n = (AxiStream2Mat_U0_ap_str_blocking_n & Axi2AxiStream_U0_ap_str_blocking_n);

assign in_mat_data1_din = AxiStream2Mat_U0_in_mat_data1_din;

assign in_mat_data1_write = AxiStream2Mat_U0_in_mat_data1_write;

assign m_axi_gmem1_ARADDR = Axi2AxiStream_U0_m_axi_gmem1_ARADDR;

assign m_axi_gmem1_ARBURST = Axi2AxiStream_U0_m_axi_gmem1_ARBURST;

assign m_axi_gmem1_ARCACHE = Axi2AxiStream_U0_m_axi_gmem1_ARCACHE;

assign m_axi_gmem1_ARID = Axi2AxiStream_U0_m_axi_gmem1_ARID;

assign m_axi_gmem1_ARLEN = Axi2AxiStream_U0_m_axi_gmem1_ARLEN;

assign m_axi_gmem1_ARLOCK = Axi2AxiStream_U0_m_axi_gmem1_ARLOCK;

assign m_axi_gmem1_ARPROT = Axi2AxiStream_U0_m_axi_gmem1_ARPROT;

assign m_axi_gmem1_ARQOS = Axi2AxiStream_U0_m_axi_gmem1_ARQOS;

assign m_axi_gmem1_ARREGION = Axi2AxiStream_U0_m_axi_gmem1_ARREGION;

assign m_axi_gmem1_ARSIZE = Axi2AxiStream_U0_m_axi_gmem1_ARSIZE;

assign m_axi_gmem1_ARUSER = Axi2AxiStream_U0_m_axi_gmem1_ARUSER;

assign m_axi_gmem1_ARVALID = Axi2AxiStream_U0_m_axi_gmem1_ARVALID;

assign m_axi_gmem1_AWADDR = 64'd0;

assign m_axi_gmem1_AWBURST = 2'd0;

assign m_axi_gmem1_AWCACHE = 4'd0;

assign m_axi_gmem1_AWID = 1'd0;

assign m_axi_gmem1_AWLEN = 32'd0;

assign m_axi_gmem1_AWLOCK = 2'd0;

assign m_axi_gmem1_AWPROT = 3'd0;

assign m_axi_gmem1_AWQOS = 4'd0;

assign m_axi_gmem1_AWREGION = 4'd0;

assign m_axi_gmem1_AWSIZE = 3'd0;

assign m_axi_gmem1_AWUSER = 1'd0;

assign m_axi_gmem1_AWVALID = 1'b0;

assign m_axi_gmem1_BREADY = 1'b0;

assign m_axi_gmem1_RREADY = Axi2AxiStream_U0_m_axi_gmem1_RREADY;

assign m_axi_gmem1_WDATA = 64'd0;

assign m_axi_gmem1_WID = 1'd0;

assign m_axi_gmem1_WLAST = 1'b0;

assign m_axi_gmem1_WSTRB = 8'd0;

assign m_axi_gmem1_WUSER = 1'd0;

assign m_axi_gmem1_WVALID = 1'b0;

assign start_for_AxiStream2Mat_U0_din = 1'b1;

endmodule //canny_accel_Axi2Mat
