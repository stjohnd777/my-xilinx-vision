// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_accel_AxiStream2Axi (
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
        dout_dout,
        dout_num_data_valid,
        dout_fifo_cap,
        dout_empty_n,
        dout_read,
        p_read
);

parameter    ap_ST_fsm_state1 = 72'd1;
parameter    ap_ST_fsm_state2 = 72'd2;
parameter    ap_ST_fsm_state3 = 72'd4;
parameter    ap_ST_fsm_state4 = 72'd8;
parameter    ap_ST_fsm_state5 = 72'd16;
parameter    ap_ST_fsm_state6 = 72'd32;
parameter    ap_ST_fsm_state7 = 72'd64;
parameter    ap_ST_fsm_state8 = 72'd128;
parameter    ap_ST_fsm_state9 = 72'd256;
parameter    ap_ST_fsm_state10 = 72'd512;
parameter    ap_ST_fsm_state11 = 72'd1024;
parameter    ap_ST_fsm_state12 = 72'd2048;
parameter    ap_ST_fsm_state13 = 72'd4096;
parameter    ap_ST_fsm_state14 = 72'd8192;
parameter    ap_ST_fsm_state15 = 72'd16384;
parameter    ap_ST_fsm_state16 = 72'd32768;
parameter    ap_ST_fsm_state17 = 72'd65536;
parameter    ap_ST_fsm_state18 = 72'd131072;
parameter    ap_ST_fsm_state19 = 72'd262144;
parameter    ap_ST_fsm_state20 = 72'd524288;
parameter    ap_ST_fsm_state21 = 72'd1048576;
parameter    ap_ST_fsm_state22 = 72'd2097152;
parameter    ap_ST_fsm_state23 = 72'd4194304;
parameter    ap_ST_fsm_state24 = 72'd8388608;
parameter    ap_ST_fsm_state25 = 72'd16777216;
parameter    ap_ST_fsm_state26 = 72'd33554432;
parameter    ap_ST_fsm_state27 = 72'd67108864;
parameter    ap_ST_fsm_state28 = 72'd134217728;
parameter    ap_ST_fsm_state29 = 72'd268435456;
parameter    ap_ST_fsm_state30 = 72'd536870912;
parameter    ap_ST_fsm_state31 = 72'd1073741824;
parameter    ap_ST_fsm_state32 = 72'd2147483648;
parameter    ap_ST_fsm_state33 = 72'd4294967296;
parameter    ap_ST_fsm_state34 = 72'd8589934592;
parameter    ap_ST_fsm_state35 = 72'd17179869184;
parameter    ap_ST_fsm_state36 = 72'd34359738368;
parameter    ap_ST_fsm_state37 = 72'd68719476736;
parameter    ap_ST_fsm_state38 = 72'd137438953472;
parameter    ap_ST_fsm_state39 = 72'd274877906944;
parameter    ap_ST_fsm_state40 = 72'd549755813888;
parameter    ap_ST_fsm_state41 = 72'd1099511627776;
parameter    ap_ST_fsm_state42 = 72'd2199023255552;
parameter    ap_ST_fsm_state43 = 72'd4398046511104;
parameter    ap_ST_fsm_state44 = 72'd8796093022208;
parameter    ap_ST_fsm_state45 = 72'd17592186044416;
parameter    ap_ST_fsm_state46 = 72'd35184372088832;
parameter    ap_ST_fsm_state47 = 72'd70368744177664;
parameter    ap_ST_fsm_state48 = 72'd140737488355328;
parameter    ap_ST_fsm_state49 = 72'd281474976710656;
parameter    ap_ST_fsm_state50 = 72'd562949953421312;
parameter    ap_ST_fsm_state51 = 72'd1125899906842624;
parameter    ap_ST_fsm_state52 = 72'd2251799813685248;
parameter    ap_ST_fsm_state53 = 72'd4503599627370496;
parameter    ap_ST_fsm_state54 = 72'd9007199254740992;
parameter    ap_ST_fsm_state55 = 72'd18014398509481984;
parameter    ap_ST_fsm_state56 = 72'd36028797018963968;
parameter    ap_ST_fsm_state57 = 72'd72057594037927936;
parameter    ap_ST_fsm_state58 = 72'd144115188075855872;
parameter    ap_ST_fsm_state59 = 72'd288230376151711744;
parameter    ap_ST_fsm_state60 = 72'd576460752303423488;
parameter    ap_ST_fsm_state61 = 72'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 72'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 72'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 72'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 72'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 72'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 72'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 72'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 72'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 72'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 72'd1180591620717411303424;
parameter    ap_ST_fsm_state72 = 72'd2361183241434822606848;

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
output  [63:0] m_axi_gmem2_WDATA;
output  [7:0] m_axi_gmem2_WSTRB;
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
input  [63:0] m_axi_gmem2_RDATA;
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
input  [63:0] dout_dout;
input  [2:0] dout_num_data_valid;
input  [2:0] dout_fifo_cap;
input   dout_empty_n;
output   dout_read;
input  [16:0] p_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg ldata1_read;
reg m_axi_gmem2_AWVALID;
reg[63:0] m_axi_gmem2_AWADDR;
reg[0:0] m_axi_gmem2_AWID;
reg[31:0] m_axi_gmem2_AWLEN;
reg[2:0] m_axi_gmem2_AWSIZE;
reg[1:0] m_axi_gmem2_AWBURST;
reg[1:0] m_axi_gmem2_AWLOCK;
reg[3:0] m_axi_gmem2_AWCACHE;
reg[2:0] m_axi_gmem2_AWPROT;
reg[3:0] m_axi_gmem2_AWQOS;
reg[3:0] m_axi_gmem2_AWREGION;
reg[0:0] m_axi_gmem2_AWUSER;
reg m_axi_gmem2_WVALID;
reg m_axi_gmem2_BREADY;
reg dout_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [71:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    gmem2_blk_n_AW;
wire    ap_CS_fsm_state2;
reg    gmem2_blk_n_B;
wire    ap_CS_fsm_state72;
reg    dout_blk_n;
reg   [60:0] trunc_ln_reg_113;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_start;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_done;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_idle;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_ready;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ldata1_read;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWVALID;
wire   [63:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWADDR;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWID;
wire   [31:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWLEN;
wire   [2:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWSIZE;
wire   [1:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWBURST;
wire   [1:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWLOCK;
wire   [3:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWCACHE;
wire   [2:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWPROT;
wire   [3:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWQOS;
wire   [3:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWREGION;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWUSER;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WVALID;
wire   [63:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WDATA;
wire   [7:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WSTRB;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WLAST;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WID;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WUSER;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARVALID;
wire   [63:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARADDR;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARID;
wire   [31:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARLEN;
wire   [2:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARSIZE;
wire   [1:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARBURST;
wire   [1:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARLOCK;
wire   [3:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARCACHE;
wire   [2:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARPROT;
wire   [3:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARQOS;
wire   [3:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARREGION;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARUSER;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_RREADY;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_BREADY;
reg    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire  signed [63:0] sext_ln1380_fu_93_p1;
wire   [31:0] zext_ln1380_fu_103_p1;
reg    ap_block_state1;
reg   [71:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
wire    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
wire    ap_ST_fsm_state35_blk;
wire    ap_ST_fsm_state36_blk;
wire    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
wire    ap_ST_fsm_state39_blk;
wire    ap_ST_fsm_state40_blk;
wire    ap_ST_fsm_state41_blk;
wire    ap_ST_fsm_state42_blk;
wire    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
wire    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
wire    ap_ST_fsm_state49_blk;
wire    ap_ST_fsm_state50_blk;
wire    ap_ST_fsm_state51_blk;
wire    ap_ST_fsm_state52_blk;
wire    ap_ST_fsm_state53_blk;
wire    ap_ST_fsm_state54_blk;
wire    ap_ST_fsm_state55_blk;
wire    ap_ST_fsm_state56_blk;
wire    ap_ST_fsm_state57_blk;
wire    ap_ST_fsm_state58_blk;
wire    ap_ST_fsm_state59_blk;
wire    ap_ST_fsm_state60_blk;
wire    ap_ST_fsm_state61_blk;
wire    ap_ST_fsm_state62_blk;
wire    ap_ST_fsm_state63_blk;
wire    ap_ST_fsm_state64_blk;
wire    ap_ST_fsm_state65_blk;
wire    ap_ST_fsm_state66_blk;
wire    ap_ST_fsm_state67_blk;
wire    ap_ST_fsm_state68_blk;
wire    ap_ST_fsm_state69_blk;
wire    ap_ST_fsm_state70_blk;
wire    ap_ST_fsm_state71_blk;
reg    ap_ST_fsm_state72_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 72'd1;
#0 grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_start_reg = 1'b0;
end

canny_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2 grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_start),
    .ap_done(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_done),
    .ap_idle(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_idle),
    .ap_ready(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_ready),
    .ldata1_dout(ldata1_dout),
    .ldata1_num_data_valid(2'd0),
    .ldata1_fifo_cap(2'd0),
    .ldata1_empty_n(ldata1_empty_n),
    .ldata1_read(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ldata1_read),
    .m_axi_gmem2_AWVALID(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWVALID),
    .m_axi_gmem2_AWREADY(m_axi_gmem2_AWREADY),
    .m_axi_gmem2_AWADDR(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWADDR),
    .m_axi_gmem2_AWID(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWID),
    .m_axi_gmem2_AWLEN(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWLEN),
    .m_axi_gmem2_AWSIZE(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWSIZE),
    .m_axi_gmem2_AWBURST(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWBURST),
    .m_axi_gmem2_AWLOCK(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWLOCK),
    .m_axi_gmem2_AWCACHE(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWCACHE),
    .m_axi_gmem2_AWPROT(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWPROT),
    .m_axi_gmem2_AWQOS(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWQOS),
    .m_axi_gmem2_AWREGION(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWREGION),
    .m_axi_gmem2_AWUSER(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWUSER),
    .m_axi_gmem2_WVALID(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WVALID),
    .m_axi_gmem2_WREADY(m_axi_gmem2_WREADY),
    .m_axi_gmem2_WDATA(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WDATA),
    .m_axi_gmem2_WSTRB(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WSTRB),
    .m_axi_gmem2_WLAST(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WLAST),
    .m_axi_gmem2_WID(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WID),
    .m_axi_gmem2_WUSER(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WUSER),
    .m_axi_gmem2_ARVALID(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARVALID),
    .m_axi_gmem2_ARREADY(1'b0),
    .m_axi_gmem2_ARADDR(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARADDR),
    .m_axi_gmem2_ARID(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARID),
    .m_axi_gmem2_ARLEN(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARLEN),
    .m_axi_gmem2_ARSIZE(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARSIZE),
    .m_axi_gmem2_ARBURST(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARBURST),
    .m_axi_gmem2_ARLOCK(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARLOCK),
    .m_axi_gmem2_ARCACHE(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARCACHE),
    .m_axi_gmem2_ARPROT(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARPROT),
    .m_axi_gmem2_ARQOS(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARQOS),
    .m_axi_gmem2_ARREGION(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARREGION),
    .m_axi_gmem2_ARUSER(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_ARUSER),
    .m_axi_gmem2_RVALID(1'b0),
    .m_axi_gmem2_RREADY(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_RREADY),
    .m_axi_gmem2_RDATA(64'd0),
    .m_axi_gmem2_RLAST(1'b0),
    .m_axi_gmem2_RID(1'd0),
    .m_axi_gmem2_RFIFONUM(9'd0),
    .m_axi_gmem2_RUSER(1'd0),
    .m_axi_gmem2_RRESP(2'd0),
    .m_axi_gmem2_BVALID(m_axi_gmem2_BVALID),
    .m_axi_gmem2_BREADY(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_BREADY),
    .m_axi_gmem2_BRESP(m_axi_gmem2_BRESP),
    .m_axi_gmem2_BID(m_axi_gmem2_BID),
    .m_axi_gmem2_BUSER(m_axi_gmem2_BUSER),
    .sext_ln1380(trunc_ln_reg_113),
    .p_read(p_read)
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
        end else if (((1'b1 == ap_CS_fsm_state72) & (m_axi_gmem2_BVALID == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_start_reg <= 1'b1;
        end else if ((grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_ready == 1'b1)) begin
            grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        trunc_ln_reg_113 <= {{dout_dout[63:3]}};
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

assign ap_ST_fsm_state17_blk = 1'b0;

assign ap_ST_fsm_state18_blk = 1'b0;

assign ap_ST_fsm_state19_blk = 1'b0;

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (dout_empty_n == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state20_blk = 1'b0;

assign ap_ST_fsm_state21_blk = 1'b0;

assign ap_ST_fsm_state22_blk = 1'b0;

assign ap_ST_fsm_state23_blk = 1'b0;

assign ap_ST_fsm_state24_blk = 1'b0;

assign ap_ST_fsm_state25_blk = 1'b0;

assign ap_ST_fsm_state26_blk = 1'b0;

assign ap_ST_fsm_state27_blk = 1'b0;

assign ap_ST_fsm_state28_blk = 1'b0;

assign ap_ST_fsm_state29_blk = 1'b0;

always @ (*) begin
    if ((m_axi_gmem2_AWREADY == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state30_blk = 1'b0;

assign ap_ST_fsm_state31_blk = 1'b0;

assign ap_ST_fsm_state32_blk = 1'b0;

assign ap_ST_fsm_state33_blk = 1'b0;

assign ap_ST_fsm_state34_blk = 1'b0;

assign ap_ST_fsm_state35_blk = 1'b0;

assign ap_ST_fsm_state36_blk = 1'b0;

assign ap_ST_fsm_state37_blk = 1'b0;

assign ap_ST_fsm_state38_blk = 1'b0;

assign ap_ST_fsm_state39_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state40_blk = 1'b0;

assign ap_ST_fsm_state41_blk = 1'b0;

assign ap_ST_fsm_state42_blk = 1'b0;

assign ap_ST_fsm_state43_blk = 1'b0;

assign ap_ST_fsm_state44_blk = 1'b0;

assign ap_ST_fsm_state45_blk = 1'b0;

assign ap_ST_fsm_state46_blk = 1'b0;

assign ap_ST_fsm_state47_blk = 1'b0;

assign ap_ST_fsm_state48_blk = 1'b0;

assign ap_ST_fsm_state49_blk = 1'b0;

always @ (*) begin
    if ((grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state50_blk = 1'b0;

assign ap_ST_fsm_state51_blk = 1'b0;

assign ap_ST_fsm_state52_blk = 1'b0;

assign ap_ST_fsm_state53_blk = 1'b0;

assign ap_ST_fsm_state54_blk = 1'b0;

assign ap_ST_fsm_state55_blk = 1'b0;

assign ap_ST_fsm_state56_blk = 1'b0;

assign ap_ST_fsm_state57_blk = 1'b0;

assign ap_ST_fsm_state58_blk = 1'b0;

assign ap_ST_fsm_state59_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state60_blk = 1'b0;

assign ap_ST_fsm_state61_blk = 1'b0;

assign ap_ST_fsm_state62_blk = 1'b0;

assign ap_ST_fsm_state63_blk = 1'b0;

assign ap_ST_fsm_state64_blk = 1'b0;

assign ap_ST_fsm_state65_blk = 1'b0;

assign ap_ST_fsm_state66_blk = 1'b0;

assign ap_ST_fsm_state67_blk = 1'b0;

assign ap_ST_fsm_state68_blk = 1'b0;

assign ap_ST_fsm_state69_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state70_blk = 1'b0;

assign ap_ST_fsm_state71_blk = 1'b0;

always @ (*) begin
    if ((m_axi_gmem2_BVALID == 1'b0)) begin
        ap_ST_fsm_state72_blk = 1'b1;
    end else begin
        ap_ST_fsm_state72_blk = 1'b0;
    end
end

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state72) & (m_axi_gmem2_BVALID == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state72) & (m_axi_gmem2_BVALID == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        dout_blk_n = dout_empty_n;
    end else begin
        dout_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (dout_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        dout_read = 1'b1;
    end else begin
        dout_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        gmem2_blk_n_AW = m_axi_gmem2_AWREADY;
    end else begin
        gmem2_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state72)) begin
        gmem2_blk_n_B = m_axi_gmem2_BVALID;
    end else begin
        gmem2_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ldata1_read = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ldata1_read;
    end else begin
        ldata1_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (m_axi_gmem2_AWREADY == 1'b1))) begin
        m_axi_gmem2_AWADDR = sext_ln1380_fu_93_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWADDR = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWADDR;
    end else begin
        m_axi_gmem2_AWADDR = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWBURST = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWBURST;
    end else begin
        m_axi_gmem2_AWBURST = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWCACHE = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWCACHE;
    end else begin
        m_axi_gmem2_AWCACHE = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWID = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWID;
    end else begin
        m_axi_gmem2_AWID = 1'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (m_axi_gmem2_AWREADY == 1'b1))) begin
        m_axi_gmem2_AWLEN = zext_ln1380_fu_103_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWLEN = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWLEN;
    end else begin
        m_axi_gmem2_AWLEN = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWLOCK = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWLOCK;
    end else begin
        m_axi_gmem2_AWLOCK = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWPROT = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWPROT;
    end else begin
        m_axi_gmem2_AWPROT = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWQOS = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWQOS;
    end else begin
        m_axi_gmem2_AWQOS = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWREGION = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWREGION;
    end else begin
        m_axi_gmem2_AWREGION = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWSIZE = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWSIZE;
    end else begin
        m_axi_gmem2_AWSIZE = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWUSER = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWUSER;
    end else begin
        m_axi_gmem2_AWUSER = 1'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (m_axi_gmem2_AWREADY == 1'b1))) begin
        m_axi_gmem2_AWVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWVALID = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_AWVALID;
    end else begin
        m_axi_gmem2_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state72) & (m_axi_gmem2_BVALID == 1'b1))) begin
        m_axi_gmem2_BREADY = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_BREADY = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_BREADY;
    end else begin
        m_axi_gmem2_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_WVALID = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WVALID;
    end else begin
        m_axi_gmem2_WVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (dout_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (m_axi_gmem2_AWREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state62;
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state66;
        end
        ap_ST_fsm_state66 : begin
            ap_NS_fsm = ap_ST_fsm_state67;
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            ap_NS_fsm = ap_ST_fsm_state69;
        end
        ap_ST_fsm_state69 : begin
            ap_NS_fsm = ap_ST_fsm_state70;
        end
        ap_ST_fsm_state70 : begin
            ap_NS_fsm = ap_ST_fsm_state71;
        end
        ap_ST_fsm_state71 : begin
            ap_NS_fsm = ap_ST_fsm_state72;
        end
        ap_ST_fsm_state72 : begin
            if (((1'b1 == ap_CS_fsm_state72) & (m_axi_gmem2_BVALID == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state72;
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

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state72 = ap_CS_fsm[32'd71];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (dout_empty_n == 1'b0));
end

assign grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_start = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_ap_start_reg;

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

assign m_axi_gmem2_RREADY = 1'b0;

assign m_axi_gmem2_WDATA = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WDATA;

assign m_axi_gmem2_WID = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WID;

assign m_axi_gmem2_WLAST = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WLAST;

assign m_axi_gmem2_WSTRB = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WSTRB;

assign m_axi_gmem2_WUSER = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73_m_axi_gmem2_WUSER;

assign sext_ln1380_fu_93_p1 = $signed(trunc_ln_reg_113);

assign zext_ln1380_fu_103_p1 = p_read;

endmodule //canny_accel_AxiStream2Axi