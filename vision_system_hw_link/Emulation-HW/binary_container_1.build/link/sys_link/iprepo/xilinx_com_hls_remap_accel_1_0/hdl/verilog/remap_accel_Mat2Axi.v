// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module remap_accel_Mat2Axi (
        imgOutput_data4_dout,
        imgOutput_data4_empty_n,
        imgOutput_data4_read,
        m_axi_gmem3_AWVALID,
        m_axi_gmem3_AWREADY,
        m_axi_gmem3_AWADDR,
        m_axi_gmem3_AWID,
        m_axi_gmem3_AWLEN,
        m_axi_gmem3_AWSIZE,
        m_axi_gmem3_AWBURST,
        m_axi_gmem3_AWLOCK,
        m_axi_gmem3_AWCACHE,
        m_axi_gmem3_AWPROT,
        m_axi_gmem3_AWQOS,
        m_axi_gmem3_AWREGION,
        m_axi_gmem3_AWUSER,
        m_axi_gmem3_WVALID,
        m_axi_gmem3_WREADY,
        m_axi_gmem3_WDATA,
        m_axi_gmem3_WSTRB,
        m_axi_gmem3_WLAST,
        m_axi_gmem3_WID,
        m_axi_gmem3_WUSER,
        m_axi_gmem3_ARVALID,
        m_axi_gmem3_ARREADY,
        m_axi_gmem3_ARADDR,
        m_axi_gmem3_ARID,
        m_axi_gmem3_ARLEN,
        m_axi_gmem3_ARSIZE,
        m_axi_gmem3_ARBURST,
        m_axi_gmem3_ARLOCK,
        m_axi_gmem3_ARCACHE,
        m_axi_gmem3_ARPROT,
        m_axi_gmem3_ARQOS,
        m_axi_gmem3_ARREGION,
        m_axi_gmem3_ARUSER,
        m_axi_gmem3_RVALID,
        m_axi_gmem3_RREADY,
        m_axi_gmem3_RDATA,
        m_axi_gmem3_RLAST,
        m_axi_gmem3_RID,
        m_axi_gmem3_RFIFONUM,
        m_axi_gmem3_RUSER,
        m_axi_gmem3_RRESP,
        m_axi_gmem3_BVALID,
        m_axi_gmem3_BREADY,
        m_axi_gmem3_BRESP,
        m_axi_gmem3_BID,
        m_axi_gmem3_BUSER,
        dout,
        rows,
        cols,
        ap_clk,
        ap_rst,
        dout_ap_vld,
        ap_start,
        rows_ap_vld,
        cols_ap_vld,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);


input  [7:0] imgOutput_data4_dout;
input   imgOutput_data4_empty_n;
output   imgOutput_data4_read;
output   m_axi_gmem3_AWVALID;
input   m_axi_gmem3_AWREADY;
output  [63:0] m_axi_gmem3_AWADDR;
output  [0:0] m_axi_gmem3_AWID;
output  [31:0] m_axi_gmem3_AWLEN;
output  [2:0] m_axi_gmem3_AWSIZE;
output  [1:0] m_axi_gmem3_AWBURST;
output  [1:0] m_axi_gmem3_AWLOCK;
output  [3:0] m_axi_gmem3_AWCACHE;
output  [2:0] m_axi_gmem3_AWPROT;
output  [3:0] m_axi_gmem3_AWQOS;
output  [3:0] m_axi_gmem3_AWREGION;
output  [0:0] m_axi_gmem3_AWUSER;
output   m_axi_gmem3_WVALID;
input   m_axi_gmem3_WREADY;
output  [7:0] m_axi_gmem3_WDATA;
output  [0:0] m_axi_gmem3_WSTRB;
output   m_axi_gmem3_WLAST;
output  [0:0] m_axi_gmem3_WID;
output  [0:0] m_axi_gmem3_WUSER;
output   m_axi_gmem3_ARVALID;
input   m_axi_gmem3_ARREADY;
output  [63:0] m_axi_gmem3_ARADDR;
output  [0:0] m_axi_gmem3_ARID;
output  [31:0] m_axi_gmem3_ARLEN;
output  [2:0] m_axi_gmem3_ARSIZE;
output  [1:0] m_axi_gmem3_ARBURST;
output  [1:0] m_axi_gmem3_ARLOCK;
output  [3:0] m_axi_gmem3_ARCACHE;
output  [2:0] m_axi_gmem3_ARPROT;
output  [3:0] m_axi_gmem3_ARQOS;
output  [3:0] m_axi_gmem3_ARREGION;
output  [0:0] m_axi_gmem3_ARUSER;
input   m_axi_gmem3_RVALID;
output   m_axi_gmem3_RREADY;
input  [7:0] m_axi_gmem3_RDATA;
input   m_axi_gmem3_RLAST;
input  [0:0] m_axi_gmem3_RID;
input  [10:0] m_axi_gmem3_RFIFONUM;
input  [0:0] m_axi_gmem3_RUSER;
input  [1:0] m_axi_gmem3_RRESP;
input   m_axi_gmem3_BVALID;
output   m_axi_gmem3_BREADY;
input  [1:0] m_axi_gmem3_BRESP;
input  [0:0] m_axi_gmem3_BID;
input  [0:0] m_axi_gmem3_BUSER;
input  [63:0] dout;
input  [15:0] rows;
input  [31:0] cols;
input   ap_clk;
input   ap_rst;
input   dout_ap_vld;
input   ap_start;
input   rows_ap_vld;
input   cols_ap_vld;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

wire    entry_proc6_U0_ap_start;
wire    entry_proc6_U0_ap_done;
wire    entry_proc6_U0_ap_continue;
wire    entry_proc6_U0_ap_idle;
wire    entry_proc6_U0_ap_ready;
wire   [63:0] entry_proc6_U0_dout_c_din;
wire    entry_proc6_U0_dout_c_write;
wire    entry_proc6_U0_ap_ext_blocking_n;
wire    entry_proc6_U0_ap_str_blocking_n;
wire    entry_proc6_U0_ap_int_blocking_n;
wire    addrbound_U0_ap_start;
wire    addrbound_U0_ap_done;
wire    addrbound_U0_ap_continue;
wire    addrbound_U0_ap_idle;
wire    addrbound_U0_ap_ready;
wire   [21:0] addrbound_U0_p_channel;
wire   [15:0] addrbound_U0_cols;
wire    addrbound_U0_ap_ext_blocking_n;
wire    addrbound_U0_ap_str_blocking_n;
wire    addrbound_U0_ap_int_blocking_n;
wire    p_channel_full_n;
wire    Mat2Axi_Block_entry24_proc_U0_ap_start;
wire    Mat2Axi_Block_entry24_proc_U0_ap_done;
wire    Mat2Axi_Block_entry24_proc_U0_ap_continue;
wire    Mat2Axi_Block_entry24_proc_U0_ap_idle;
wire    Mat2Axi_Block_entry24_proc_U0_ap_ready;
wire   [21:0] Mat2Axi_Block_entry24_proc_U0_ap_return;
wire    Mat2Axi_Block_entry24_proc_U0_ap_ext_blocking_n;
wire    Mat2Axi_Block_entry24_proc_U0_ap_str_blocking_n;
wire    Mat2Axi_Block_entry24_proc_U0_ap_int_blocking_n;
wire    axibound_V_full_n;
wire    Mat2AxiStream_U0_imgOutput_data4_read;
wire   [7:0] Mat2AxiStream_U0_ldata1_din;
wire    Mat2AxiStream_U0_ldata1_write;
wire    Mat2AxiStream_U0_ap_start;
wire    Mat2AxiStream_U0_ap_done;
wire    Mat2AxiStream_U0_ap_ready;
wire    Mat2AxiStream_U0_ap_idle;
wire    Mat2AxiStream_U0_ap_continue;
wire    Mat2AxiStream_U0_ap_ext_blocking_n;
wire    Mat2AxiStream_U0_ap_str_blocking_n;
wire    Mat2AxiStream_U0_ap_int_blocking_n;
wire    AxiStream2Axi_U0_ap_start;
wire    AxiStream2Axi_U0_ap_done;
wire    AxiStream2Axi_U0_ap_continue;
wire    AxiStream2Axi_U0_ap_idle;
wire    AxiStream2Axi_U0_ap_ready;
wire    AxiStream2Axi_U0_ldata1_read;
wire    AxiStream2Axi_U0_m_axi_gmem3_AWVALID;
wire   [63:0] AxiStream2Axi_U0_m_axi_gmem3_AWADDR;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem3_AWID;
wire   [31:0] AxiStream2Axi_U0_m_axi_gmem3_AWLEN;
wire   [2:0] AxiStream2Axi_U0_m_axi_gmem3_AWSIZE;
wire   [1:0] AxiStream2Axi_U0_m_axi_gmem3_AWBURST;
wire   [1:0] AxiStream2Axi_U0_m_axi_gmem3_AWLOCK;
wire   [3:0] AxiStream2Axi_U0_m_axi_gmem3_AWCACHE;
wire   [2:0] AxiStream2Axi_U0_m_axi_gmem3_AWPROT;
wire   [3:0] AxiStream2Axi_U0_m_axi_gmem3_AWQOS;
wire   [3:0] AxiStream2Axi_U0_m_axi_gmem3_AWREGION;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem3_AWUSER;
wire    AxiStream2Axi_U0_m_axi_gmem3_WVALID;
wire   [7:0] AxiStream2Axi_U0_m_axi_gmem3_WDATA;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem3_WSTRB;
wire    AxiStream2Axi_U0_m_axi_gmem3_WLAST;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem3_WID;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem3_WUSER;
wire    AxiStream2Axi_U0_m_axi_gmem3_ARVALID;
wire   [63:0] AxiStream2Axi_U0_m_axi_gmem3_ARADDR;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem3_ARID;
wire   [31:0] AxiStream2Axi_U0_m_axi_gmem3_ARLEN;
wire   [2:0] AxiStream2Axi_U0_m_axi_gmem3_ARSIZE;
wire   [1:0] AxiStream2Axi_U0_m_axi_gmem3_ARBURST;
wire   [1:0] AxiStream2Axi_U0_m_axi_gmem3_ARLOCK;
wire   [3:0] AxiStream2Axi_U0_m_axi_gmem3_ARCACHE;
wire   [2:0] AxiStream2Axi_U0_m_axi_gmem3_ARPROT;
wire   [3:0] AxiStream2Axi_U0_m_axi_gmem3_ARQOS;
wire   [3:0] AxiStream2Axi_U0_m_axi_gmem3_ARREGION;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem3_ARUSER;
wire    AxiStream2Axi_U0_m_axi_gmem3_RREADY;
wire    AxiStream2Axi_U0_m_axi_gmem3_BREADY;
wire    AxiStream2Axi_U0_dout_read;
wire    AxiStream2Axi_U0_ap_ext_blocking_n;
wire    AxiStream2Axi_U0_ap_str_blocking_n;
wire    AxiStream2Axi_U0_ap_int_blocking_n;
wire    dout_c_full_n;
wire   [63:0] dout_c_dout;
wire   [2:0] dout_c_num_data_valid;
wire   [2:0] dout_c_fifo_cap;
wire    dout_c_empty_n;
wire   [21:0] p_channel_dout;
wire   [1:0] p_channel_num_data_valid;
wire   [1:0] p_channel_fifo_cap;
wire    p_channel_empty_n;
wire   [21:0] axibound_V_dout;
wire   [1:0] axibound_V_num_data_valid;
wire   [1:0] axibound_V_fifo_cap;
wire    axibound_V_empty_n;
wire    ldata_full_n;
wire   [7:0] ldata_dout;
wire   [1:0] ldata_num_data_valid;
wire   [1:0] ldata_fifo_cap;
wire    ldata_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_entry_proc6_U0_ap_ready;
wire    ap_sync_entry_proc6_U0_ap_ready;
reg    ap_sync_reg_addrbound_U0_ap_ready;
wire    ap_sync_addrbound_U0_ap_ready;
reg    ap_sync_reg_Mat2AxiStream_U0_ap_ready;
wire    ap_sync_Mat2AxiStream_U0_ap_ready;
wire    ap_ext_blocking_cur_n;
wire    ap_str_blocking_cur_n;
wire    ap_int_blocking_cur_n;
wire    ap_ext_blocking_sub_n;
wire    ap_str_blocking_sub_n;
wire    ap_int_blocking_sub_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_entry_proc6_U0_ap_ready = 1'b0;
#0 ap_sync_reg_addrbound_U0_ap_ready = 1'b0;
#0 ap_sync_reg_Mat2AxiStream_U0_ap_ready = 1'b0;
end

remap_accel_entry_proc6 entry_proc6_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(entry_proc6_U0_ap_start),
    .ap_done(entry_proc6_U0_ap_done),
    .ap_continue(entry_proc6_U0_ap_continue),
    .ap_idle(entry_proc6_U0_ap_idle),
    .ap_ready(entry_proc6_U0_ap_ready),
    .dout(dout),
    .dout_c_din(entry_proc6_U0_dout_c_din),
    .dout_c_num_data_valid(dout_c_num_data_valid),
    .dout_c_fifo_cap(dout_c_fifo_cap),
    .dout_c_full_n(dout_c_full_n),
    .dout_c_write(entry_proc6_U0_dout_c_write),
    .ap_ext_blocking_n(entry_proc6_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(entry_proc6_U0_ap_str_blocking_n),
    .ap_int_blocking_n(entry_proc6_U0_ap_int_blocking_n)
);

remap_accel_addrbound addrbound_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(addrbound_U0_ap_start),
    .ap_done(addrbound_U0_ap_done),
    .ap_continue(addrbound_U0_ap_continue),
    .ap_idle(addrbound_U0_ap_idle),
    .ap_ready(addrbound_U0_ap_ready),
    .p_channel(addrbound_U0_p_channel),
    .rows(rows),
    .cols(addrbound_U0_cols),
    .ap_ext_blocking_n(addrbound_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(addrbound_U0_ap_str_blocking_n),
    .ap_int_blocking_n(addrbound_U0_ap_int_blocking_n)
);

remap_accel_Mat2Axi_Block_entry24_proc Mat2Axi_Block_entry24_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Mat2Axi_Block_entry24_proc_U0_ap_start),
    .ap_done(Mat2Axi_Block_entry24_proc_U0_ap_done),
    .ap_continue(Mat2Axi_Block_entry24_proc_U0_ap_continue),
    .ap_idle(Mat2Axi_Block_entry24_proc_U0_ap_idle),
    .ap_ready(Mat2Axi_Block_entry24_proc_U0_ap_ready),
    .axibound_V_1(p_channel_dout),
    .ap_return(Mat2Axi_Block_entry24_proc_U0_ap_return),
    .ap_ext_blocking_n(Mat2Axi_Block_entry24_proc_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(Mat2Axi_Block_entry24_proc_U0_ap_str_blocking_n),
    .ap_int_blocking_n(Mat2Axi_Block_entry24_proc_U0_ap_int_blocking_n)
);

remap_accel_Mat2AxiStream Mat2AxiStream_U0(
    .imgOutput_data4_dout(imgOutput_data4_dout),
    .imgOutput_data4_empty_n(imgOutput_data4_empty_n),
    .imgOutput_data4_read(Mat2AxiStream_U0_imgOutput_data4_read),
    .ldata1_din(Mat2AxiStream_U0_ldata1_din),
    .ldata1_full_n(ldata_full_n),
    .ldata1_write(Mat2AxiStream_U0_ldata1_write),
    .rows(rows),
    .cols(cols),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .rows_ap_vld(rows_ap_vld),
    .cols_ap_vld(cols_ap_vld),
    .ap_start(Mat2AxiStream_U0_ap_start),
    .ap_done(Mat2AxiStream_U0_ap_done),
    .ap_ready(Mat2AxiStream_U0_ap_ready),
    .ap_idle(Mat2AxiStream_U0_ap_idle),
    .ap_continue(Mat2AxiStream_U0_ap_continue),
    .ap_ext_blocking_n(Mat2AxiStream_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(Mat2AxiStream_U0_ap_str_blocking_n),
    .ap_int_blocking_n(Mat2AxiStream_U0_ap_int_blocking_n)
);

remap_accel_AxiStream2Axi AxiStream2Axi_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(AxiStream2Axi_U0_ap_start),
    .ap_done(AxiStream2Axi_U0_ap_done),
    .ap_continue(AxiStream2Axi_U0_ap_continue),
    .ap_idle(AxiStream2Axi_U0_ap_idle),
    .ap_ready(AxiStream2Axi_U0_ap_ready),
    .ldata1_dout(ldata_dout),
    .ldata1_num_data_valid(ldata_num_data_valid),
    .ldata1_fifo_cap(ldata_fifo_cap),
    .ldata1_empty_n(ldata_empty_n),
    .ldata1_read(AxiStream2Axi_U0_ldata1_read),
    .m_axi_gmem3_AWVALID(AxiStream2Axi_U0_m_axi_gmem3_AWVALID),
    .m_axi_gmem3_AWREADY(m_axi_gmem3_AWREADY),
    .m_axi_gmem3_AWADDR(AxiStream2Axi_U0_m_axi_gmem3_AWADDR),
    .m_axi_gmem3_AWID(AxiStream2Axi_U0_m_axi_gmem3_AWID),
    .m_axi_gmem3_AWLEN(AxiStream2Axi_U0_m_axi_gmem3_AWLEN),
    .m_axi_gmem3_AWSIZE(AxiStream2Axi_U0_m_axi_gmem3_AWSIZE),
    .m_axi_gmem3_AWBURST(AxiStream2Axi_U0_m_axi_gmem3_AWBURST),
    .m_axi_gmem3_AWLOCK(AxiStream2Axi_U0_m_axi_gmem3_AWLOCK),
    .m_axi_gmem3_AWCACHE(AxiStream2Axi_U0_m_axi_gmem3_AWCACHE),
    .m_axi_gmem3_AWPROT(AxiStream2Axi_U0_m_axi_gmem3_AWPROT),
    .m_axi_gmem3_AWQOS(AxiStream2Axi_U0_m_axi_gmem3_AWQOS),
    .m_axi_gmem3_AWREGION(AxiStream2Axi_U0_m_axi_gmem3_AWREGION),
    .m_axi_gmem3_AWUSER(AxiStream2Axi_U0_m_axi_gmem3_AWUSER),
    .m_axi_gmem3_WVALID(AxiStream2Axi_U0_m_axi_gmem3_WVALID),
    .m_axi_gmem3_WREADY(m_axi_gmem3_WREADY),
    .m_axi_gmem3_WDATA(AxiStream2Axi_U0_m_axi_gmem3_WDATA),
    .m_axi_gmem3_WSTRB(AxiStream2Axi_U0_m_axi_gmem3_WSTRB),
    .m_axi_gmem3_WLAST(AxiStream2Axi_U0_m_axi_gmem3_WLAST),
    .m_axi_gmem3_WID(AxiStream2Axi_U0_m_axi_gmem3_WID),
    .m_axi_gmem3_WUSER(AxiStream2Axi_U0_m_axi_gmem3_WUSER),
    .m_axi_gmem3_ARVALID(AxiStream2Axi_U0_m_axi_gmem3_ARVALID),
    .m_axi_gmem3_ARREADY(1'b0),
    .m_axi_gmem3_ARADDR(AxiStream2Axi_U0_m_axi_gmem3_ARADDR),
    .m_axi_gmem3_ARID(AxiStream2Axi_U0_m_axi_gmem3_ARID),
    .m_axi_gmem3_ARLEN(AxiStream2Axi_U0_m_axi_gmem3_ARLEN),
    .m_axi_gmem3_ARSIZE(AxiStream2Axi_U0_m_axi_gmem3_ARSIZE),
    .m_axi_gmem3_ARBURST(AxiStream2Axi_U0_m_axi_gmem3_ARBURST),
    .m_axi_gmem3_ARLOCK(AxiStream2Axi_U0_m_axi_gmem3_ARLOCK),
    .m_axi_gmem3_ARCACHE(AxiStream2Axi_U0_m_axi_gmem3_ARCACHE),
    .m_axi_gmem3_ARPROT(AxiStream2Axi_U0_m_axi_gmem3_ARPROT),
    .m_axi_gmem3_ARQOS(AxiStream2Axi_U0_m_axi_gmem3_ARQOS),
    .m_axi_gmem3_ARREGION(AxiStream2Axi_U0_m_axi_gmem3_ARREGION),
    .m_axi_gmem3_ARUSER(AxiStream2Axi_U0_m_axi_gmem3_ARUSER),
    .m_axi_gmem3_RVALID(1'b0),
    .m_axi_gmem3_RREADY(AxiStream2Axi_U0_m_axi_gmem3_RREADY),
    .m_axi_gmem3_RDATA(8'd0),
    .m_axi_gmem3_RLAST(1'b0),
    .m_axi_gmem3_RID(1'd0),
    .m_axi_gmem3_RFIFONUM(11'd0),
    .m_axi_gmem3_RUSER(1'd0),
    .m_axi_gmem3_RRESP(2'd0),
    .m_axi_gmem3_BVALID(m_axi_gmem3_BVALID),
    .m_axi_gmem3_BREADY(AxiStream2Axi_U0_m_axi_gmem3_BREADY),
    .m_axi_gmem3_BRESP(m_axi_gmem3_BRESP),
    .m_axi_gmem3_BID(m_axi_gmem3_BID),
    .m_axi_gmem3_BUSER(m_axi_gmem3_BUSER),
    .dout_dout(dout_c_dout),
    .dout_num_data_valid(dout_c_num_data_valid),
    .dout_fifo_cap(dout_c_fifo_cap),
    .dout_empty_n(dout_c_empty_n),
    .dout_read(AxiStream2Axi_U0_dout_read),
    .p_read(axibound_V_dout),
    .ap_ext_blocking_n(AxiStream2Axi_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(AxiStream2Axi_U0_ap_str_blocking_n),
    .ap_int_blocking_n(AxiStream2Axi_U0_ap_int_blocking_n)
);

remap_accel_fifo_w64_d4_S dout_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc6_U0_dout_c_din),
    .if_full_n(dout_c_full_n),
    .if_write(entry_proc6_U0_dout_c_write),
    .if_dout(dout_c_dout),
    .if_num_data_valid(dout_c_num_data_valid),
    .if_fifo_cap(dout_c_fifo_cap),
    .if_empty_n(dout_c_empty_n),
    .if_read(AxiStream2Axi_U0_dout_read)
);

remap_accel_fifo_w22_d2_S p_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(addrbound_U0_p_channel),
    .if_full_n(p_channel_full_n),
    .if_write(addrbound_U0_ap_done),
    .if_dout(p_channel_dout),
    .if_num_data_valid(p_channel_num_data_valid),
    .if_fifo_cap(p_channel_fifo_cap),
    .if_empty_n(p_channel_empty_n),
    .if_read(Mat2Axi_Block_entry24_proc_U0_ap_ready)
);

remap_accel_fifo_w22_d2_S axibound_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Mat2Axi_Block_entry24_proc_U0_ap_return),
    .if_full_n(axibound_V_full_n),
    .if_write(Mat2Axi_Block_entry24_proc_U0_ap_done),
    .if_dout(axibound_V_dout),
    .if_num_data_valid(axibound_V_num_data_valid),
    .if_fifo_cap(axibound_V_fifo_cap),
    .if_empty_n(axibound_V_empty_n),
    .if_read(AxiStream2Axi_U0_ap_ready)
);

remap_accel_fifo_w8_d2_S_x ldata_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Mat2AxiStream_U0_ldata1_din),
    .if_full_n(ldata_full_n),
    .if_write(Mat2AxiStream_U0_ldata1_write),
    .if_dout(ldata_dout),
    .if_num_data_valid(ldata_num_data_valid),
    .if_fifo_cap(ldata_fifo_cap),
    .if_empty_n(ldata_empty_n),
    .if_read(AxiStream2Axi_U0_ldata1_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_Mat2AxiStream_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Mat2AxiStream_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Mat2AxiStream_U0_ap_ready <= ap_sync_Mat2AxiStream_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_addrbound_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_addrbound_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_addrbound_U0_ap_ready <= ap_sync_addrbound_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_entry_proc6_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_entry_proc6_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_entry_proc6_U0_ap_ready <= ap_sync_entry_proc6_U0_ap_ready;
        end
    end
end

assign AxiStream2Axi_U0_ap_continue = ap_continue;

assign AxiStream2Axi_U0_ap_start = axibound_V_empty_n;

assign Mat2AxiStream_U0_ap_continue = 1'b1;

assign Mat2AxiStream_U0_ap_start = ((ap_sync_reg_Mat2AxiStream_U0_ap_ready ^ 1'b1) & ap_start);

assign Mat2Axi_Block_entry24_proc_U0_ap_continue = axibound_V_full_n;

assign Mat2Axi_Block_entry24_proc_U0_ap_start = p_channel_empty_n;

assign addrbound_U0_ap_continue = p_channel_full_n;

assign addrbound_U0_ap_start = ((ap_sync_reg_addrbound_U0_ap_ready ^ 1'b1) & ap_start);

assign addrbound_U0_cols = {{cols[(16 - 32'd1):0]}};

assign ap_done = AxiStream2Axi_U0_ap_done;

assign ap_ext_blocking_cur_n = 1'b1;

assign ap_ext_blocking_n = (ap_ext_blocking_sub_n & ap_ext_blocking_cur_n);

assign ap_ext_blocking_sub_n = (entry_proc6_U0_ap_ext_blocking_n & addrbound_U0_ap_ext_blocking_n & Mat2Axi_Block_entry24_proc_U0_ap_ext_blocking_n & Mat2AxiStream_U0_ap_ext_blocking_n & AxiStream2Axi_U0_ap_ext_blocking_n);

assign ap_idle = ((axibound_V_empty_n ^ 1'b1) & (p_channel_empty_n ^ 1'b1) & entry_proc6_U0_ap_idle & addrbound_U0_ap_idle & Mat2Axi_Block_entry24_proc_U0_ap_idle & Mat2AxiStream_U0_ap_idle & AxiStream2Axi_U0_ap_idle);

assign ap_int_blocking_cur_n = 1'b1;

assign ap_int_blocking_n = (ap_int_blocking_sub_n & ap_int_blocking_cur_n);

assign ap_int_blocking_sub_n = (entry_proc6_U0_ap_int_blocking_n & addrbound_U0_ap_int_blocking_n & Mat2Axi_Block_entry24_proc_U0_ap_int_blocking_n & Mat2AxiStream_U0_ap_int_blocking_n & AxiStream2Axi_U0_ap_int_blocking_n);

assign ap_ready = ap_sync_ready;

assign ap_str_blocking_cur_n = 1'b1;

assign ap_str_blocking_n = (ap_str_blocking_sub_n & ap_str_blocking_cur_n);

assign ap_str_blocking_sub_n = (entry_proc6_U0_ap_str_blocking_n & addrbound_U0_ap_str_blocking_n & Mat2Axi_Block_entry24_proc_U0_ap_str_blocking_n & Mat2AxiStream_U0_ap_str_blocking_n & AxiStream2Axi_U0_ap_str_blocking_n);

assign ap_sync_Mat2AxiStream_U0_ap_ready = (ap_sync_reg_Mat2AxiStream_U0_ap_ready | Mat2AxiStream_U0_ap_ready);

assign ap_sync_addrbound_U0_ap_ready = (ap_sync_reg_addrbound_U0_ap_ready | addrbound_U0_ap_ready);

assign ap_sync_entry_proc6_U0_ap_ready = (entry_proc6_U0_ap_ready | ap_sync_reg_entry_proc6_U0_ap_ready);

assign ap_sync_ready = (ap_sync_entry_proc6_U0_ap_ready & ap_sync_addrbound_U0_ap_ready & ap_sync_Mat2AxiStream_U0_ap_ready);

assign entry_proc6_U0_ap_continue = 1'b1;

assign entry_proc6_U0_ap_start = ((ap_sync_reg_entry_proc6_U0_ap_ready ^ 1'b1) & ap_start);

assign imgOutput_data4_read = Mat2AxiStream_U0_imgOutput_data4_read;

assign m_axi_gmem3_ARADDR = 64'd0;

assign m_axi_gmem3_ARBURST = 2'd0;

assign m_axi_gmem3_ARCACHE = 4'd0;

assign m_axi_gmem3_ARID = 1'd0;

assign m_axi_gmem3_ARLEN = 32'd0;

assign m_axi_gmem3_ARLOCK = 2'd0;

assign m_axi_gmem3_ARPROT = 3'd0;

assign m_axi_gmem3_ARQOS = 4'd0;

assign m_axi_gmem3_ARREGION = 4'd0;

assign m_axi_gmem3_ARSIZE = 3'd0;

assign m_axi_gmem3_ARUSER = 1'd0;

assign m_axi_gmem3_ARVALID = 1'b0;

assign m_axi_gmem3_AWADDR = AxiStream2Axi_U0_m_axi_gmem3_AWADDR;

assign m_axi_gmem3_AWBURST = AxiStream2Axi_U0_m_axi_gmem3_AWBURST;

assign m_axi_gmem3_AWCACHE = AxiStream2Axi_U0_m_axi_gmem3_AWCACHE;

assign m_axi_gmem3_AWID = AxiStream2Axi_U0_m_axi_gmem3_AWID;

assign m_axi_gmem3_AWLEN = AxiStream2Axi_U0_m_axi_gmem3_AWLEN;

assign m_axi_gmem3_AWLOCK = AxiStream2Axi_U0_m_axi_gmem3_AWLOCK;

assign m_axi_gmem3_AWPROT = AxiStream2Axi_U0_m_axi_gmem3_AWPROT;

assign m_axi_gmem3_AWQOS = AxiStream2Axi_U0_m_axi_gmem3_AWQOS;

assign m_axi_gmem3_AWREGION = AxiStream2Axi_U0_m_axi_gmem3_AWREGION;

assign m_axi_gmem3_AWSIZE = AxiStream2Axi_U0_m_axi_gmem3_AWSIZE;

assign m_axi_gmem3_AWUSER = AxiStream2Axi_U0_m_axi_gmem3_AWUSER;

assign m_axi_gmem3_AWVALID = AxiStream2Axi_U0_m_axi_gmem3_AWVALID;

assign m_axi_gmem3_BREADY = AxiStream2Axi_U0_m_axi_gmem3_BREADY;

assign m_axi_gmem3_RREADY = 1'b0;

assign m_axi_gmem3_WDATA = AxiStream2Axi_U0_m_axi_gmem3_WDATA;

assign m_axi_gmem3_WID = AxiStream2Axi_U0_m_axi_gmem3_WID;

assign m_axi_gmem3_WLAST = AxiStream2Axi_U0_m_axi_gmem3_WLAST;

assign m_axi_gmem3_WSTRB = AxiStream2Axi_U0_m_axi_gmem3_WSTRB;

assign m_axi_gmem3_WUSER = AxiStream2Axi_U0_m_axi_gmem3_WUSER;

assign m_axi_gmem3_WVALID = AxiStream2Axi_U0_m_axi_gmem3_WVALID;

endmodule //remap_accel_Mat2Axi
