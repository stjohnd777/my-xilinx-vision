// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module gaussian_filter_accel_xfMat2Array_256_0_2160_3840_1_2_1_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_read,
        p_read1,
        out_mat_data2_dout,
        out_mat_data2_num_data_valid,
        out_mat_data2_fifo_cap,
        out_mat_data2_empty_n,
        out_mat_data2_read,
        m_axi_gmem2_AWVALID,
        m_axi_gmem2_AWREADY,
        m_axi_gmem2_AWADDR,
        m_axi_gmem2_AWID,
        m_axi_gmem2_AWLEN,
        m_axi_gmem2_AWSIZE,
        m_axi_gmem2_AWBURST,
        m_axi_gmem2_AWLOCK,
        m_axi_gmem2_AWCACHE,
        m_axi_gmem2_AWPROT,
        m_axi_gmem2_AWQOS,
        m_axi_gmem2_AWREGION,
        m_axi_gmem2_AWUSER,
        m_axi_gmem2_WVALID,
        m_axi_gmem2_WREADY,
        m_axi_gmem2_WDATA,
        m_axi_gmem2_WSTRB,
        m_axi_gmem2_WLAST,
        m_axi_gmem2_WID,
        m_axi_gmem2_WUSER,
        m_axi_gmem2_ARVALID,
        m_axi_gmem2_ARREADY,
        m_axi_gmem2_ARADDR,
        m_axi_gmem2_ARID,
        m_axi_gmem2_ARLEN,
        m_axi_gmem2_ARSIZE,
        m_axi_gmem2_ARBURST,
        m_axi_gmem2_ARLOCK,
        m_axi_gmem2_ARCACHE,
        m_axi_gmem2_ARPROT,
        m_axi_gmem2_ARQOS,
        m_axi_gmem2_ARREGION,
        m_axi_gmem2_ARUSER,
        m_axi_gmem2_RVALID,
        m_axi_gmem2_RREADY,
        m_axi_gmem2_RDATA,
        m_axi_gmem2_RLAST,
        m_axi_gmem2_RID,
        m_axi_gmem2_RFIFONUM,
        m_axi_gmem2_RUSER,
        m_axi_gmem2_RRESP,
        m_axi_gmem2_BVALID,
        m_axi_gmem2_BREADY,
        m_axi_gmem2_BRESP,
        m_axi_gmem2_BID,
        m_axi_gmem2_BUSER,
        dstPtr_dout,
        dstPtr_num_data_valid,
        dstPtr_fifo_cap,
        dstPtr_empty_n,
        dstPtr_read,
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
input  [31:0] p_read;
input  [31:0] p_read1;
input  [7:0] out_mat_data2_dout;
input  [1:0] out_mat_data2_num_data_valid;
input  [1:0] out_mat_data2_fifo_cap;
input   out_mat_data2_empty_n;
output   out_mat_data2_read;
output   m_axi_gmem2_AWVALID;
input   m_axi_gmem2_AWREADY;
output  [63:0] m_axi_gmem2_AWADDR;
output  [0:0] m_axi_gmem2_AWID;
output  [31:0] m_axi_gmem2_AWLEN;
output  [2:0] m_axi_gmem2_AWSIZE;
output  [1:0] m_axi_gmem2_AWBURST;
output  [1:0] m_axi_gmem2_AWLOCK;
output  [3:0] m_axi_gmem2_AWCACHE;
output  [2:0] m_axi_gmem2_AWPROT;
output  [3:0] m_axi_gmem2_AWQOS;
output  [3:0] m_axi_gmem2_AWREGION;
output  [0:0] m_axi_gmem2_AWUSER;
output   m_axi_gmem2_WVALID;
input   m_axi_gmem2_WREADY;
output  [255:0] m_axi_gmem2_WDATA;
output  [31:0] m_axi_gmem2_WSTRB;
output   m_axi_gmem2_WLAST;
output  [0:0] m_axi_gmem2_WID;
output  [0:0] m_axi_gmem2_WUSER;
output   m_axi_gmem2_ARVALID;
input   m_axi_gmem2_ARREADY;
output  [63:0] m_axi_gmem2_ARADDR;
output  [0:0] m_axi_gmem2_ARID;
output  [31:0] m_axi_gmem2_ARLEN;
output  [2:0] m_axi_gmem2_ARSIZE;
output  [1:0] m_axi_gmem2_ARBURST;
output  [1:0] m_axi_gmem2_ARLOCK;
output  [3:0] m_axi_gmem2_ARCACHE;
output  [2:0] m_axi_gmem2_ARPROT;
output  [3:0] m_axi_gmem2_ARQOS;
output  [3:0] m_axi_gmem2_ARREGION;
output  [0:0] m_axi_gmem2_ARUSER;
input   m_axi_gmem2_RVALID;
output   m_axi_gmem2_RREADY;
input  [255:0] m_axi_gmem2_RDATA;
input   m_axi_gmem2_RLAST;
input  [0:0] m_axi_gmem2_RID;
input  [8:0] m_axi_gmem2_RFIFONUM;
input  [0:0] m_axi_gmem2_RUSER;
input  [1:0] m_axi_gmem2_RRESP;
input   m_axi_gmem2_BVALID;
output   m_axi_gmem2_BREADY;
input  [1:0] m_axi_gmem2_BRESP;
input  [0:0] m_axi_gmem2_BID;
input  [0:0] m_axi_gmem2_BUSER;
input  [63:0] dstPtr_dout;
input  [3:0] dstPtr_num_data_valid;
input  [3:0] dstPtr_fifo_cap;
input   dstPtr_empty_n;
output   dstPtr_read;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_mat_data2_read;
reg m_axi_gmem2_AWVALID;
reg m_axi_gmem2_WVALID;
reg m_axi_gmem2_BREADY;
reg dstPtr_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    dstPtr_blk_n;
reg   [63:0] dstPtr_read_reg_82;
wire   [15:0] trunc_ln1558_fu_73_p1;
reg   [15:0] trunc_ln1558_reg_87;
wire    grp_Mat2Axi_fu_62_out_mat_data2_read;
wire    grp_Mat2Axi_fu_62_m_axi_gmem2_AWVALID;
wire   [63:0] grp_Mat2Axi_fu_62_m_axi_gmem2_AWADDR;
wire   [0:0] grp_Mat2Axi_fu_62_m_axi_gmem2_AWID;
wire   [31:0] grp_Mat2Axi_fu_62_m_axi_gmem2_AWLEN;
wire   [2:0] grp_Mat2Axi_fu_62_m_axi_gmem2_AWSIZE;
wire   [1:0] grp_Mat2Axi_fu_62_m_axi_gmem2_AWBURST;
wire   [1:0] grp_Mat2Axi_fu_62_m_axi_gmem2_AWLOCK;
wire   [3:0] grp_Mat2Axi_fu_62_m_axi_gmem2_AWCACHE;
wire   [2:0] grp_Mat2Axi_fu_62_m_axi_gmem2_AWPROT;
wire   [3:0] grp_Mat2Axi_fu_62_m_axi_gmem2_AWQOS;
wire   [3:0] grp_Mat2Axi_fu_62_m_axi_gmem2_AWREGION;
wire   [0:0] grp_Mat2Axi_fu_62_m_axi_gmem2_AWUSER;
wire    grp_Mat2Axi_fu_62_m_axi_gmem2_WVALID;
wire   [255:0] grp_Mat2Axi_fu_62_m_axi_gmem2_WDATA;
wire   [31:0] grp_Mat2Axi_fu_62_m_axi_gmem2_WSTRB;
wire    grp_Mat2Axi_fu_62_m_axi_gmem2_WLAST;
wire   [0:0] grp_Mat2Axi_fu_62_m_axi_gmem2_WID;
wire   [0:0] grp_Mat2Axi_fu_62_m_axi_gmem2_WUSER;
wire    grp_Mat2Axi_fu_62_m_axi_gmem2_ARVALID;
wire   [63:0] grp_Mat2Axi_fu_62_m_axi_gmem2_ARADDR;
wire   [0:0] grp_Mat2Axi_fu_62_m_axi_gmem2_ARID;
wire   [31:0] grp_Mat2Axi_fu_62_m_axi_gmem2_ARLEN;
wire   [2:0] grp_Mat2Axi_fu_62_m_axi_gmem2_ARSIZE;
wire   [1:0] grp_Mat2Axi_fu_62_m_axi_gmem2_ARBURST;
wire   [1:0] grp_Mat2Axi_fu_62_m_axi_gmem2_ARLOCK;
wire   [3:0] grp_Mat2Axi_fu_62_m_axi_gmem2_ARCACHE;
wire   [2:0] grp_Mat2Axi_fu_62_m_axi_gmem2_ARPROT;
wire   [3:0] grp_Mat2Axi_fu_62_m_axi_gmem2_ARQOS;
wire   [3:0] grp_Mat2Axi_fu_62_m_axi_gmem2_ARREGION;
wire   [0:0] grp_Mat2Axi_fu_62_m_axi_gmem2_ARUSER;
wire    grp_Mat2Axi_fu_62_m_axi_gmem2_RREADY;
wire    grp_Mat2Axi_fu_62_m_axi_gmem2_BREADY;
wire    grp_Mat2Axi_fu_62_ap_start;
wire    grp_Mat2Axi_fu_62_ap_done;
wire    grp_Mat2Axi_fu_62_ap_ready;
wire    grp_Mat2Axi_fu_62_ap_idle;
reg    grp_Mat2Axi_fu_62_ap_continue;
wire    grp_Mat2Axi_fu_62_ap_ext_blocking_n;
wire    grp_Mat2Axi_fu_62_ap_str_blocking_n;
wire    grp_Mat2Axi_fu_62_ap_int_blocking_n;
reg    grp_Mat2Axi_fu_62_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_sync_grp_Mat2Axi_fu_62_ap_ready;
wire    ap_sync_grp_Mat2Axi_fu_62_ap_done;
reg    ap_block_state3_on_subcall_done;
reg    ap_sync_reg_grp_Mat2Axi_fu_62_ap_ready;
reg    ap_sync_reg_grp_Mat2Axi_fu_62_ap_done;
reg    ap_block_state1;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_int_blocking_cur_n;
reg    ap_ext_blocking_sub_n;
reg    ap_wait_0;
reg    ap_sub_ext_blocking_0;
reg    ap_str_blocking_sub_n;
reg    ap_sub_str_blocking_0;
reg    ap_int_blocking_sub_n;
reg    ap_sub_int_blocking_0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_Mat2Axi_fu_62_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_Mat2Axi_fu_62_ap_ready = 1'b0;
#0 ap_sync_reg_grp_Mat2Axi_fu_62_ap_done = 1'b0;
end

gaussian_filter_accel_Mat2Axi grp_Mat2Axi_fu_62(
    .out_mat_data2_dout(out_mat_data2_dout),
    .out_mat_data2_empty_n(out_mat_data2_empty_n),
    .out_mat_data2_read(grp_Mat2Axi_fu_62_out_mat_data2_read),
    .m_axi_gmem2_AWVALID(grp_Mat2Axi_fu_62_m_axi_gmem2_AWVALID),
    .m_axi_gmem2_AWREADY(m_axi_gmem2_AWREADY),
    .m_axi_gmem2_AWADDR(grp_Mat2Axi_fu_62_m_axi_gmem2_AWADDR),
    .m_axi_gmem2_AWID(grp_Mat2Axi_fu_62_m_axi_gmem2_AWID),
    .m_axi_gmem2_AWLEN(grp_Mat2Axi_fu_62_m_axi_gmem2_AWLEN),
    .m_axi_gmem2_AWSIZE(grp_Mat2Axi_fu_62_m_axi_gmem2_AWSIZE),
    .m_axi_gmem2_AWBURST(grp_Mat2Axi_fu_62_m_axi_gmem2_AWBURST),
    .m_axi_gmem2_AWLOCK(grp_Mat2Axi_fu_62_m_axi_gmem2_AWLOCK),
    .m_axi_gmem2_AWCACHE(grp_Mat2Axi_fu_62_m_axi_gmem2_AWCACHE),
    .m_axi_gmem2_AWPROT(grp_Mat2Axi_fu_62_m_axi_gmem2_AWPROT),
    .m_axi_gmem2_AWQOS(grp_Mat2Axi_fu_62_m_axi_gmem2_AWQOS),
    .m_axi_gmem2_AWREGION(grp_Mat2Axi_fu_62_m_axi_gmem2_AWREGION),
    .m_axi_gmem2_AWUSER(grp_Mat2Axi_fu_62_m_axi_gmem2_AWUSER),
    .m_axi_gmem2_WVALID(grp_Mat2Axi_fu_62_m_axi_gmem2_WVALID),
    .m_axi_gmem2_WREADY(m_axi_gmem2_WREADY),
    .m_axi_gmem2_WDATA(grp_Mat2Axi_fu_62_m_axi_gmem2_WDATA),
    .m_axi_gmem2_WSTRB(grp_Mat2Axi_fu_62_m_axi_gmem2_WSTRB),
    .m_axi_gmem2_WLAST(grp_Mat2Axi_fu_62_m_axi_gmem2_WLAST),
    .m_axi_gmem2_WID(grp_Mat2Axi_fu_62_m_axi_gmem2_WID),
    .m_axi_gmem2_WUSER(grp_Mat2Axi_fu_62_m_axi_gmem2_WUSER),
    .m_axi_gmem2_ARVALID(grp_Mat2Axi_fu_62_m_axi_gmem2_ARVALID),
    .m_axi_gmem2_ARREADY(1'b0),
    .m_axi_gmem2_ARADDR(grp_Mat2Axi_fu_62_m_axi_gmem2_ARADDR),
    .m_axi_gmem2_ARID(grp_Mat2Axi_fu_62_m_axi_gmem2_ARID),
    .m_axi_gmem2_ARLEN(grp_Mat2Axi_fu_62_m_axi_gmem2_ARLEN),
    .m_axi_gmem2_ARSIZE(grp_Mat2Axi_fu_62_m_axi_gmem2_ARSIZE),
    .m_axi_gmem2_ARBURST(grp_Mat2Axi_fu_62_m_axi_gmem2_ARBURST),
    .m_axi_gmem2_ARLOCK(grp_Mat2Axi_fu_62_m_axi_gmem2_ARLOCK),
    .m_axi_gmem2_ARCACHE(grp_Mat2Axi_fu_62_m_axi_gmem2_ARCACHE),
    .m_axi_gmem2_ARPROT(grp_Mat2Axi_fu_62_m_axi_gmem2_ARPROT),
    .m_axi_gmem2_ARQOS(grp_Mat2Axi_fu_62_m_axi_gmem2_ARQOS),
    .m_axi_gmem2_ARREGION(grp_Mat2Axi_fu_62_m_axi_gmem2_ARREGION),
    .m_axi_gmem2_ARUSER(grp_Mat2Axi_fu_62_m_axi_gmem2_ARUSER),
    .m_axi_gmem2_RVALID(1'b0),
    .m_axi_gmem2_RREADY(grp_Mat2Axi_fu_62_m_axi_gmem2_RREADY),
    .m_axi_gmem2_RDATA(256'd0),
    .m_axi_gmem2_RLAST(1'b0),
    .m_axi_gmem2_RID(1'd0),
    .m_axi_gmem2_RFIFONUM(9'd0),
    .m_axi_gmem2_RUSER(1'd0),
    .m_axi_gmem2_RRESP(2'd0),
    .m_axi_gmem2_BVALID(m_axi_gmem2_BVALID),
    .m_axi_gmem2_BREADY(grp_Mat2Axi_fu_62_m_axi_gmem2_BREADY),
    .m_axi_gmem2_BRESP(m_axi_gmem2_BRESP),
    .m_axi_gmem2_BID(m_axi_gmem2_BID),
    .m_axi_gmem2_BUSER(m_axi_gmem2_BUSER),
    .dout(dstPtr_read_reg_82),
    .rows(trunc_ln1558_reg_87),
    .cols(p_read1),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .dout_ap_vld(1'b1),
    .ap_start(grp_Mat2Axi_fu_62_ap_start),
    .rows_ap_vld(1'b1),
    .cols_ap_vld(1'b1),
    .ap_done(grp_Mat2Axi_fu_62_ap_done),
    .ap_ready(grp_Mat2Axi_fu_62_ap_ready),
    .ap_idle(grp_Mat2Axi_fu_62_ap_idle),
    .ap_continue(grp_Mat2Axi_fu_62_ap_continue),
    .ap_ext_blocking_n(grp_Mat2Axi_fu_62_ap_ext_blocking_n),
    .ap_str_blocking_n(grp_Mat2Axi_fu_62_ap_str_blocking_n),
    .ap_int_blocking_n(grp_Mat2Axi_fu_62_ap_int_blocking_n)
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
        end else if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_Mat2Axi_fu_62_ap_done <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
            ap_sync_reg_grp_Mat2Axi_fu_62_ap_done <= 1'b0;
        end else if ((grp_Mat2Axi_fu_62_ap_done == 1'b1)) begin
            ap_sync_reg_grp_Mat2Axi_fu_62_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_Mat2Axi_fu_62_ap_ready <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
            ap_sync_reg_grp_Mat2Axi_fu_62_ap_ready <= 1'b0;
        end else if ((grp_Mat2Axi_fu_62_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_Mat2Axi_fu_62_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Mat2Axi_fu_62_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state3) & (ap_sync_grp_Mat2Axi_fu_62_ap_ready == 1'b0)))) begin
            grp_Mat2Axi_fu_62_ap_start_reg <= 1'b1;
        end else if ((grp_Mat2Axi_fu_62_ap_ready == 1'b1)) begin
            grp_Mat2Axi_fu_62_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        dstPtr_read_reg_82 <= dstPtr_dout;
        trunc_ln1558_reg_87 <= trunc_ln1558_fu_73_p1;
    end
end

always @ (*) begin
    if (((dstPtr_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state3_on_subcall_done)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_wait_0 & ap_sub_ext_blocking_0) == 1'b1)) begin
        ap_ext_blocking_sub_n = 1'b0;
    end else begin
        ap_ext_blocking_sub_n = 1'b1;
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
    if (((ap_wait_0 & ap_sub_int_blocking_0) == 1'b1)) begin
        ap_int_blocking_sub_n = 1'b0;
    end else begin
        ap_int_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_wait_0 & ap_sub_str_blocking_0) == 1'b1)) begin
        ap_str_blocking_sub_n = 1'b0;
    end else begin
        ap_str_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if ((grp_Mat2Axi_fu_62_ap_ext_blocking_n == 1'b0)) begin
        ap_sub_ext_blocking_0 = 1'b1;
    end else begin
        ap_sub_ext_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_Mat2Axi_fu_62_ap_int_blocking_n == 1'b0)) begin
        ap_sub_int_blocking_0 = 1'b1;
    end else begin
        ap_sub_int_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_Mat2Axi_fu_62_ap_str_blocking_n == 1'b0)) begin
        ap_sub_str_blocking_0 = 1'b1;
    end else begin
        ap_sub_str_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_ST_fsm_state3 == ap_CS_fsm)) begin
        ap_wait_0 = 1'b1;
    end else begin
        ap_wait_0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dstPtr_blk_n = dstPtr_empty_n;
    end else begin
        dstPtr_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((dstPtr_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dstPtr_read = 1'b1;
    end else begin
        dstPtr_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
        grp_Mat2Axi_fu_62_ap_continue = 1'b1;
    end else begin
        grp_Mat2Axi_fu_62_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_gmem2_AWVALID = grp_Mat2Axi_fu_62_m_axi_gmem2_AWVALID;
    end else begin
        m_axi_gmem2_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_gmem2_BREADY = grp_Mat2Axi_fu_62_m_axi_gmem2_BREADY;
    end else begin
        m_axi_gmem2_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_gmem2_WVALID = grp_Mat2Axi_fu_62_m_axi_gmem2_WVALID;
    end else begin
        m_axi_gmem2_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        out_mat_data2_read = grp_Mat2Axi_fu_62_out_mat_data2_read;
    end else begin
        out_mat_data2_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((dstPtr_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
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

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((dstPtr_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state3_on_subcall_done = ((ap_sync_grp_Mat2Axi_fu_62_ap_ready & ap_sync_grp_Mat2Axi_fu_62_ap_done) == 1'b0);
end

assign ap_ext_blocking_n = (ap_ext_blocking_sub_n & 1'b1);

assign ap_int_blocking_cur_n = dstPtr_blk_n;

assign ap_int_blocking_n = (ap_int_blocking_sub_n & ap_int_blocking_cur_n);

assign ap_str_blocking_n = (ap_str_blocking_sub_n & 1'b1);

assign ap_sync_grp_Mat2Axi_fu_62_ap_done = (grp_Mat2Axi_fu_62_ap_done | ap_sync_reg_grp_Mat2Axi_fu_62_ap_done);

assign ap_sync_grp_Mat2Axi_fu_62_ap_ready = (grp_Mat2Axi_fu_62_ap_ready | ap_sync_reg_grp_Mat2Axi_fu_62_ap_ready);

assign grp_Mat2Axi_fu_62_ap_start = grp_Mat2Axi_fu_62_ap_start_reg;

assign m_axi_gmem2_ARADDR = 64'd0;

assign m_axi_gmem2_ARBURST = 2'd0;

assign m_axi_gmem2_ARCACHE = 4'd0;

assign m_axi_gmem2_ARID = 1'd0;

assign m_axi_gmem2_ARLEN = 32'd0;

assign m_axi_gmem2_ARLOCK = 2'd0;

assign m_axi_gmem2_ARPROT = 3'd0;

assign m_axi_gmem2_ARQOS = 4'd0;

assign m_axi_gmem2_ARREGION = 4'd0;

assign m_axi_gmem2_ARSIZE = 3'd0;

assign m_axi_gmem2_ARUSER = 1'd0;

assign m_axi_gmem2_ARVALID = 1'b0;

assign m_axi_gmem2_AWADDR = grp_Mat2Axi_fu_62_m_axi_gmem2_AWADDR;

assign m_axi_gmem2_AWBURST = grp_Mat2Axi_fu_62_m_axi_gmem2_AWBURST;

assign m_axi_gmem2_AWCACHE = grp_Mat2Axi_fu_62_m_axi_gmem2_AWCACHE;

assign m_axi_gmem2_AWID = grp_Mat2Axi_fu_62_m_axi_gmem2_AWID;

assign m_axi_gmem2_AWLEN = grp_Mat2Axi_fu_62_m_axi_gmem2_AWLEN;

assign m_axi_gmem2_AWLOCK = grp_Mat2Axi_fu_62_m_axi_gmem2_AWLOCK;

assign m_axi_gmem2_AWPROT = grp_Mat2Axi_fu_62_m_axi_gmem2_AWPROT;

assign m_axi_gmem2_AWQOS = grp_Mat2Axi_fu_62_m_axi_gmem2_AWQOS;

assign m_axi_gmem2_AWREGION = grp_Mat2Axi_fu_62_m_axi_gmem2_AWREGION;

assign m_axi_gmem2_AWSIZE = grp_Mat2Axi_fu_62_m_axi_gmem2_AWSIZE;

assign m_axi_gmem2_AWUSER = grp_Mat2Axi_fu_62_m_axi_gmem2_AWUSER;

assign m_axi_gmem2_RREADY = 1'b0;

assign m_axi_gmem2_WDATA = grp_Mat2Axi_fu_62_m_axi_gmem2_WDATA;

assign m_axi_gmem2_WID = grp_Mat2Axi_fu_62_m_axi_gmem2_WID;

assign m_axi_gmem2_WLAST = grp_Mat2Axi_fu_62_m_axi_gmem2_WLAST;

assign m_axi_gmem2_WSTRB = grp_Mat2Axi_fu_62_m_axi_gmem2_WSTRB;

assign m_axi_gmem2_WUSER = grp_Mat2Axi_fu_62_m_axi_gmem2_WUSER;

assign trunc_ln1558_fu_73_p1 = p_read[15:0];

endmodule //gaussian_filter_accel_xfMat2Array_256_0_2160_3840_1_2_1_s