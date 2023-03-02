//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Wed Mar  1 23:23:20 2023
//Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
//Command     : generate_target vitis_design.bd
//Design      : vitis_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_16DCDKE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [48:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [48:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [4:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [4:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [4:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [4:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [48:0]auto_ds_to_m00_regslice_ARADDR;
  wire [1:0]auto_ds_to_m00_regslice_ARBURST;
  wire [3:0]auto_ds_to_m00_regslice_ARCACHE;
  wire [7:0]auto_ds_to_m00_regslice_ARLEN;
  wire [0:0]auto_ds_to_m00_regslice_ARLOCK;
  wire [2:0]auto_ds_to_m00_regslice_ARPROT;
  wire [3:0]auto_ds_to_m00_regslice_ARQOS;
  wire auto_ds_to_m00_regslice_ARREADY;
  wire [3:0]auto_ds_to_m00_regslice_ARREGION;
  wire [2:0]auto_ds_to_m00_regslice_ARSIZE;
  wire auto_ds_to_m00_regslice_ARVALID;
  wire [48:0]auto_ds_to_m00_regslice_AWADDR;
  wire [1:0]auto_ds_to_m00_regslice_AWBURST;
  wire [3:0]auto_ds_to_m00_regslice_AWCACHE;
  wire [7:0]auto_ds_to_m00_regslice_AWLEN;
  wire [0:0]auto_ds_to_m00_regslice_AWLOCK;
  wire [2:0]auto_ds_to_m00_regslice_AWPROT;
  wire [3:0]auto_ds_to_m00_regslice_AWQOS;
  wire auto_ds_to_m00_regslice_AWREADY;
  wire [3:0]auto_ds_to_m00_regslice_AWREGION;
  wire [2:0]auto_ds_to_m00_regslice_AWSIZE;
  wire auto_ds_to_m00_regslice_AWVALID;
  wire auto_ds_to_m00_regslice_BREADY;
  wire [1:0]auto_ds_to_m00_regslice_BRESP;
  wire auto_ds_to_m00_regslice_BVALID;
  wire [127:0]auto_ds_to_m00_regslice_RDATA;
  wire auto_ds_to_m00_regslice_RLAST;
  wire auto_ds_to_m00_regslice_RREADY;
  wire [1:0]auto_ds_to_m00_regslice_RRESP;
  wire auto_ds_to_m00_regslice_RVALID;
  wire [127:0]auto_ds_to_m00_regslice_WDATA;
  wire auto_ds_to_m00_regslice_WLAST;
  wire auto_ds_to_m00_regslice_WREADY;
  wire [15:0]auto_ds_to_m00_regslice_WSTRB;
  wire auto_ds_to_m00_regslice_WVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_ARADDR;
  wire [1:0]m00_couplers_to_m00_data_fifo_ARBURST;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARCACHE;
  wire [4:0]m00_couplers_to_m00_data_fifo_ARID;
  wire [7:0]m00_couplers_to_m00_data_fifo_ARLEN;
  wire [0:0]m00_couplers_to_m00_data_fifo_ARLOCK;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARPROT;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARQOS;
  wire m00_couplers_to_m00_data_fifo_ARREADY;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARREGION;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARSIZE;
  wire m00_couplers_to_m00_data_fifo_ARVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_AWADDR;
  wire [1:0]m00_couplers_to_m00_data_fifo_AWBURST;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWCACHE;
  wire [4:0]m00_couplers_to_m00_data_fifo_AWID;
  wire [7:0]m00_couplers_to_m00_data_fifo_AWLEN;
  wire [0:0]m00_couplers_to_m00_data_fifo_AWLOCK;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWPROT;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWQOS;
  wire m00_couplers_to_m00_data_fifo_AWREADY;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWREGION;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWSIZE;
  wire m00_couplers_to_m00_data_fifo_AWVALID;
  wire [4:0]m00_couplers_to_m00_data_fifo_BID;
  wire m00_couplers_to_m00_data_fifo_BREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_BRESP;
  wire m00_couplers_to_m00_data_fifo_BVALID;
  wire [255:0]m00_couplers_to_m00_data_fifo_RDATA;
  wire [4:0]m00_couplers_to_m00_data_fifo_RID;
  wire m00_couplers_to_m00_data_fifo_RLAST;
  wire m00_couplers_to_m00_data_fifo_RREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_RRESP;
  wire m00_couplers_to_m00_data_fifo_RVALID;
  wire [255:0]m00_couplers_to_m00_data_fifo_WDATA;
  wire m00_couplers_to_m00_data_fifo_WLAST;
  wire m00_couplers_to_m00_data_fifo_WREADY;
  wire [31:0]m00_couplers_to_m00_data_fifo_WSTRB;
  wire m00_couplers_to_m00_data_fifo_WVALID;
  wire [48:0]m00_data_fifo_to_auto_ds_ARADDR;
  wire [1:0]m00_data_fifo_to_auto_ds_ARBURST;
  wire [3:0]m00_data_fifo_to_auto_ds_ARCACHE;
  wire [4:0]m00_data_fifo_to_auto_ds_ARID;
  wire [7:0]m00_data_fifo_to_auto_ds_ARLEN;
  wire [0:0]m00_data_fifo_to_auto_ds_ARLOCK;
  wire [2:0]m00_data_fifo_to_auto_ds_ARPROT;
  wire [3:0]m00_data_fifo_to_auto_ds_ARQOS;
  wire m00_data_fifo_to_auto_ds_ARREADY;
  wire [3:0]m00_data_fifo_to_auto_ds_ARREGION;
  wire [2:0]m00_data_fifo_to_auto_ds_ARSIZE;
  wire m00_data_fifo_to_auto_ds_ARVALID;
  wire [48:0]m00_data_fifo_to_auto_ds_AWADDR;
  wire [1:0]m00_data_fifo_to_auto_ds_AWBURST;
  wire [3:0]m00_data_fifo_to_auto_ds_AWCACHE;
  wire [4:0]m00_data_fifo_to_auto_ds_AWID;
  wire [7:0]m00_data_fifo_to_auto_ds_AWLEN;
  wire [0:0]m00_data_fifo_to_auto_ds_AWLOCK;
  wire [2:0]m00_data_fifo_to_auto_ds_AWPROT;
  wire [3:0]m00_data_fifo_to_auto_ds_AWQOS;
  wire m00_data_fifo_to_auto_ds_AWREADY;
  wire [3:0]m00_data_fifo_to_auto_ds_AWREGION;
  wire [2:0]m00_data_fifo_to_auto_ds_AWSIZE;
  wire m00_data_fifo_to_auto_ds_AWVALID;
  wire [4:0]m00_data_fifo_to_auto_ds_BID;
  wire m00_data_fifo_to_auto_ds_BREADY;
  wire [1:0]m00_data_fifo_to_auto_ds_BRESP;
  wire m00_data_fifo_to_auto_ds_BVALID;
  wire [255:0]m00_data_fifo_to_auto_ds_RDATA;
  wire [4:0]m00_data_fifo_to_auto_ds_RID;
  wire m00_data_fifo_to_auto_ds_RLAST;
  wire m00_data_fifo_to_auto_ds_RREADY;
  wire [1:0]m00_data_fifo_to_auto_ds_RRESP;
  wire m00_data_fifo_to_auto_ds_RVALID;
  wire [255:0]m00_data_fifo_to_auto_ds_WDATA;
  wire m00_data_fifo_to_auto_ds_WLAST;
  wire m00_data_fifo_to_auto_ds_WREADY;
  wire [31:0]m00_data_fifo_to_auto_ds_WSTRB;
  wire m00_data_fifo_to_auto_ds_WVALID;
  wire [48:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [1:0]m00_regslice_to_m00_couplers_ARBURST;
  wire [3:0]m00_regslice_to_m00_couplers_ARCACHE;
  wire [7:0]m00_regslice_to_m00_couplers_ARLEN;
  wire [0:0]m00_regslice_to_m00_couplers_ARLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire [3:0]m00_regslice_to_m00_couplers_ARQOS;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire [2:0]m00_regslice_to_m00_couplers_ARSIZE;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [48:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [1:0]m00_regslice_to_m00_couplers_AWBURST;
  wire [3:0]m00_regslice_to_m00_couplers_AWCACHE;
  wire [7:0]m00_regslice_to_m00_couplers_AWLEN;
  wire [0:0]m00_regslice_to_m00_couplers_AWLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire [3:0]m00_regslice_to_m00_couplers_AWQOS;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire [2:0]m00_regslice_to_m00_couplers_AWSIZE;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [127:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RLAST;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [127:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WLAST;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [15:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[48:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_regslice_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_regslice_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m00_regslice_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_regslice_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_regslice_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_regslice_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[48:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_regslice_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_regslice_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m00_regslice_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_regslice_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_regslice_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_regslice_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_regslice_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_m00_data_fifo_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_data_fifo_AWREADY;
  assign S_AXI_bid[4:0] = m00_couplers_to_m00_data_fifo_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_data_fifo_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_data_fifo_BVALID;
  assign S_AXI_rdata[255:0] = m00_couplers_to_m00_data_fifo_RDATA;
  assign S_AXI_rid[4:0] = m00_couplers_to_m00_data_fifo_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_data_fifo_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_data_fifo_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_data_fifo_WREADY;
  assign m00_couplers_to_m00_data_fifo_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_m00_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_data_fifo_ARID = S_AXI_arid[4:0];
  assign m00_couplers_to_m00_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_data_fifo_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_data_fifo_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_data_fifo_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_data_fifo_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_m00_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_data_fifo_AWID = S_AXI_awid[4:0];
  assign m00_couplers_to_m00_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_data_fifo_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_data_fifo_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_data_fifo_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_data_fifo_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_data_fifo_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_data_fifo_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_data_fifo_WDATA = S_AXI_wdata[255:0];
  assign m00_couplers_to_m00_data_fifo_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_data_fifo_WSTRB = S_AXI_wstrb[31:0];
  assign m00_couplers_to_m00_data_fifo_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[127:0];
  assign m00_regslice_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  vitis_design_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_m00_regslice_ARADDR),
        .m_axi_arburst(auto_ds_to_m00_regslice_ARBURST),
        .m_axi_arcache(auto_ds_to_m00_regslice_ARCACHE),
        .m_axi_arlen(auto_ds_to_m00_regslice_ARLEN),
        .m_axi_arlock(auto_ds_to_m00_regslice_ARLOCK),
        .m_axi_arprot(auto_ds_to_m00_regslice_ARPROT),
        .m_axi_arqos(auto_ds_to_m00_regslice_ARQOS),
        .m_axi_arready(auto_ds_to_m00_regslice_ARREADY),
        .m_axi_arregion(auto_ds_to_m00_regslice_ARREGION),
        .m_axi_arsize(auto_ds_to_m00_regslice_ARSIZE),
        .m_axi_arvalid(auto_ds_to_m00_regslice_ARVALID),
        .m_axi_awaddr(auto_ds_to_m00_regslice_AWADDR),
        .m_axi_awburst(auto_ds_to_m00_regslice_AWBURST),
        .m_axi_awcache(auto_ds_to_m00_regslice_AWCACHE),
        .m_axi_awlen(auto_ds_to_m00_regslice_AWLEN),
        .m_axi_awlock(auto_ds_to_m00_regslice_AWLOCK),
        .m_axi_awprot(auto_ds_to_m00_regslice_AWPROT),
        .m_axi_awqos(auto_ds_to_m00_regslice_AWQOS),
        .m_axi_awready(auto_ds_to_m00_regslice_AWREADY),
        .m_axi_awregion(auto_ds_to_m00_regslice_AWREGION),
        .m_axi_awsize(auto_ds_to_m00_regslice_AWSIZE),
        .m_axi_awvalid(auto_ds_to_m00_regslice_AWVALID),
        .m_axi_bready(auto_ds_to_m00_regslice_BREADY),
        .m_axi_bresp(auto_ds_to_m00_regslice_BRESP),
        .m_axi_bvalid(auto_ds_to_m00_regslice_BVALID),
        .m_axi_rdata(auto_ds_to_m00_regslice_RDATA),
        .m_axi_rlast(auto_ds_to_m00_regslice_RLAST),
        .m_axi_rready(auto_ds_to_m00_regslice_RREADY),
        .m_axi_rresp(auto_ds_to_m00_regslice_RRESP),
        .m_axi_rvalid(auto_ds_to_m00_regslice_RVALID),
        .m_axi_wdata(auto_ds_to_m00_regslice_WDATA),
        .m_axi_wlast(auto_ds_to_m00_regslice_WLAST),
        .m_axi_wready(auto_ds_to_m00_regslice_WREADY),
        .m_axi_wstrb(auto_ds_to_m00_regslice_WSTRB),
        .m_axi_wvalid(auto_ds_to_m00_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_data_fifo_to_auto_ds_ARADDR),
        .s_axi_arburst(m00_data_fifo_to_auto_ds_ARBURST),
        .s_axi_arcache(m00_data_fifo_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_data_fifo_to_auto_ds_ARID),
        .s_axi_arlen(m00_data_fifo_to_auto_ds_ARLEN),
        .s_axi_arlock(m00_data_fifo_to_auto_ds_ARLOCK),
        .s_axi_arprot(m00_data_fifo_to_auto_ds_ARPROT),
        .s_axi_arqos(m00_data_fifo_to_auto_ds_ARQOS),
        .s_axi_arready(m00_data_fifo_to_auto_ds_ARREADY),
        .s_axi_arregion(m00_data_fifo_to_auto_ds_ARREGION),
        .s_axi_arsize(m00_data_fifo_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m00_data_fifo_to_auto_ds_ARVALID),
        .s_axi_awaddr(m00_data_fifo_to_auto_ds_AWADDR),
        .s_axi_awburst(m00_data_fifo_to_auto_ds_AWBURST),
        .s_axi_awcache(m00_data_fifo_to_auto_ds_AWCACHE),
        .s_axi_awid(m00_data_fifo_to_auto_ds_AWID),
        .s_axi_awlen(m00_data_fifo_to_auto_ds_AWLEN),
        .s_axi_awlock(m00_data_fifo_to_auto_ds_AWLOCK),
        .s_axi_awprot(m00_data_fifo_to_auto_ds_AWPROT),
        .s_axi_awqos(m00_data_fifo_to_auto_ds_AWQOS),
        .s_axi_awready(m00_data_fifo_to_auto_ds_AWREADY),
        .s_axi_awregion(m00_data_fifo_to_auto_ds_AWREGION),
        .s_axi_awsize(m00_data_fifo_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m00_data_fifo_to_auto_ds_AWVALID),
        .s_axi_bid(m00_data_fifo_to_auto_ds_BID),
        .s_axi_bready(m00_data_fifo_to_auto_ds_BREADY),
        .s_axi_bresp(m00_data_fifo_to_auto_ds_BRESP),
        .s_axi_bvalid(m00_data_fifo_to_auto_ds_BVALID),
        .s_axi_rdata(m00_data_fifo_to_auto_ds_RDATA),
        .s_axi_rid(m00_data_fifo_to_auto_ds_RID),
        .s_axi_rlast(m00_data_fifo_to_auto_ds_RLAST),
        .s_axi_rready(m00_data_fifo_to_auto_ds_RREADY),
        .s_axi_rresp(m00_data_fifo_to_auto_ds_RRESP),
        .s_axi_rvalid(m00_data_fifo_to_auto_ds_RVALID),
        .s_axi_wdata(m00_data_fifo_to_auto_ds_WDATA),
        .s_axi_wlast(m00_data_fifo_to_auto_ds_WLAST),
        .s_axi_wready(m00_data_fifo_to_auto_ds_WREADY),
        .s_axi_wstrb(m00_data_fifo_to_auto_ds_WSTRB),
        .s_axi_wvalid(m00_data_fifo_to_auto_ds_WVALID));
  vitis_design_m00_data_fifo_2 m00_data_fifo
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(m00_data_fifo_to_auto_ds_ARADDR),
        .m_axi_arburst(m00_data_fifo_to_auto_ds_ARBURST),
        .m_axi_arcache(m00_data_fifo_to_auto_ds_ARCACHE),
        .m_axi_arid(m00_data_fifo_to_auto_ds_ARID),
        .m_axi_arlen(m00_data_fifo_to_auto_ds_ARLEN),
        .m_axi_arlock(m00_data_fifo_to_auto_ds_ARLOCK),
        .m_axi_arprot(m00_data_fifo_to_auto_ds_ARPROT),
        .m_axi_arqos(m00_data_fifo_to_auto_ds_ARQOS),
        .m_axi_arready(m00_data_fifo_to_auto_ds_ARREADY),
        .m_axi_arregion(m00_data_fifo_to_auto_ds_ARREGION),
        .m_axi_arsize(m00_data_fifo_to_auto_ds_ARSIZE),
        .m_axi_arvalid(m00_data_fifo_to_auto_ds_ARVALID),
        .m_axi_awaddr(m00_data_fifo_to_auto_ds_AWADDR),
        .m_axi_awburst(m00_data_fifo_to_auto_ds_AWBURST),
        .m_axi_awcache(m00_data_fifo_to_auto_ds_AWCACHE),
        .m_axi_awid(m00_data_fifo_to_auto_ds_AWID),
        .m_axi_awlen(m00_data_fifo_to_auto_ds_AWLEN),
        .m_axi_awlock(m00_data_fifo_to_auto_ds_AWLOCK),
        .m_axi_awprot(m00_data_fifo_to_auto_ds_AWPROT),
        .m_axi_awqos(m00_data_fifo_to_auto_ds_AWQOS),
        .m_axi_awready(m00_data_fifo_to_auto_ds_AWREADY),
        .m_axi_awregion(m00_data_fifo_to_auto_ds_AWREGION),
        .m_axi_awsize(m00_data_fifo_to_auto_ds_AWSIZE),
        .m_axi_awvalid(m00_data_fifo_to_auto_ds_AWVALID),
        .m_axi_bid(m00_data_fifo_to_auto_ds_BID),
        .m_axi_bready(m00_data_fifo_to_auto_ds_BREADY),
        .m_axi_bresp(m00_data_fifo_to_auto_ds_BRESP),
        .m_axi_bvalid(m00_data_fifo_to_auto_ds_BVALID),
        .m_axi_rdata(m00_data_fifo_to_auto_ds_RDATA),
        .m_axi_rid(m00_data_fifo_to_auto_ds_RID),
        .m_axi_rlast(m00_data_fifo_to_auto_ds_RLAST),
        .m_axi_rready(m00_data_fifo_to_auto_ds_RREADY),
        .m_axi_rresp(m00_data_fifo_to_auto_ds_RRESP),
        .m_axi_rvalid(m00_data_fifo_to_auto_ds_RVALID),
        .m_axi_wdata(m00_data_fifo_to_auto_ds_WDATA),
        .m_axi_wlast(m00_data_fifo_to_auto_ds_WLAST),
        .m_axi_wready(m00_data_fifo_to_auto_ds_WREADY),
        .m_axi_wstrb(m00_data_fifo_to_auto_ds_WSTRB),
        .m_axi_wvalid(m00_data_fifo_to_auto_ds_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_data_fifo_ARADDR[48:0]),
        .s_axi_arburst(m00_couplers_to_m00_data_fifo_ARBURST),
        .s_axi_arcache(m00_couplers_to_m00_data_fifo_ARCACHE),
        .s_axi_arid(m00_couplers_to_m00_data_fifo_ARID),
        .s_axi_arlen(m00_couplers_to_m00_data_fifo_ARLEN),
        .s_axi_arlock(m00_couplers_to_m00_data_fifo_ARLOCK),
        .s_axi_arprot(m00_couplers_to_m00_data_fifo_ARPROT),
        .s_axi_arqos(m00_couplers_to_m00_data_fifo_ARQOS),
        .s_axi_arready(m00_couplers_to_m00_data_fifo_ARREADY),
        .s_axi_arregion(m00_couplers_to_m00_data_fifo_ARREGION),
        .s_axi_arsize(m00_couplers_to_m00_data_fifo_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_m00_data_fifo_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_data_fifo_AWADDR[48:0]),
        .s_axi_awburst(m00_couplers_to_m00_data_fifo_AWBURST),
        .s_axi_awcache(m00_couplers_to_m00_data_fifo_AWCACHE),
        .s_axi_awid(m00_couplers_to_m00_data_fifo_AWID),
        .s_axi_awlen(m00_couplers_to_m00_data_fifo_AWLEN),
        .s_axi_awlock(m00_couplers_to_m00_data_fifo_AWLOCK),
        .s_axi_awprot(m00_couplers_to_m00_data_fifo_AWPROT),
        .s_axi_awqos(m00_couplers_to_m00_data_fifo_AWQOS),
        .s_axi_awready(m00_couplers_to_m00_data_fifo_AWREADY),
        .s_axi_awregion(m00_couplers_to_m00_data_fifo_AWREGION),
        .s_axi_awsize(m00_couplers_to_m00_data_fifo_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_m00_data_fifo_AWVALID),
        .s_axi_bid(m00_couplers_to_m00_data_fifo_BID),
        .s_axi_bready(m00_couplers_to_m00_data_fifo_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_data_fifo_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_data_fifo_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_data_fifo_RDATA),
        .s_axi_rid(m00_couplers_to_m00_data_fifo_RID),
        .s_axi_rlast(m00_couplers_to_m00_data_fifo_RLAST),
        .s_axi_rready(m00_couplers_to_m00_data_fifo_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_data_fifo_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_data_fifo_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_data_fifo_WDATA),
        .s_axi_wlast(m00_couplers_to_m00_data_fifo_WLAST),
        .s_axi_wready(m00_couplers_to_m00_data_fifo_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_data_fifo_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_data_fifo_WVALID));
  vitis_design_m00_regslice_2 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arburst(m00_regslice_to_m00_couplers_ARBURST),
        .m_axi_arcache(m00_regslice_to_m00_couplers_ARCACHE),
        .m_axi_arlen(m00_regslice_to_m00_couplers_ARLEN),
        .m_axi_arlock(m00_regslice_to_m00_couplers_ARLOCK),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arqos(m00_regslice_to_m00_couplers_ARQOS),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arsize(m00_regslice_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awburst(m00_regslice_to_m00_couplers_AWBURST),
        .m_axi_awcache(m00_regslice_to_m00_couplers_AWCACHE),
        .m_axi_awlen(m00_regslice_to_m00_couplers_AWLEN),
        .m_axi_awlock(m00_regslice_to_m00_couplers_AWLOCK),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awqos(m00_regslice_to_m00_couplers_AWQOS),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awsize(m00_regslice_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rlast(m00_regslice_to_m00_couplers_RLAST),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wlast(m00_regslice_to_m00_couplers_WLAST),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_m00_regslice_ARADDR),
        .s_axi_arburst(auto_ds_to_m00_regslice_ARBURST),
        .s_axi_arcache(auto_ds_to_m00_regslice_ARCACHE),
        .s_axi_arlen(auto_ds_to_m00_regslice_ARLEN),
        .s_axi_arlock(auto_ds_to_m00_regslice_ARLOCK),
        .s_axi_arprot(auto_ds_to_m00_regslice_ARPROT),
        .s_axi_arqos(auto_ds_to_m00_regslice_ARQOS),
        .s_axi_arready(auto_ds_to_m00_regslice_ARREADY),
        .s_axi_arregion(auto_ds_to_m00_regslice_ARREGION),
        .s_axi_arsize(auto_ds_to_m00_regslice_ARSIZE),
        .s_axi_arvalid(auto_ds_to_m00_regslice_ARVALID),
        .s_axi_awaddr(auto_ds_to_m00_regslice_AWADDR),
        .s_axi_awburst(auto_ds_to_m00_regslice_AWBURST),
        .s_axi_awcache(auto_ds_to_m00_regslice_AWCACHE),
        .s_axi_awlen(auto_ds_to_m00_regslice_AWLEN),
        .s_axi_awlock(auto_ds_to_m00_regslice_AWLOCK),
        .s_axi_awprot(auto_ds_to_m00_regslice_AWPROT),
        .s_axi_awqos(auto_ds_to_m00_regslice_AWQOS),
        .s_axi_awready(auto_ds_to_m00_regslice_AWREADY),
        .s_axi_awregion(auto_ds_to_m00_regslice_AWREGION),
        .s_axi_awsize(auto_ds_to_m00_regslice_AWSIZE),
        .s_axi_awvalid(auto_ds_to_m00_regslice_AWVALID),
        .s_axi_bready(auto_ds_to_m00_regslice_BREADY),
        .s_axi_bresp(auto_ds_to_m00_regslice_BRESP),
        .s_axi_bvalid(auto_ds_to_m00_regslice_BVALID),
        .s_axi_rdata(auto_ds_to_m00_regslice_RDATA),
        .s_axi_rlast(auto_ds_to_m00_regslice_RLAST),
        .s_axi_rready(auto_ds_to_m00_regslice_RREADY),
        .s_axi_rresp(auto_ds_to_m00_regslice_RRESP),
        .s_axi_rvalid(auto_ds_to_m00_regslice_RVALID),
        .s_axi_wdata(auto_ds_to_m00_regslice_WDATA),
        .s_axi_wlast(auto_ds_to_m00_regslice_WLAST),
        .s_axi_wready(auto_ds_to_m00_regslice_WREADY),
        .s_axi_wstrb(auto_ds_to_m00_regslice_WSTRB),
        .s_axi_wvalid(auto_ds_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_19QF8O6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [48:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [48:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]m00_couplers_to_m00_data_fifo_ARADDR;
  wire [1:0]m00_couplers_to_m00_data_fifo_ARBURST;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARCACHE;
  wire [0:0]m00_couplers_to_m00_data_fifo_ARID;
  wire [7:0]m00_couplers_to_m00_data_fifo_ARLEN;
  wire [0:0]m00_couplers_to_m00_data_fifo_ARLOCK;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARPROT;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARQOS;
  wire m00_couplers_to_m00_data_fifo_ARREADY;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARREGION;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARSIZE;
  wire m00_couplers_to_m00_data_fifo_ARVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_AWADDR;
  wire [1:0]m00_couplers_to_m00_data_fifo_AWBURST;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWCACHE;
  wire [0:0]m00_couplers_to_m00_data_fifo_AWID;
  wire [7:0]m00_couplers_to_m00_data_fifo_AWLEN;
  wire [0:0]m00_couplers_to_m00_data_fifo_AWLOCK;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWPROT;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWQOS;
  wire m00_couplers_to_m00_data_fifo_AWREADY;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWREGION;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWSIZE;
  wire m00_couplers_to_m00_data_fifo_AWVALID;
  wire [0:0]m00_couplers_to_m00_data_fifo_BID;
  wire m00_couplers_to_m00_data_fifo_BREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_BRESP;
  wire m00_couplers_to_m00_data_fifo_BVALID;
  wire [127:0]m00_couplers_to_m00_data_fifo_RDATA;
  wire [0:0]m00_couplers_to_m00_data_fifo_RID;
  wire m00_couplers_to_m00_data_fifo_RLAST;
  wire m00_couplers_to_m00_data_fifo_RREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_RRESP;
  wire m00_couplers_to_m00_data_fifo_RVALID;
  wire [127:0]m00_couplers_to_m00_data_fifo_WDATA;
  wire m00_couplers_to_m00_data_fifo_WLAST;
  wire m00_couplers_to_m00_data_fifo_WREADY;
  wire [15:0]m00_couplers_to_m00_data_fifo_WSTRB;
  wire m00_couplers_to_m00_data_fifo_WVALID;
  wire [48:0]m00_data_fifo_to_m00_regslice_ARADDR;
  wire [1:0]m00_data_fifo_to_m00_regslice_ARBURST;
  wire [3:0]m00_data_fifo_to_m00_regslice_ARCACHE;
  wire [0:0]m00_data_fifo_to_m00_regslice_ARID;
  wire [7:0]m00_data_fifo_to_m00_regslice_ARLEN;
  wire [0:0]m00_data_fifo_to_m00_regslice_ARLOCK;
  wire [2:0]m00_data_fifo_to_m00_regslice_ARPROT;
  wire [3:0]m00_data_fifo_to_m00_regslice_ARQOS;
  wire m00_data_fifo_to_m00_regslice_ARREADY;
  wire [3:0]m00_data_fifo_to_m00_regslice_ARREGION;
  wire [2:0]m00_data_fifo_to_m00_regslice_ARSIZE;
  wire m00_data_fifo_to_m00_regslice_ARVALID;
  wire [48:0]m00_data_fifo_to_m00_regslice_AWADDR;
  wire [1:0]m00_data_fifo_to_m00_regslice_AWBURST;
  wire [3:0]m00_data_fifo_to_m00_regslice_AWCACHE;
  wire [0:0]m00_data_fifo_to_m00_regslice_AWID;
  wire [7:0]m00_data_fifo_to_m00_regslice_AWLEN;
  wire [0:0]m00_data_fifo_to_m00_regslice_AWLOCK;
  wire [2:0]m00_data_fifo_to_m00_regslice_AWPROT;
  wire [3:0]m00_data_fifo_to_m00_regslice_AWQOS;
  wire m00_data_fifo_to_m00_regslice_AWREADY;
  wire [3:0]m00_data_fifo_to_m00_regslice_AWREGION;
  wire [2:0]m00_data_fifo_to_m00_regslice_AWSIZE;
  wire m00_data_fifo_to_m00_regslice_AWVALID;
  wire [0:0]m00_data_fifo_to_m00_regslice_BID;
  wire m00_data_fifo_to_m00_regslice_BREADY;
  wire [1:0]m00_data_fifo_to_m00_regslice_BRESP;
  wire m00_data_fifo_to_m00_regslice_BVALID;
  wire [127:0]m00_data_fifo_to_m00_regslice_RDATA;
  wire [0:0]m00_data_fifo_to_m00_regslice_RID;
  wire m00_data_fifo_to_m00_regslice_RLAST;
  wire m00_data_fifo_to_m00_regslice_RREADY;
  wire [1:0]m00_data_fifo_to_m00_regslice_RRESP;
  wire m00_data_fifo_to_m00_regslice_RVALID;
  wire [127:0]m00_data_fifo_to_m00_regslice_WDATA;
  wire m00_data_fifo_to_m00_regslice_WLAST;
  wire m00_data_fifo_to_m00_regslice_WREADY;
  wire [15:0]m00_data_fifo_to_m00_regslice_WSTRB;
  wire m00_data_fifo_to_m00_regslice_WVALID;
  wire [48:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [1:0]m00_regslice_to_m00_couplers_ARBURST;
  wire [3:0]m00_regslice_to_m00_couplers_ARCACHE;
  wire [0:0]m00_regslice_to_m00_couplers_ARID;
  wire [7:0]m00_regslice_to_m00_couplers_ARLEN;
  wire [0:0]m00_regslice_to_m00_couplers_ARLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire [3:0]m00_regslice_to_m00_couplers_ARQOS;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire [2:0]m00_regslice_to_m00_couplers_ARSIZE;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [48:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [1:0]m00_regslice_to_m00_couplers_AWBURST;
  wire [3:0]m00_regslice_to_m00_couplers_AWCACHE;
  wire [0:0]m00_regslice_to_m00_couplers_AWID;
  wire [7:0]m00_regslice_to_m00_couplers_AWLEN;
  wire [0:0]m00_regslice_to_m00_couplers_AWLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire [3:0]m00_regslice_to_m00_couplers_AWQOS;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire [2:0]m00_regslice_to_m00_couplers_AWSIZE;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire [5:0]m00_regslice_to_m00_couplers_BID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [127:0]m00_regslice_to_m00_couplers_RDATA;
  wire [5:0]m00_regslice_to_m00_couplers_RID;
  wire m00_regslice_to_m00_couplers_RLAST;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [127:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WLAST;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [15:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[48:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_regslice_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_regslice_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[0] = m00_regslice_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_regslice_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_regslice_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_regslice_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_regslice_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[48:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_regslice_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_regslice_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[0] = m00_regslice_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_regslice_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_regslice_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_regslice_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_regslice_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_regslice_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_m00_data_fifo_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_data_fifo_AWREADY;
  assign S_AXI_bid[0] = m00_couplers_to_m00_data_fifo_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_data_fifo_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_data_fifo_BVALID;
  assign S_AXI_rdata[127:0] = m00_couplers_to_m00_data_fifo_RDATA;
  assign S_AXI_rid[0] = m00_couplers_to_m00_data_fifo_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_data_fifo_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_data_fifo_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_data_fifo_WREADY;
  assign m00_couplers_to_m00_data_fifo_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_m00_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_data_fifo_ARID = S_AXI_arid[0];
  assign m00_couplers_to_m00_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_data_fifo_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_data_fifo_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_data_fifo_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_data_fifo_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_m00_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_data_fifo_AWID = S_AXI_awid[0];
  assign m00_couplers_to_m00_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_data_fifo_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_data_fifo_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_data_fifo_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_data_fifo_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_data_fifo_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_data_fifo_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_data_fifo_WDATA = S_AXI_wdata[127:0];
  assign m00_couplers_to_m00_data_fifo_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_data_fifo_WSTRB = S_AXI_wstrb[15:0];
  assign m00_couplers_to_m00_data_fifo_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[127:0];
  assign m00_regslice_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign m00_regslice_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  vitis_design_m00_data_fifo_3 m00_data_fifo
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(m00_data_fifo_to_m00_regslice_ARADDR),
        .m_axi_arburst(m00_data_fifo_to_m00_regslice_ARBURST),
        .m_axi_arcache(m00_data_fifo_to_m00_regslice_ARCACHE),
        .m_axi_arid(m00_data_fifo_to_m00_regslice_ARID),
        .m_axi_arlen(m00_data_fifo_to_m00_regslice_ARLEN),
        .m_axi_arlock(m00_data_fifo_to_m00_regslice_ARLOCK),
        .m_axi_arprot(m00_data_fifo_to_m00_regslice_ARPROT),
        .m_axi_arqos(m00_data_fifo_to_m00_regslice_ARQOS),
        .m_axi_arready(m00_data_fifo_to_m00_regslice_ARREADY),
        .m_axi_arregion(m00_data_fifo_to_m00_regslice_ARREGION),
        .m_axi_arsize(m00_data_fifo_to_m00_regslice_ARSIZE),
        .m_axi_arvalid(m00_data_fifo_to_m00_regslice_ARVALID),
        .m_axi_awaddr(m00_data_fifo_to_m00_regslice_AWADDR),
        .m_axi_awburst(m00_data_fifo_to_m00_regslice_AWBURST),
        .m_axi_awcache(m00_data_fifo_to_m00_regslice_AWCACHE),
        .m_axi_awid(m00_data_fifo_to_m00_regslice_AWID),
        .m_axi_awlen(m00_data_fifo_to_m00_regslice_AWLEN),
        .m_axi_awlock(m00_data_fifo_to_m00_regslice_AWLOCK),
        .m_axi_awprot(m00_data_fifo_to_m00_regslice_AWPROT),
        .m_axi_awqos(m00_data_fifo_to_m00_regslice_AWQOS),
        .m_axi_awready(m00_data_fifo_to_m00_regslice_AWREADY),
        .m_axi_awregion(m00_data_fifo_to_m00_regslice_AWREGION),
        .m_axi_awsize(m00_data_fifo_to_m00_regslice_AWSIZE),
        .m_axi_awvalid(m00_data_fifo_to_m00_regslice_AWVALID),
        .m_axi_bid(m00_data_fifo_to_m00_regslice_BID),
        .m_axi_bready(m00_data_fifo_to_m00_regslice_BREADY),
        .m_axi_bresp(m00_data_fifo_to_m00_regslice_BRESP),
        .m_axi_bvalid(m00_data_fifo_to_m00_regslice_BVALID),
        .m_axi_rdata(m00_data_fifo_to_m00_regslice_RDATA),
        .m_axi_rid(m00_data_fifo_to_m00_regslice_RID),
        .m_axi_rlast(m00_data_fifo_to_m00_regslice_RLAST),
        .m_axi_rready(m00_data_fifo_to_m00_regslice_RREADY),
        .m_axi_rresp(m00_data_fifo_to_m00_regslice_RRESP),
        .m_axi_rvalid(m00_data_fifo_to_m00_regslice_RVALID),
        .m_axi_wdata(m00_data_fifo_to_m00_regslice_WDATA),
        .m_axi_wlast(m00_data_fifo_to_m00_regslice_WLAST),
        .m_axi_wready(m00_data_fifo_to_m00_regslice_WREADY),
        .m_axi_wstrb(m00_data_fifo_to_m00_regslice_WSTRB),
        .m_axi_wvalid(m00_data_fifo_to_m00_regslice_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_data_fifo_ARADDR[48:0]),
        .s_axi_arburst(m00_couplers_to_m00_data_fifo_ARBURST),
        .s_axi_arcache(m00_couplers_to_m00_data_fifo_ARCACHE),
        .s_axi_arid(m00_couplers_to_m00_data_fifo_ARID),
        .s_axi_arlen(m00_couplers_to_m00_data_fifo_ARLEN),
        .s_axi_arlock(m00_couplers_to_m00_data_fifo_ARLOCK),
        .s_axi_arprot(m00_couplers_to_m00_data_fifo_ARPROT),
        .s_axi_arqos(m00_couplers_to_m00_data_fifo_ARQOS),
        .s_axi_arready(m00_couplers_to_m00_data_fifo_ARREADY),
        .s_axi_arregion(m00_couplers_to_m00_data_fifo_ARREGION),
        .s_axi_arsize(m00_couplers_to_m00_data_fifo_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_m00_data_fifo_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_data_fifo_AWADDR[48:0]),
        .s_axi_awburst(m00_couplers_to_m00_data_fifo_AWBURST),
        .s_axi_awcache(m00_couplers_to_m00_data_fifo_AWCACHE),
        .s_axi_awid(m00_couplers_to_m00_data_fifo_AWID),
        .s_axi_awlen(m00_couplers_to_m00_data_fifo_AWLEN),
        .s_axi_awlock(m00_couplers_to_m00_data_fifo_AWLOCK),
        .s_axi_awprot(m00_couplers_to_m00_data_fifo_AWPROT),
        .s_axi_awqos(m00_couplers_to_m00_data_fifo_AWQOS),
        .s_axi_awready(m00_couplers_to_m00_data_fifo_AWREADY),
        .s_axi_awregion(m00_couplers_to_m00_data_fifo_AWREGION),
        .s_axi_awsize(m00_couplers_to_m00_data_fifo_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_m00_data_fifo_AWVALID),
        .s_axi_bid(m00_couplers_to_m00_data_fifo_BID),
        .s_axi_bready(m00_couplers_to_m00_data_fifo_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_data_fifo_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_data_fifo_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_data_fifo_RDATA),
        .s_axi_rid(m00_couplers_to_m00_data_fifo_RID),
        .s_axi_rlast(m00_couplers_to_m00_data_fifo_RLAST),
        .s_axi_rready(m00_couplers_to_m00_data_fifo_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_data_fifo_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_data_fifo_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_data_fifo_WDATA),
        .s_axi_wlast(m00_couplers_to_m00_data_fifo_WLAST),
        .s_axi_wready(m00_couplers_to_m00_data_fifo_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_data_fifo_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_data_fifo_WVALID));
  vitis_design_m00_regslice_3 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arburst(m00_regslice_to_m00_couplers_ARBURST),
        .m_axi_arcache(m00_regslice_to_m00_couplers_ARCACHE),
        .m_axi_arid(m00_regslice_to_m00_couplers_ARID),
        .m_axi_arlen(m00_regslice_to_m00_couplers_ARLEN),
        .m_axi_arlock(m00_regslice_to_m00_couplers_ARLOCK),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arqos(m00_regslice_to_m00_couplers_ARQOS),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arsize(m00_regslice_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awburst(m00_regslice_to_m00_couplers_AWBURST),
        .m_axi_awcache(m00_regslice_to_m00_couplers_AWCACHE),
        .m_axi_awid(m00_regslice_to_m00_couplers_AWID),
        .m_axi_awlen(m00_regslice_to_m00_couplers_AWLEN),
        .m_axi_awlock(m00_regslice_to_m00_couplers_AWLOCK),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awqos(m00_regslice_to_m00_couplers_AWQOS),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awsize(m00_regslice_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bid(m00_regslice_to_m00_couplers_BID[0]),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rid(m00_regslice_to_m00_couplers_RID[0]),
        .m_axi_rlast(m00_regslice_to_m00_couplers_RLAST),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wlast(m00_regslice_to_m00_couplers_WLAST),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_data_fifo_to_m00_regslice_ARADDR),
        .s_axi_arburst(m00_data_fifo_to_m00_regslice_ARBURST),
        .s_axi_arcache(m00_data_fifo_to_m00_regslice_ARCACHE),
        .s_axi_arid(m00_data_fifo_to_m00_regslice_ARID),
        .s_axi_arlen(m00_data_fifo_to_m00_regslice_ARLEN),
        .s_axi_arlock(m00_data_fifo_to_m00_regslice_ARLOCK),
        .s_axi_arprot(m00_data_fifo_to_m00_regslice_ARPROT),
        .s_axi_arqos(m00_data_fifo_to_m00_regslice_ARQOS),
        .s_axi_arready(m00_data_fifo_to_m00_regslice_ARREADY),
        .s_axi_arregion(m00_data_fifo_to_m00_regslice_ARREGION),
        .s_axi_arsize(m00_data_fifo_to_m00_regslice_ARSIZE),
        .s_axi_arvalid(m00_data_fifo_to_m00_regslice_ARVALID),
        .s_axi_awaddr(m00_data_fifo_to_m00_regslice_AWADDR),
        .s_axi_awburst(m00_data_fifo_to_m00_regslice_AWBURST),
        .s_axi_awcache(m00_data_fifo_to_m00_regslice_AWCACHE),
        .s_axi_awid(m00_data_fifo_to_m00_regslice_AWID),
        .s_axi_awlen(m00_data_fifo_to_m00_regslice_AWLEN),
        .s_axi_awlock(m00_data_fifo_to_m00_regslice_AWLOCK),
        .s_axi_awprot(m00_data_fifo_to_m00_regslice_AWPROT),
        .s_axi_awqos(m00_data_fifo_to_m00_regslice_AWQOS),
        .s_axi_awready(m00_data_fifo_to_m00_regslice_AWREADY),
        .s_axi_awregion(m00_data_fifo_to_m00_regslice_AWREGION),
        .s_axi_awsize(m00_data_fifo_to_m00_regslice_AWSIZE),
        .s_axi_awvalid(m00_data_fifo_to_m00_regslice_AWVALID),
        .s_axi_bid(m00_data_fifo_to_m00_regslice_BID),
        .s_axi_bready(m00_data_fifo_to_m00_regslice_BREADY),
        .s_axi_bresp(m00_data_fifo_to_m00_regslice_BRESP),
        .s_axi_bvalid(m00_data_fifo_to_m00_regslice_BVALID),
        .s_axi_rdata(m00_data_fifo_to_m00_regslice_RDATA),
        .s_axi_rid(m00_data_fifo_to_m00_regslice_RID),
        .s_axi_rlast(m00_data_fifo_to_m00_regslice_RLAST),
        .s_axi_rready(m00_data_fifo_to_m00_regslice_RREADY),
        .s_axi_rresp(m00_data_fifo_to_m00_regslice_RRESP),
        .s_axi_rvalid(m00_data_fifo_to_m00_regslice_RVALID),
        .s_axi_wdata(m00_data_fifo_to_m00_regslice_WDATA),
        .s_axi_wlast(m00_data_fifo_to_m00_regslice_WLAST),
        .s_axi_wready(m00_data_fifo_to_m00_regslice_WREADY),
        .s_axi_wstrb(m00_data_fifo_to_m00_regslice_WSTRB),
        .s_axi_wvalid(m00_data_fifo_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_XAFVM8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_QV5828
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m01_regslice_ARADDR;
  wire [2:0]auto_cc_to_m01_regslice_ARPROT;
  wire auto_cc_to_m01_regslice_ARREADY;
  wire auto_cc_to_m01_regslice_ARVALID;
  wire [6:0]auto_cc_to_m01_regslice_AWADDR;
  wire [2:0]auto_cc_to_m01_regslice_AWPROT;
  wire auto_cc_to_m01_regslice_AWREADY;
  wire auto_cc_to_m01_regslice_AWVALID;
  wire auto_cc_to_m01_regslice_BREADY;
  wire [1:0]auto_cc_to_m01_regslice_BRESP;
  wire auto_cc_to_m01_regslice_BVALID;
  wire [31:0]auto_cc_to_m01_regslice_RDATA;
  wire auto_cc_to_m01_regslice_RREADY;
  wire [1:0]auto_cc_to_m01_regslice_RRESP;
  wire auto_cc_to_m01_regslice_RVALID;
  wire [31:0]auto_cc_to_m01_regslice_WDATA;
  wire auto_cc_to_m01_regslice_WREADY;
  wire [3:0]auto_cc_to_m01_regslice_WSTRB;
  wire auto_cc_to_m01_regslice_WVALID;
  wire [39:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [39:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;
  wire [6:0]m01_regslice_to_m01_couplers_ARADDR;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [6:0]m01_regslice_to_m01_couplers_AWADDR;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  vitis_design_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m01_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m01_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m01_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m01_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m01_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m01_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m01_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m01_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m01_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
  vitis_design_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m01_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m01_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m01_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m01_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m01_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m01_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m01_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m01_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m01_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m01_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m01_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m01_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m01_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m01_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m01_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m01_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m01_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m01_regslice_WVALID));
endmodule

module m02_couplers_imp_OVNA6O
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m02_regslice_ARADDR;
  wire [2:0]auto_cc_to_m02_regslice_ARPROT;
  wire auto_cc_to_m02_regslice_ARREADY;
  wire auto_cc_to_m02_regslice_ARVALID;
  wire [6:0]auto_cc_to_m02_regslice_AWADDR;
  wire [2:0]auto_cc_to_m02_regslice_AWPROT;
  wire auto_cc_to_m02_regslice_AWREADY;
  wire auto_cc_to_m02_regslice_AWVALID;
  wire auto_cc_to_m02_regslice_BREADY;
  wire [1:0]auto_cc_to_m02_regslice_BRESP;
  wire auto_cc_to_m02_regslice_BVALID;
  wire [31:0]auto_cc_to_m02_regslice_RDATA;
  wire auto_cc_to_m02_regslice_RREADY;
  wire [1:0]auto_cc_to_m02_regslice_RRESP;
  wire auto_cc_to_m02_regslice_RVALID;
  wire [31:0]auto_cc_to_m02_regslice_WDATA;
  wire auto_cc_to_m02_regslice_WREADY;
  wire [3:0]auto_cc_to_m02_regslice_WSTRB;
  wire auto_cc_to_m02_regslice_WVALID;
  wire [39:0]m02_couplers_to_auto_cc_ARADDR;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [39:0]m02_couplers_to_auto_cc_AWADDR;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [31:0]m02_couplers_to_auto_cc_RDATA;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [31:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [3:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;
  wire [6:0]m02_regslice_to_m02_couplers_ARADDR;
  wire m02_regslice_to_m02_couplers_ARREADY;
  wire m02_regslice_to_m02_couplers_ARVALID;
  wire [6:0]m02_regslice_to_m02_couplers_AWADDR;
  wire m02_regslice_to_m02_couplers_AWREADY;
  wire m02_regslice_to_m02_couplers_AWVALID;
  wire m02_regslice_to_m02_couplers_BREADY;
  wire [1:0]m02_regslice_to_m02_couplers_BRESP;
  wire m02_regslice_to_m02_couplers_BVALID;
  wire [31:0]m02_regslice_to_m02_couplers_RDATA;
  wire m02_regslice_to_m02_couplers_RREADY;
  wire [1:0]m02_regslice_to_m02_couplers_RRESP;
  wire m02_regslice_to_m02_couplers_RVALID;
  wire [31:0]m02_regslice_to_m02_couplers_WDATA;
  wire m02_regslice_to_m02_couplers_WREADY;
  wire [3:0]m02_regslice_to_m02_couplers_WSTRB;
  wire m02_regslice_to_m02_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = m02_regslice_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_regslice_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = m02_regslice_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_regslice_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_regslice_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_regslice_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_regslice_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_regslice_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_regslice_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m02_regslice_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_regslice_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_regslice_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_regslice_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_regslice_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_regslice_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_regslice_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_regslice_to_m02_couplers_WREADY = M_AXI_wready;
  vitis_design_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m02_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m02_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m02_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m02_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m02_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m02_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m02_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m02_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m02_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m02_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m02_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m02_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m02_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
  vitis_design_m02_regslice_0 m02_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m02_regslice_to_m02_couplers_ARADDR),
        .m_axi_arready(m02_regslice_to_m02_couplers_ARREADY),
        .m_axi_arvalid(m02_regslice_to_m02_couplers_ARVALID),
        .m_axi_awaddr(m02_regslice_to_m02_couplers_AWADDR),
        .m_axi_awready(m02_regslice_to_m02_couplers_AWREADY),
        .m_axi_awvalid(m02_regslice_to_m02_couplers_AWVALID),
        .m_axi_bready(m02_regslice_to_m02_couplers_BREADY),
        .m_axi_bresp(m02_regslice_to_m02_couplers_BRESP),
        .m_axi_bvalid(m02_regslice_to_m02_couplers_BVALID),
        .m_axi_rdata(m02_regslice_to_m02_couplers_RDATA),
        .m_axi_rready(m02_regslice_to_m02_couplers_RREADY),
        .m_axi_rresp(m02_regslice_to_m02_couplers_RRESP),
        .m_axi_rvalid(m02_regslice_to_m02_couplers_RVALID),
        .m_axi_wdata(m02_regslice_to_m02_couplers_WDATA),
        .m_axi_wready(m02_regslice_to_m02_couplers_WREADY),
        .m_axi_wstrb(m02_regslice_to_m02_couplers_WSTRB),
        .m_axi_wvalid(m02_regslice_to_m02_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m02_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m02_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m02_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m02_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m02_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m02_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m02_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m02_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m02_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m02_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m02_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m02_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m02_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m02_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m02_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m02_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m02_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m02_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m02_regslice_WVALID));
endmodule

module m03_couplers_imp_LS724W
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m03_regslice_ARADDR;
  wire [2:0]auto_cc_to_m03_regslice_ARPROT;
  wire auto_cc_to_m03_regslice_ARREADY;
  wire auto_cc_to_m03_regslice_ARVALID;
  wire [6:0]auto_cc_to_m03_regslice_AWADDR;
  wire [2:0]auto_cc_to_m03_regslice_AWPROT;
  wire auto_cc_to_m03_regslice_AWREADY;
  wire auto_cc_to_m03_regslice_AWVALID;
  wire auto_cc_to_m03_regslice_BREADY;
  wire [1:0]auto_cc_to_m03_regslice_BRESP;
  wire auto_cc_to_m03_regslice_BVALID;
  wire [31:0]auto_cc_to_m03_regslice_RDATA;
  wire auto_cc_to_m03_regslice_RREADY;
  wire [1:0]auto_cc_to_m03_regslice_RRESP;
  wire auto_cc_to_m03_regslice_RVALID;
  wire [31:0]auto_cc_to_m03_regslice_WDATA;
  wire auto_cc_to_m03_regslice_WREADY;
  wire [3:0]auto_cc_to_m03_regslice_WSTRB;
  wire auto_cc_to_m03_regslice_WVALID;
  wire [39:0]m03_couplers_to_auto_cc_ARADDR;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [39:0]m03_couplers_to_auto_cc_AWADDR;
  wire [2:0]m03_couplers_to_auto_cc_AWPROT;
  wire m03_couplers_to_auto_cc_AWREADY;
  wire m03_couplers_to_auto_cc_AWVALID;
  wire m03_couplers_to_auto_cc_BREADY;
  wire [1:0]m03_couplers_to_auto_cc_BRESP;
  wire m03_couplers_to_auto_cc_BVALID;
  wire [31:0]m03_couplers_to_auto_cc_RDATA;
  wire m03_couplers_to_auto_cc_RREADY;
  wire [1:0]m03_couplers_to_auto_cc_RRESP;
  wire m03_couplers_to_auto_cc_RVALID;
  wire [31:0]m03_couplers_to_auto_cc_WDATA;
  wire m03_couplers_to_auto_cc_WREADY;
  wire [3:0]m03_couplers_to_auto_cc_WSTRB;
  wire m03_couplers_to_auto_cc_WVALID;
  wire [6:0]m03_regslice_to_m03_couplers_ARADDR;
  wire m03_regslice_to_m03_couplers_ARREADY;
  wire m03_regslice_to_m03_couplers_ARVALID;
  wire [6:0]m03_regslice_to_m03_couplers_AWADDR;
  wire m03_regslice_to_m03_couplers_AWREADY;
  wire m03_regslice_to_m03_couplers_AWVALID;
  wire m03_regslice_to_m03_couplers_BREADY;
  wire [1:0]m03_regslice_to_m03_couplers_BRESP;
  wire m03_regslice_to_m03_couplers_BVALID;
  wire [31:0]m03_regslice_to_m03_couplers_RDATA;
  wire m03_regslice_to_m03_couplers_RREADY;
  wire [1:0]m03_regslice_to_m03_couplers_RRESP;
  wire m03_regslice_to_m03_couplers_RVALID;
  wire [31:0]m03_regslice_to_m03_couplers_WDATA;
  wire m03_regslice_to_m03_couplers_WREADY;
  wire [3:0]m03_regslice_to_m03_couplers_WSTRB;
  wire m03_regslice_to_m03_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = m03_regslice_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_regslice_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = m03_regslice_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_regslice_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_regslice_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_regslice_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_regslice_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_regslice_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_regslice_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_cc_WREADY;
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m03_regslice_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_regslice_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_regslice_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_regslice_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_regslice_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_regslice_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_regslice_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_regslice_to_m03_couplers_WREADY = M_AXI_wready;
  vitis_design_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m03_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m03_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m03_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m03_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m03_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m03_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m03_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m03_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m03_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m03_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m03_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m03_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m03_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m03_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m03_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m03_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m03_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m03_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m03_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m03_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m03_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m03_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m03_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m03_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_cc_WVALID));
  vitis_design_m03_regslice_0 m03_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m03_regslice_to_m03_couplers_ARADDR),
        .m_axi_arready(m03_regslice_to_m03_couplers_ARREADY),
        .m_axi_arvalid(m03_regslice_to_m03_couplers_ARVALID),
        .m_axi_awaddr(m03_regslice_to_m03_couplers_AWADDR),
        .m_axi_awready(m03_regslice_to_m03_couplers_AWREADY),
        .m_axi_awvalid(m03_regslice_to_m03_couplers_AWVALID),
        .m_axi_bready(m03_regslice_to_m03_couplers_BREADY),
        .m_axi_bresp(m03_regslice_to_m03_couplers_BRESP),
        .m_axi_bvalid(m03_regslice_to_m03_couplers_BVALID),
        .m_axi_rdata(m03_regslice_to_m03_couplers_RDATA),
        .m_axi_rready(m03_regslice_to_m03_couplers_RREADY),
        .m_axi_rresp(m03_regslice_to_m03_couplers_RRESP),
        .m_axi_rvalid(m03_regslice_to_m03_couplers_RVALID),
        .m_axi_wdata(m03_regslice_to_m03_couplers_WDATA),
        .m_axi_wready(m03_regslice_to_m03_couplers_WREADY),
        .m_axi_wstrb(m03_regslice_to_m03_couplers_WSTRB),
        .m_axi_wvalid(m03_regslice_to_m03_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m03_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m03_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m03_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m03_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m03_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m03_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m03_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m03_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m03_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m03_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m03_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m03_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m03_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m03_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m03_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m03_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m03_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m03_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m03_regslice_WVALID));
endmodule

module m04_couplers_imp_C12L74
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m04_regslice_ARADDR;
  wire [2:0]auto_cc_to_m04_regslice_ARPROT;
  wire auto_cc_to_m04_regslice_ARREADY;
  wire auto_cc_to_m04_regslice_ARVALID;
  wire [6:0]auto_cc_to_m04_regslice_AWADDR;
  wire [2:0]auto_cc_to_m04_regslice_AWPROT;
  wire auto_cc_to_m04_regslice_AWREADY;
  wire auto_cc_to_m04_regslice_AWVALID;
  wire auto_cc_to_m04_regslice_BREADY;
  wire [1:0]auto_cc_to_m04_regslice_BRESP;
  wire auto_cc_to_m04_regslice_BVALID;
  wire [31:0]auto_cc_to_m04_regslice_RDATA;
  wire auto_cc_to_m04_regslice_RREADY;
  wire [1:0]auto_cc_to_m04_regslice_RRESP;
  wire auto_cc_to_m04_regslice_RVALID;
  wire [31:0]auto_cc_to_m04_regslice_WDATA;
  wire auto_cc_to_m04_regslice_WREADY;
  wire [3:0]auto_cc_to_m04_regslice_WSTRB;
  wire auto_cc_to_m04_regslice_WVALID;
  wire [39:0]m04_couplers_to_auto_cc_ARADDR;
  wire [2:0]m04_couplers_to_auto_cc_ARPROT;
  wire m04_couplers_to_auto_cc_ARREADY;
  wire m04_couplers_to_auto_cc_ARVALID;
  wire [39:0]m04_couplers_to_auto_cc_AWADDR;
  wire [2:0]m04_couplers_to_auto_cc_AWPROT;
  wire m04_couplers_to_auto_cc_AWREADY;
  wire m04_couplers_to_auto_cc_AWVALID;
  wire m04_couplers_to_auto_cc_BREADY;
  wire [1:0]m04_couplers_to_auto_cc_BRESP;
  wire m04_couplers_to_auto_cc_BVALID;
  wire [31:0]m04_couplers_to_auto_cc_RDATA;
  wire m04_couplers_to_auto_cc_RREADY;
  wire [1:0]m04_couplers_to_auto_cc_RRESP;
  wire m04_couplers_to_auto_cc_RVALID;
  wire [31:0]m04_couplers_to_auto_cc_WDATA;
  wire m04_couplers_to_auto_cc_WREADY;
  wire [3:0]m04_couplers_to_auto_cc_WSTRB;
  wire m04_couplers_to_auto_cc_WVALID;
  wire [6:0]m04_regslice_to_m04_couplers_ARADDR;
  wire m04_regslice_to_m04_couplers_ARREADY;
  wire m04_regslice_to_m04_couplers_ARVALID;
  wire [6:0]m04_regslice_to_m04_couplers_AWADDR;
  wire m04_regslice_to_m04_couplers_AWREADY;
  wire m04_regslice_to_m04_couplers_AWVALID;
  wire m04_regslice_to_m04_couplers_BREADY;
  wire [1:0]m04_regslice_to_m04_couplers_BRESP;
  wire m04_regslice_to_m04_couplers_BVALID;
  wire [31:0]m04_regslice_to_m04_couplers_RDATA;
  wire m04_regslice_to_m04_couplers_RREADY;
  wire [1:0]m04_regslice_to_m04_couplers_RRESP;
  wire m04_regslice_to_m04_couplers_RVALID;
  wire [31:0]m04_regslice_to_m04_couplers_WDATA;
  wire m04_regslice_to_m04_couplers_WREADY;
  wire [3:0]m04_regslice_to_m04_couplers_WSTRB;
  wire m04_regslice_to_m04_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = m04_regslice_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_regslice_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = m04_regslice_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_regslice_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_regslice_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_regslice_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_regslice_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_regslice_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_regslice_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_cc_WREADY;
  assign m04_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m04_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m04_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m04_regslice_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_regslice_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_regslice_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_regslice_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_regslice_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_regslice_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_regslice_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_regslice_to_m04_couplers_WREADY = M_AXI_wready;
  vitis_design_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m04_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m04_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m04_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m04_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m04_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m04_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m04_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m04_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m04_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m04_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m04_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m04_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m04_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m04_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m04_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m04_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m04_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m04_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m04_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m04_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m04_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m04_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m04_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m04_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m04_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m04_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m04_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m04_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m04_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_cc_WVALID));
  vitis_design_m04_regslice_0 m04_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m04_regslice_to_m04_couplers_ARADDR),
        .m_axi_arready(m04_regslice_to_m04_couplers_ARREADY),
        .m_axi_arvalid(m04_regslice_to_m04_couplers_ARVALID),
        .m_axi_awaddr(m04_regslice_to_m04_couplers_AWADDR),
        .m_axi_awready(m04_regslice_to_m04_couplers_AWREADY),
        .m_axi_awvalid(m04_regslice_to_m04_couplers_AWVALID),
        .m_axi_bready(m04_regslice_to_m04_couplers_BREADY),
        .m_axi_bresp(m04_regslice_to_m04_couplers_BRESP),
        .m_axi_bvalid(m04_regslice_to_m04_couplers_BVALID),
        .m_axi_rdata(m04_regslice_to_m04_couplers_RDATA),
        .m_axi_rready(m04_regslice_to_m04_couplers_RREADY),
        .m_axi_rresp(m04_regslice_to_m04_couplers_RRESP),
        .m_axi_rvalid(m04_regslice_to_m04_couplers_RVALID),
        .m_axi_wdata(m04_regslice_to_m04_couplers_WDATA),
        .m_axi_wready(m04_regslice_to_m04_couplers_WREADY),
        .m_axi_wstrb(m04_regslice_to_m04_couplers_WSTRB),
        .m_axi_wvalid(m04_regslice_to_m04_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m04_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m04_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m04_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m04_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m04_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m04_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m04_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m04_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m04_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m04_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m04_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m04_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m04_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m04_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m04_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m04_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m04_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m04_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m04_regslice_WVALID));
endmodule

module m05_couplers_imp_GRTLAO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [5:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [5:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [5:0]auto_cc_to_m05_regslice_ARADDR;
  wire [2:0]auto_cc_to_m05_regslice_ARPROT;
  wire auto_cc_to_m05_regslice_ARREADY;
  wire auto_cc_to_m05_regslice_ARVALID;
  wire [5:0]auto_cc_to_m05_regslice_AWADDR;
  wire [2:0]auto_cc_to_m05_regslice_AWPROT;
  wire auto_cc_to_m05_regslice_AWREADY;
  wire auto_cc_to_m05_regslice_AWVALID;
  wire auto_cc_to_m05_regslice_BREADY;
  wire [1:0]auto_cc_to_m05_regslice_BRESP;
  wire auto_cc_to_m05_regslice_BVALID;
  wire [31:0]auto_cc_to_m05_regslice_RDATA;
  wire auto_cc_to_m05_regslice_RREADY;
  wire [1:0]auto_cc_to_m05_regslice_RRESP;
  wire auto_cc_to_m05_regslice_RVALID;
  wire [31:0]auto_cc_to_m05_regslice_WDATA;
  wire auto_cc_to_m05_regslice_WREADY;
  wire [3:0]auto_cc_to_m05_regslice_WSTRB;
  wire auto_cc_to_m05_regslice_WVALID;
  wire [39:0]m05_couplers_to_auto_cc_ARADDR;
  wire [2:0]m05_couplers_to_auto_cc_ARPROT;
  wire m05_couplers_to_auto_cc_ARREADY;
  wire m05_couplers_to_auto_cc_ARVALID;
  wire [39:0]m05_couplers_to_auto_cc_AWADDR;
  wire [2:0]m05_couplers_to_auto_cc_AWPROT;
  wire m05_couplers_to_auto_cc_AWREADY;
  wire m05_couplers_to_auto_cc_AWVALID;
  wire m05_couplers_to_auto_cc_BREADY;
  wire [1:0]m05_couplers_to_auto_cc_BRESP;
  wire m05_couplers_to_auto_cc_BVALID;
  wire [31:0]m05_couplers_to_auto_cc_RDATA;
  wire m05_couplers_to_auto_cc_RREADY;
  wire [1:0]m05_couplers_to_auto_cc_RRESP;
  wire m05_couplers_to_auto_cc_RVALID;
  wire [31:0]m05_couplers_to_auto_cc_WDATA;
  wire m05_couplers_to_auto_cc_WREADY;
  wire [3:0]m05_couplers_to_auto_cc_WSTRB;
  wire m05_couplers_to_auto_cc_WVALID;
  wire [5:0]m05_regslice_to_m05_couplers_ARADDR;
  wire m05_regslice_to_m05_couplers_ARREADY;
  wire m05_regslice_to_m05_couplers_ARVALID;
  wire [5:0]m05_regslice_to_m05_couplers_AWADDR;
  wire m05_regslice_to_m05_couplers_AWREADY;
  wire m05_regslice_to_m05_couplers_AWVALID;
  wire m05_regslice_to_m05_couplers_BREADY;
  wire [1:0]m05_regslice_to_m05_couplers_BRESP;
  wire m05_regslice_to_m05_couplers_BVALID;
  wire [31:0]m05_regslice_to_m05_couplers_RDATA;
  wire m05_regslice_to_m05_couplers_RREADY;
  wire [1:0]m05_regslice_to_m05_couplers_RRESP;
  wire m05_regslice_to_m05_couplers_RVALID;
  wire [31:0]m05_regslice_to_m05_couplers_WDATA;
  wire m05_regslice_to_m05_couplers_WREADY;
  wire [3:0]m05_regslice_to_m05_couplers_WSTRB;
  wire m05_regslice_to_m05_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[5:0] = m05_regslice_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_regslice_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[5:0] = m05_regslice_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_regslice_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_regslice_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_regslice_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_regslice_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_regslice_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_regslice_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m05_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_cc_WREADY;
  assign m05_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m05_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m05_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m05_regslice_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_regslice_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_regslice_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_regslice_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_regslice_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_regslice_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_regslice_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_regslice_to_m05_couplers_WREADY = M_AXI_wready;
  vitis_design_auto_cc_4 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m05_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m05_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m05_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m05_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m05_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m05_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m05_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m05_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m05_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m05_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m05_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m05_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m05_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m05_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m05_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m05_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m05_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m05_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m05_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m05_couplers_to_auto_cc_ARADDR[5:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m05_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m05_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m05_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_cc_AWADDR[5:0]),
        .s_axi_awprot(m05_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m05_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m05_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m05_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m05_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m05_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_cc_WVALID));
  vitis_design_m05_regslice_0 m05_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m05_regslice_to_m05_couplers_ARADDR),
        .m_axi_arready(m05_regslice_to_m05_couplers_ARREADY),
        .m_axi_arvalid(m05_regslice_to_m05_couplers_ARVALID),
        .m_axi_awaddr(m05_regslice_to_m05_couplers_AWADDR),
        .m_axi_awready(m05_regslice_to_m05_couplers_AWREADY),
        .m_axi_awvalid(m05_regslice_to_m05_couplers_AWVALID),
        .m_axi_bready(m05_regslice_to_m05_couplers_BREADY),
        .m_axi_bresp(m05_regslice_to_m05_couplers_BRESP),
        .m_axi_bvalid(m05_regslice_to_m05_couplers_BVALID),
        .m_axi_rdata(m05_regslice_to_m05_couplers_RDATA),
        .m_axi_rready(m05_regslice_to_m05_couplers_RREADY),
        .m_axi_rresp(m05_regslice_to_m05_couplers_RRESP),
        .m_axi_rvalid(m05_regslice_to_m05_couplers_RVALID),
        .m_axi_wdata(m05_regslice_to_m05_couplers_WDATA),
        .m_axi_wready(m05_regslice_to_m05_couplers_WREADY),
        .m_axi_wstrb(m05_regslice_to_m05_couplers_WSTRB),
        .m_axi_wvalid(m05_regslice_to_m05_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m05_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m05_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m05_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m05_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m05_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m05_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m05_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m05_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m05_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m05_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m05_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m05_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m05_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m05_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m05_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m05_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m05_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m05_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m05_regslice_WVALID));
endmodule

module m06_couplers_imp_1EENO0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m06_regslice_ARADDR;
  wire [2:0]auto_cc_to_m06_regslice_ARPROT;
  wire auto_cc_to_m06_regslice_ARREADY;
  wire auto_cc_to_m06_regslice_ARVALID;
  wire [6:0]auto_cc_to_m06_regslice_AWADDR;
  wire [2:0]auto_cc_to_m06_regslice_AWPROT;
  wire auto_cc_to_m06_regslice_AWREADY;
  wire auto_cc_to_m06_regslice_AWVALID;
  wire auto_cc_to_m06_regslice_BREADY;
  wire [1:0]auto_cc_to_m06_regslice_BRESP;
  wire auto_cc_to_m06_regslice_BVALID;
  wire [31:0]auto_cc_to_m06_regslice_RDATA;
  wire auto_cc_to_m06_regslice_RREADY;
  wire [1:0]auto_cc_to_m06_regslice_RRESP;
  wire auto_cc_to_m06_regslice_RVALID;
  wire [31:0]auto_cc_to_m06_regslice_WDATA;
  wire auto_cc_to_m06_regslice_WREADY;
  wire [3:0]auto_cc_to_m06_regslice_WSTRB;
  wire auto_cc_to_m06_regslice_WVALID;
  wire [39:0]m06_couplers_to_auto_cc_ARADDR;
  wire [2:0]m06_couplers_to_auto_cc_ARPROT;
  wire m06_couplers_to_auto_cc_ARREADY;
  wire m06_couplers_to_auto_cc_ARVALID;
  wire [39:0]m06_couplers_to_auto_cc_AWADDR;
  wire [2:0]m06_couplers_to_auto_cc_AWPROT;
  wire m06_couplers_to_auto_cc_AWREADY;
  wire m06_couplers_to_auto_cc_AWVALID;
  wire m06_couplers_to_auto_cc_BREADY;
  wire [1:0]m06_couplers_to_auto_cc_BRESP;
  wire m06_couplers_to_auto_cc_BVALID;
  wire [31:0]m06_couplers_to_auto_cc_RDATA;
  wire m06_couplers_to_auto_cc_RREADY;
  wire [1:0]m06_couplers_to_auto_cc_RRESP;
  wire m06_couplers_to_auto_cc_RVALID;
  wire [31:0]m06_couplers_to_auto_cc_WDATA;
  wire m06_couplers_to_auto_cc_WREADY;
  wire [3:0]m06_couplers_to_auto_cc_WSTRB;
  wire m06_couplers_to_auto_cc_WVALID;
  wire [6:0]m06_regslice_to_m06_couplers_ARADDR;
  wire m06_regslice_to_m06_couplers_ARREADY;
  wire m06_regslice_to_m06_couplers_ARVALID;
  wire [6:0]m06_regslice_to_m06_couplers_AWADDR;
  wire m06_regslice_to_m06_couplers_AWREADY;
  wire m06_regslice_to_m06_couplers_AWVALID;
  wire m06_regslice_to_m06_couplers_BREADY;
  wire [1:0]m06_regslice_to_m06_couplers_BRESP;
  wire m06_regslice_to_m06_couplers_BVALID;
  wire [31:0]m06_regslice_to_m06_couplers_RDATA;
  wire m06_regslice_to_m06_couplers_RREADY;
  wire [1:0]m06_regslice_to_m06_couplers_RRESP;
  wire m06_regslice_to_m06_couplers_RVALID;
  wire [31:0]m06_regslice_to_m06_couplers_WDATA;
  wire m06_regslice_to_m06_couplers_WREADY;
  wire [3:0]m06_regslice_to_m06_couplers_WSTRB;
  wire m06_regslice_to_m06_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = m06_regslice_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_regslice_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = m06_regslice_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_regslice_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_regslice_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_regslice_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_regslice_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_regslice_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_regslice_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m06_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_cc_WREADY;
  assign m06_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m06_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m06_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m06_regslice_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_regslice_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_regslice_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_regslice_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_regslice_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_regslice_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_regslice_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_regslice_to_m06_couplers_WREADY = M_AXI_wready;
  vitis_design_auto_cc_5 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m06_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m06_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m06_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m06_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m06_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m06_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m06_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m06_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m06_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m06_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m06_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m06_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m06_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m06_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m06_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m06_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m06_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m06_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m06_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m06_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m06_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m06_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m06_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m06_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m06_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m06_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m06_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m06_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m06_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_cc_WVALID));
  vitis_design_m06_regslice_0 m06_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m06_regslice_to_m06_couplers_ARADDR),
        .m_axi_arready(m06_regslice_to_m06_couplers_ARREADY),
        .m_axi_arvalid(m06_regslice_to_m06_couplers_ARVALID),
        .m_axi_awaddr(m06_regslice_to_m06_couplers_AWADDR),
        .m_axi_awready(m06_regslice_to_m06_couplers_AWREADY),
        .m_axi_awvalid(m06_regslice_to_m06_couplers_AWVALID),
        .m_axi_bready(m06_regslice_to_m06_couplers_BREADY),
        .m_axi_bresp(m06_regslice_to_m06_couplers_BRESP),
        .m_axi_bvalid(m06_regslice_to_m06_couplers_BVALID),
        .m_axi_rdata(m06_regslice_to_m06_couplers_RDATA),
        .m_axi_rready(m06_regslice_to_m06_couplers_RREADY),
        .m_axi_rresp(m06_regslice_to_m06_couplers_RRESP),
        .m_axi_rvalid(m06_regslice_to_m06_couplers_RVALID),
        .m_axi_wdata(m06_regslice_to_m06_couplers_WDATA),
        .m_axi_wready(m06_regslice_to_m06_couplers_WREADY),
        .m_axi_wstrb(m06_regslice_to_m06_couplers_WSTRB),
        .m_axi_wvalid(m06_regslice_to_m06_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m06_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m06_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m06_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m06_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m06_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m06_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m06_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m06_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m06_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m06_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m06_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m06_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m06_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m06_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m06_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m06_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m06_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m06_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m06_regslice_WVALID));
endmodule

module m07_couplers_imp_516L5C
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m07_regslice_ARADDR;
  wire [2:0]auto_cc_to_m07_regslice_ARPROT;
  wire auto_cc_to_m07_regslice_ARREADY;
  wire auto_cc_to_m07_regslice_ARVALID;
  wire [6:0]auto_cc_to_m07_regslice_AWADDR;
  wire [2:0]auto_cc_to_m07_regslice_AWPROT;
  wire auto_cc_to_m07_regslice_AWREADY;
  wire auto_cc_to_m07_regslice_AWVALID;
  wire auto_cc_to_m07_regslice_BREADY;
  wire [1:0]auto_cc_to_m07_regslice_BRESP;
  wire auto_cc_to_m07_regslice_BVALID;
  wire [31:0]auto_cc_to_m07_regslice_RDATA;
  wire auto_cc_to_m07_regslice_RREADY;
  wire [1:0]auto_cc_to_m07_regslice_RRESP;
  wire auto_cc_to_m07_regslice_RVALID;
  wire [31:0]auto_cc_to_m07_regslice_WDATA;
  wire auto_cc_to_m07_regslice_WREADY;
  wire [3:0]auto_cc_to_m07_regslice_WSTRB;
  wire auto_cc_to_m07_regslice_WVALID;
  wire [39:0]m07_couplers_to_auto_cc_ARADDR;
  wire [2:0]m07_couplers_to_auto_cc_ARPROT;
  wire m07_couplers_to_auto_cc_ARREADY;
  wire m07_couplers_to_auto_cc_ARVALID;
  wire [39:0]m07_couplers_to_auto_cc_AWADDR;
  wire [2:0]m07_couplers_to_auto_cc_AWPROT;
  wire m07_couplers_to_auto_cc_AWREADY;
  wire m07_couplers_to_auto_cc_AWVALID;
  wire m07_couplers_to_auto_cc_BREADY;
  wire [1:0]m07_couplers_to_auto_cc_BRESP;
  wire m07_couplers_to_auto_cc_BVALID;
  wire [31:0]m07_couplers_to_auto_cc_RDATA;
  wire m07_couplers_to_auto_cc_RREADY;
  wire [1:0]m07_couplers_to_auto_cc_RRESP;
  wire m07_couplers_to_auto_cc_RVALID;
  wire [31:0]m07_couplers_to_auto_cc_WDATA;
  wire m07_couplers_to_auto_cc_WREADY;
  wire [3:0]m07_couplers_to_auto_cc_WSTRB;
  wire m07_couplers_to_auto_cc_WVALID;
  wire [6:0]m07_regslice_to_m07_couplers_ARADDR;
  wire m07_regslice_to_m07_couplers_ARREADY;
  wire m07_regslice_to_m07_couplers_ARVALID;
  wire [6:0]m07_regslice_to_m07_couplers_AWADDR;
  wire m07_regslice_to_m07_couplers_AWREADY;
  wire m07_regslice_to_m07_couplers_AWVALID;
  wire m07_regslice_to_m07_couplers_BREADY;
  wire [1:0]m07_regslice_to_m07_couplers_BRESP;
  wire m07_regslice_to_m07_couplers_BVALID;
  wire [31:0]m07_regslice_to_m07_couplers_RDATA;
  wire m07_regslice_to_m07_couplers_RREADY;
  wire [1:0]m07_regslice_to_m07_couplers_RRESP;
  wire m07_regslice_to_m07_couplers_RVALID;
  wire [31:0]m07_regslice_to_m07_couplers_WDATA;
  wire m07_regslice_to_m07_couplers_WREADY;
  wire [3:0]m07_regslice_to_m07_couplers_WSTRB;
  wire m07_regslice_to_m07_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = m07_regslice_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = m07_regslice_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = m07_regslice_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = m07_regslice_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_regslice_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_regslice_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_regslice_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_regslice_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_regslice_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m07_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_cc_WREADY;
  assign m07_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m07_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m07_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m07_regslice_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_regslice_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_regslice_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_regslice_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_regslice_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_regslice_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_regslice_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_regslice_to_m07_couplers_WREADY = M_AXI_wready;
  vitis_design_auto_cc_6 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m07_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m07_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m07_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m07_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m07_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m07_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m07_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m07_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m07_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m07_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m07_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m07_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m07_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m07_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m07_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m07_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m07_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m07_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m07_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m07_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m07_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m07_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m07_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m07_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m07_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m07_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m07_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m07_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m07_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_cc_WVALID));
  vitis_design_m07_regslice_0 m07_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m07_regslice_to_m07_couplers_ARADDR),
        .m_axi_arready(m07_regslice_to_m07_couplers_ARREADY),
        .m_axi_arvalid(m07_regslice_to_m07_couplers_ARVALID),
        .m_axi_awaddr(m07_regslice_to_m07_couplers_AWADDR),
        .m_axi_awready(m07_regslice_to_m07_couplers_AWREADY),
        .m_axi_awvalid(m07_regslice_to_m07_couplers_AWVALID),
        .m_axi_bready(m07_regslice_to_m07_couplers_BREADY),
        .m_axi_bresp(m07_regslice_to_m07_couplers_BRESP),
        .m_axi_bvalid(m07_regslice_to_m07_couplers_BVALID),
        .m_axi_rdata(m07_regslice_to_m07_couplers_RDATA),
        .m_axi_rready(m07_regslice_to_m07_couplers_RREADY),
        .m_axi_rresp(m07_regslice_to_m07_couplers_RRESP),
        .m_axi_rvalid(m07_regslice_to_m07_couplers_RVALID),
        .m_axi_wdata(m07_regslice_to_m07_couplers_WDATA),
        .m_axi_wready(m07_regslice_to_m07_couplers_WREADY),
        .m_axi_wstrb(m07_regslice_to_m07_couplers_WSTRB),
        .m_axi_wvalid(m07_regslice_to_m07_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m07_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m07_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m07_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m07_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m07_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m07_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m07_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m07_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m07_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m07_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m07_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m07_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m07_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m07_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m07_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m07_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m07_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m07_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m07_regslice_WVALID));
endmodule

module m08_couplers_imp_1LCX32O
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [5:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [5:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [5:0]auto_cc_to_m08_regslice_ARADDR;
  wire [2:0]auto_cc_to_m08_regslice_ARPROT;
  wire auto_cc_to_m08_regslice_ARREADY;
  wire auto_cc_to_m08_regslice_ARVALID;
  wire [5:0]auto_cc_to_m08_regslice_AWADDR;
  wire [2:0]auto_cc_to_m08_regslice_AWPROT;
  wire auto_cc_to_m08_regslice_AWREADY;
  wire auto_cc_to_m08_regslice_AWVALID;
  wire auto_cc_to_m08_regslice_BREADY;
  wire [1:0]auto_cc_to_m08_regslice_BRESP;
  wire auto_cc_to_m08_regslice_BVALID;
  wire [31:0]auto_cc_to_m08_regslice_RDATA;
  wire auto_cc_to_m08_regslice_RREADY;
  wire [1:0]auto_cc_to_m08_regslice_RRESP;
  wire auto_cc_to_m08_regslice_RVALID;
  wire [31:0]auto_cc_to_m08_regslice_WDATA;
  wire auto_cc_to_m08_regslice_WREADY;
  wire [3:0]auto_cc_to_m08_regslice_WSTRB;
  wire auto_cc_to_m08_regslice_WVALID;
  wire [39:0]m08_couplers_to_auto_cc_ARADDR;
  wire [2:0]m08_couplers_to_auto_cc_ARPROT;
  wire m08_couplers_to_auto_cc_ARREADY;
  wire m08_couplers_to_auto_cc_ARVALID;
  wire [39:0]m08_couplers_to_auto_cc_AWADDR;
  wire [2:0]m08_couplers_to_auto_cc_AWPROT;
  wire m08_couplers_to_auto_cc_AWREADY;
  wire m08_couplers_to_auto_cc_AWVALID;
  wire m08_couplers_to_auto_cc_BREADY;
  wire [1:0]m08_couplers_to_auto_cc_BRESP;
  wire m08_couplers_to_auto_cc_BVALID;
  wire [31:0]m08_couplers_to_auto_cc_RDATA;
  wire m08_couplers_to_auto_cc_RREADY;
  wire [1:0]m08_couplers_to_auto_cc_RRESP;
  wire m08_couplers_to_auto_cc_RVALID;
  wire [31:0]m08_couplers_to_auto_cc_WDATA;
  wire m08_couplers_to_auto_cc_WREADY;
  wire [3:0]m08_couplers_to_auto_cc_WSTRB;
  wire m08_couplers_to_auto_cc_WVALID;
  wire [5:0]m08_regslice_to_m08_couplers_ARADDR;
  wire m08_regslice_to_m08_couplers_ARREADY;
  wire m08_regslice_to_m08_couplers_ARVALID;
  wire [5:0]m08_regslice_to_m08_couplers_AWADDR;
  wire m08_regslice_to_m08_couplers_AWREADY;
  wire m08_regslice_to_m08_couplers_AWVALID;
  wire m08_regslice_to_m08_couplers_BREADY;
  wire [1:0]m08_regslice_to_m08_couplers_BRESP;
  wire m08_regslice_to_m08_couplers_BVALID;
  wire [31:0]m08_regslice_to_m08_couplers_RDATA;
  wire m08_regslice_to_m08_couplers_RREADY;
  wire [1:0]m08_regslice_to_m08_couplers_RRESP;
  wire m08_regslice_to_m08_couplers_RVALID;
  wire [31:0]m08_regslice_to_m08_couplers_WDATA;
  wire m08_regslice_to_m08_couplers_WREADY;
  wire [3:0]m08_regslice_to_m08_couplers_WSTRB;
  wire m08_regslice_to_m08_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[5:0] = m08_regslice_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = m08_regslice_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[5:0] = m08_regslice_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = m08_regslice_to_m08_couplers_AWVALID;
  assign M_AXI_bready = m08_regslice_to_m08_couplers_BREADY;
  assign M_AXI_rready = m08_regslice_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m08_regslice_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m08_regslice_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = m08_regslice_to_m08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m08_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m08_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m08_couplers_to_auto_cc_WREADY;
  assign m08_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m08_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m08_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m08_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m08_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m08_regslice_to_m08_couplers_ARREADY = M_AXI_arready;
  assign m08_regslice_to_m08_couplers_AWREADY = M_AXI_awready;
  assign m08_regslice_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_regslice_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign m08_regslice_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign m08_regslice_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_regslice_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign m08_regslice_to_m08_couplers_WREADY = M_AXI_wready;
  vitis_design_auto_cc_7 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m08_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m08_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m08_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m08_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m08_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m08_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m08_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m08_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m08_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m08_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m08_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m08_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m08_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m08_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m08_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m08_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m08_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m08_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m08_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m08_couplers_to_auto_cc_ARADDR[5:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m08_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m08_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m08_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m08_couplers_to_auto_cc_AWADDR[5:0]),
        .s_axi_awprot(m08_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m08_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m08_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m08_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m08_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m08_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m08_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m08_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m08_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m08_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m08_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m08_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m08_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m08_couplers_to_auto_cc_WVALID));
  vitis_design_m08_regslice_0 m08_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m08_regslice_to_m08_couplers_ARADDR),
        .m_axi_arready(m08_regslice_to_m08_couplers_ARREADY),
        .m_axi_arvalid(m08_regslice_to_m08_couplers_ARVALID),
        .m_axi_awaddr(m08_regslice_to_m08_couplers_AWADDR),
        .m_axi_awready(m08_regslice_to_m08_couplers_AWREADY),
        .m_axi_awvalid(m08_regslice_to_m08_couplers_AWVALID),
        .m_axi_bready(m08_regslice_to_m08_couplers_BREADY),
        .m_axi_bresp(m08_regslice_to_m08_couplers_BRESP),
        .m_axi_bvalid(m08_regslice_to_m08_couplers_BVALID),
        .m_axi_rdata(m08_regslice_to_m08_couplers_RDATA),
        .m_axi_rready(m08_regslice_to_m08_couplers_RREADY),
        .m_axi_rresp(m08_regslice_to_m08_couplers_RRESP),
        .m_axi_rvalid(m08_regslice_to_m08_couplers_RVALID),
        .m_axi_wdata(m08_regslice_to_m08_couplers_WDATA),
        .m_axi_wready(m08_regslice_to_m08_couplers_WREADY),
        .m_axi_wstrb(m08_regslice_to_m08_couplers_WSTRB),
        .m_axi_wvalid(m08_regslice_to_m08_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m08_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m08_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m08_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m08_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m08_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m08_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m08_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m08_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m08_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m08_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m08_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m08_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m08_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m08_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m08_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m08_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m08_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m08_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m08_regslice_WVALID));
endmodule

module s00_couplers_imp_115V24D
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s00_couplers_ARQOS;
  wire auto_us_df_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s00_couplers_ARSIZE;
  wire auto_us_df_to_s00_couplers_ARVALID;
  wire [255:0]auto_us_df_to_s00_couplers_RDATA;
  wire auto_us_df_to_s00_couplers_RLAST;
  wire auto_us_df_to_s00_couplers_RREADY;
  wire [1:0]auto_us_df_to_s00_couplers_RRESP;
  wire auto_us_df_to_s00_couplers_RVALID;
  wire [63:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [0:0]s00_couplers_to_s00_regslice_ARID;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [1:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire [0:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [63:0]s00_regslice_to_auto_us_df_ARADDR;
  wire [1:0]s00_regslice_to_auto_us_df_ARBURST;
  wire [3:0]s00_regslice_to_auto_us_df_ARCACHE;
  wire [0:0]s00_regslice_to_auto_us_df_ARID;
  wire [7:0]s00_regslice_to_auto_us_df_ARLEN;
  wire [0:0]s00_regslice_to_auto_us_df_ARLOCK;
  wire [2:0]s00_regslice_to_auto_us_df_ARPROT;
  wire [3:0]s00_regslice_to_auto_us_df_ARQOS;
  wire s00_regslice_to_auto_us_df_ARREADY;
  wire [3:0]s00_regslice_to_auto_us_df_ARREGION;
  wire [2:0]s00_regslice_to_auto_us_df_ARSIZE;
  wire s00_regslice_to_auto_us_df_ARVALID;
  wire [31:0]s00_regslice_to_auto_us_df_RDATA;
  wire [0:0]s00_regslice_to_auto_us_df_RID;
  wire s00_regslice_to_auto_us_df_RLAST;
  wire s00_regslice_to_auto_us_df_RREADY;
  wire [1:0]s00_regslice_to_auto_us_df_RRESP;
  wire s00_regslice_to_auto_us_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_df_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s00_couplers_ARVALID;
  assign M_AXI_rready = auto_us_df_to_s00_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign auto_us_df_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s00_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_us_df_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  vitis_design_auto_us_df_0 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s00_couplers_ARVALID),
        .m_axi_rdata(auto_us_df_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s00_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_us_df_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_us_df_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_regslice_to_auto_us_df_ARID),
        .s_axi_arlen(s00_regslice_to_auto_us_df_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_us_df_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_us_df_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_us_df_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_us_df_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_us_df_ARVALID),
        .s_axi_rdata(s00_regslice_to_auto_us_df_RDATA),
        .s_axi_rid(s00_regslice_to_auto_us_df_RID),
        .s_axi_rlast(s00_regslice_to_auto_us_df_RLAST),
        .s_axi_rready(s00_regslice_to_auto_us_df_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_us_df_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_us_df_RVALID));
  vitis_design_s00_regslice_2 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_us_df_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_us_df_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_us_df_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_us_df_ARID),
        .m_axi_arlen(s00_regslice_to_auto_us_df_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_us_df_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_us_df_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_us_df_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_us_df_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_us_df_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_us_df_ARVALID),
        .m_axi_rdata(s00_regslice_to_auto_us_df_RDATA),
        .m_axi_rid(s00_regslice_to_auto_us_df_RID),
        .m_axi_rlast(s00_regslice_to_auto_us_df_RLAST),
        .m_axi_rready(s00_regslice_to_auto_us_df_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_us_df_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_us_df_RVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK[0]),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID));
endmodule

module s00_couplers_imp_1ERPYLY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [15:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [15:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [15:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [15:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [15:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [15:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [15:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [15:0]s00_couplers_to_s00_couplers_ARUSER;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [39:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [15:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire [15:0]s00_couplers_to_s00_couplers_AWUSER;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire [15:0]s00_couplers_to_s00_couplers_BID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [127:0]s00_couplers_to_s00_couplers_RDATA;
  wire [15:0]s00_couplers_to_s00_couplers_RID;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [127:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [15:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[15:0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[15:0] = s00_couplers_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[15:0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[15:0] = s00_couplers_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARUSER = S_AXI_aruser[15:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWUSER = S_AXI_awuser[15:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid[15:0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid[15:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1FHHVG5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s00_couplers_ARQOS;
  wire auto_us_df_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s00_couplers_ARSIZE;
  wire auto_us_df_to_s00_couplers_ARVALID;
  wire [127:0]auto_us_df_to_s00_couplers_RDATA;
  wire auto_us_df_to_s00_couplers_RLAST;
  wire auto_us_df_to_s00_couplers_RREADY;
  wire [1:0]auto_us_df_to_s00_couplers_RRESP;
  wire auto_us_df_to_s00_couplers_RVALID;
  wire [63:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [0:0]s00_couplers_to_s00_regslice_ARID;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [1:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire [0:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [63:0]s00_regslice_to_auto_us_df_ARADDR;
  wire [1:0]s00_regslice_to_auto_us_df_ARBURST;
  wire [3:0]s00_regslice_to_auto_us_df_ARCACHE;
  wire [0:0]s00_regslice_to_auto_us_df_ARID;
  wire [7:0]s00_regslice_to_auto_us_df_ARLEN;
  wire [0:0]s00_regslice_to_auto_us_df_ARLOCK;
  wire [2:0]s00_regslice_to_auto_us_df_ARPROT;
  wire [3:0]s00_regslice_to_auto_us_df_ARQOS;
  wire s00_regslice_to_auto_us_df_ARREADY;
  wire [3:0]s00_regslice_to_auto_us_df_ARREGION;
  wire [2:0]s00_regslice_to_auto_us_df_ARSIZE;
  wire s00_regslice_to_auto_us_df_ARVALID;
  wire [31:0]s00_regslice_to_auto_us_df_RDATA;
  wire [0:0]s00_regslice_to_auto_us_df_RID;
  wire s00_regslice_to_auto_us_df_RLAST;
  wire s00_regslice_to_auto_us_df_RREADY;
  wire [1:0]s00_regslice_to_auto_us_df_RRESP;
  wire s00_regslice_to_auto_us_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_df_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s00_couplers_ARVALID;
  assign M_AXI_rready = auto_us_df_to_s00_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign auto_us_df_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_us_df_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  vitis_design_auto_us_df_9 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s00_couplers_ARVALID),
        .m_axi_rdata(auto_us_df_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s00_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_us_df_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_us_df_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_regslice_to_auto_us_df_ARID),
        .s_axi_arlen(s00_regslice_to_auto_us_df_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_us_df_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_us_df_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_us_df_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_us_df_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_us_df_ARVALID),
        .s_axi_rdata(s00_regslice_to_auto_us_df_RDATA),
        .s_axi_rid(s00_regslice_to_auto_us_df_RID),
        .s_axi_rlast(s00_regslice_to_auto_us_df_RLAST),
        .s_axi_rready(s00_regslice_to_auto_us_df_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_us_df_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_us_df_RVALID));
  vitis_design_s00_regslice_3 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_us_df_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_us_df_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_us_df_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_us_df_ARID),
        .m_axi_arlen(s00_regslice_to_auto_us_df_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_us_df_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_us_df_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_us_df_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_us_df_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_us_df_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_us_df_ARVALID),
        .m_axi_rdata(s00_regslice_to_auto_us_df_RDATA),
        .m_axi_rid(s00_regslice_to_auto_us_df_RID),
        .m_axi_rlast(s00_regslice_to_auto_us_df_RLAST),
        .m_axi_rready(s00_regslice_to_auto_us_df_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_us_df_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_us_df_RVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK[0]),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID));
endmodule

module s00_couplers_imp_GT907L
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_to_s00_couplers_ARQOS;
  wire auto_us_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_to_s00_couplers_ARSIZE;
  wire auto_us_to_s00_couplers_ARVALID;
  wire [31:0]auto_us_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_to_s00_couplers_AWQOS;
  wire auto_us_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_to_s00_couplers_AWSIZE;
  wire auto_us_to_s00_couplers_AWVALID;
  wire auto_us_to_s00_couplers_BREADY;
  wire [1:0]auto_us_to_s00_couplers_BRESP;
  wire auto_us_to_s00_couplers_BVALID;
  wire [127:0]auto_us_to_s00_couplers_RDATA;
  wire auto_us_to_s00_couplers_RLAST;
  wire auto_us_to_s00_couplers_RREADY;
  wire [1:0]auto_us_to_s00_couplers_RRESP;
  wire auto_us_to_s00_couplers_RVALID;
  wire [127:0]auto_us_to_s00_couplers_WDATA;
  wire auto_us_to_s00_couplers_WLAST;
  wire auto_us_to_s00_couplers_WREADY;
  wire [15:0]auto_us_to_s00_couplers_WSTRB;
  wire auto_us_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_us_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_ARCACHE;
  wire [7:0]s00_couplers_to_auto_us_ARLEN;
  wire [0:0]s00_couplers_to_auto_us_ARLOCK;
  wire [2:0]s00_couplers_to_auto_us_ARPROT;
  wire [3:0]s00_couplers_to_auto_us_ARQOS;
  wire s00_couplers_to_auto_us_ARREADY;
  wire [3:0]s00_couplers_to_auto_us_ARREGION;
  wire [2:0]s00_couplers_to_auto_us_ARSIZE;
  wire s00_couplers_to_auto_us_ARVALID;
  wire [31:0]s00_couplers_to_auto_us_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_AWCACHE;
  wire [7:0]s00_couplers_to_auto_us_AWLEN;
  wire [0:0]s00_couplers_to_auto_us_AWLOCK;
  wire [2:0]s00_couplers_to_auto_us_AWPROT;
  wire [3:0]s00_couplers_to_auto_us_AWQOS;
  wire s00_couplers_to_auto_us_AWREADY;
  wire [3:0]s00_couplers_to_auto_us_AWREGION;
  wire [2:0]s00_couplers_to_auto_us_AWSIZE;
  wire s00_couplers_to_auto_us_AWVALID;
  wire s00_couplers_to_auto_us_BREADY;
  wire [1:0]s00_couplers_to_auto_us_BRESP;
  wire s00_couplers_to_auto_us_BVALID;
  wire [31:0]s00_couplers_to_auto_us_RDATA;
  wire s00_couplers_to_auto_us_RLAST;
  wire s00_couplers_to_auto_us_RREADY;
  wire [1:0]s00_couplers_to_auto_us_RRESP;
  wire s00_couplers_to_auto_us_RVALID;
  wire [31:0]s00_couplers_to_auto_us_WDATA;
  wire s00_couplers_to_auto_us_WLAST;
  wire s00_couplers_to_auto_us_WREADY;
  wire [3:0]s00_couplers_to_auto_us_WSTRB;
  wire s00_couplers_to_auto_us_WVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_to_s00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = auto_us_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = auto_us_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_WREADY;
  assign auto_us_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_us_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_us_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_us_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  vitis_design_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_us_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_us_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_us_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_us_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_us_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_us_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_us_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_us_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_us_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_WVALID));
endmodule

module s00_couplers_imp_JZIEG0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_TL41KZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [15:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [39:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [15:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [15:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [15:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  vitis_design_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_14Q51OD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s01_couplers_ARQOS;
  wire auto_us_df_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s01_couplers_ARSIZE;
  wire auto_us_df_to_s01_couplers_ARVALID;
  wire [255:0]auto_us_df_to_s01_couplers_RDATA;
  wire auto_us_df_to_s01_couplers_RLAST;
  wire auto_us_df_to_s01_couplers_RREADY;
  wire [1:0]auto_us_df_to_s01_couplers_RRESP;
  wire auto_us_df_to_s01_couplers_RVALID;
  wire [63:0]s01_couplers_to_s01_regslice_ARADDR;
  wire [1:0]s01_couplers_to_s01_regslice_ARBURST;
  wire [3:0]s01_couplers_to_s01_regslice_ARCACHE;
  wire [0:0]s01_couplers_to_s01_regslice_ARID;
  wire [7:0]s01_couplers_to_s01_regslice_ARLEN;
  wire [1:0]s01_couplers_to_s01_regslice_ARLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_ARPROT;
  wire [3:0]s01_couplers_to_s01_regslice_ARQOS;
  wire s01_couplers_to_s01_regslice_ARREADY;
  wire [3:0]s01_couplers_to_s01_regslice_ARREGION;
  wire [2:0]s01_couplers_to_s01_regslice_ARSIZE;
  wire s01_couplers_to_s01_regslice_ARVALID;
  wire [31:0]s01_couplers_to_s01_regslice_RDATA;
  wire [0:0]s01_couplers_to_s01_regslice_RID;
  wire s01_couplers_to_s01_regslice_RLAST;
  wire s01_couplers_to_s01_regslice_RREADY;
  wire [1:0]s01_couplers_to_s01_regslice_RRESP;
  wire s01_couplers_to_s01_regslice_RVALID;
  wire [63:0]s01_regslice_to_auto_us_df_ARADDR;
  wire [1:0]s01_regslice_to_auto_us_df_ARBURST;
  wire [3:0]s01_regslice_to_auto_us_df_ARCACHE;
  wire [0:0]s01_regslice_to_auto_us_df_ARID;
  wire [7:0]s01_regslice_to_auto_us_df_ARLEN;
  wire [0:0]s01_regslice_to_auto_us_df_ARLOCK;
  wire [2:0]s01_regslice_to_auto_us_df_ARPROT;
  wire [3:0]s01_regslice_to_auto_us_df_ARQOS;
  wire s01_regslice_to_auto_us_df_ARREADY;
  wire [3:0]s01_regslice_to_auto_us_df_ARREGION;
  wire [2:0]s01_regslice_to_auto_us_df_ARSIZE;
  wire s01_regslice_to_auto_us_df_ARVALID;
  wire [31:0]s01_regslice_to_auto_us_df_RDATA;
  wire [0:0]s01_regslice_to_auto_us_df_RID;
  wire s01_regslice_to_auto_us_df_RLAST;
  wire s01_regslice_to_auto_us_df_RREADY;
  wire [1:0]s01_regslice_to_auto_us_df_RRESP;
  wire s01_regslice_to_auto_us_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_df_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s01_couplers_ARVALID;
  assign M_AXI_rready = auto_us_df_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_s01_regslice_ARREADY;
  assign S_AXI_rdata[31:0] = s01_couplers_to_s01_regslice_RDATA;
  assign S_AXI_rid[0] = s01_couplers_to_s01_regslice_RID;
  assign S_AXI_rlast = s01_couplers_to_s01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_regslice_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_regslice_RVALID;
  assign auto_us_df_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s01_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_us_df_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_couplers_to_s01_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s01_couplers_to_s01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_regslice_ARID = S_AXI_arid[0];
  assign s01_couplers_to_s01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s01_couplers_to_s01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s01_couplers_to_s01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_regslice_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_regslice_RREADY = S_AXI_rready;
  vitis_design_auto_us_df_1 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s01_couplers_ARVALID),
        .m_axi_rdata(auto_us_df_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s01_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_regslice_to_auto_us_df_ARADDR),
        .s_axi_arburst(s01_regslice_to_auto_us_df_ARBURST),
        .s_axi_arcache(s01_regslice_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s01_regslice_to_auto_us_df_ARID),
        .s_axi_arlen(s01_regslice_to_auto_us_df_ARLEN),
        .s_axi_arlock(s01_regslice_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s01_regslice_to_auto_us_df_ARPROT),
        .s_axi_arqos(s01_regslice_to_auto_us_df_ARQOS),
        .s_axi_arready(s01_regslice_to_auto_us_df_ARREADY),
        .s_axi_arregion(s01_regslice_to_auto_us_df_ARREGION),
        .s_axi_arsize(s01_regslice_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s01_regslice_to_auto_us_df_ARVALID),
        .s_axi_rdata(s01_regslice_to_auto_us_df_RDATA),
        .s_axi_rid(s01_regslice_to_auto_us_df_RID),
        .s_axi_rlast(s01_regslice_to_auto_us_df_RLAST),
        .s_axi_rready(s01_regslice_to_auto_us_df_RREADY),
        .s_axi_rresp(s01_regslice_to_auto_us_df_RRESP),
        .s_axi_rvalid(s01_regslice_to_auto_us_df_RVALID));
  vitis_design_s01_regslice_2 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s01_regslice_to_auto_us_df_ARADDR),
        .m_axi_arburst(s01_regslice_to_auto_us_df_ARBURST),
        .m_axi_arcache(s01_regslice_to_auto_us_df_ARCACHE),
        .m_axi_arid(s01_regslice_to_auto_us_df_ARID),
        .m_axi_arlen(s01_regslice_to_auto_us_df_ARLEN),
        .m_axi_arlock(s01_regslice_to_auto_us_df_ARLOCK),
        .m_axi_arprot(s01_regslice_to_auto_us_df_ARPROT),
        .m_axi_arqos(s01_regslice_to_auto_us_df_ARQOS),
        .m_axi_arready(s01_regslice_to_auto_us_df_ARREADY),
        .m_axi_arregion(s01_regslice_to_auto_us_df_ARREGION),
        .m_axi_arsize(s01_regslice_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(s01_regslice_to_auto_us_df_ARVALID),
        .m_axi_rdata(s01_regslice_to_auto_us_df_RDATA),
        .m_axi_rid(s01_regslice_to_auto_us_df_RID),
        .m_axi_rlast(s01_regslice_to_auto_us_df_RLAST),
        .m_axi_rready(s01_regslice_to_auto_us_df_RREADY),
        .m_axi_rresp(s01_regslice_to_auto_us_df_RRESP),
        .m_axi_rvalid(s01_regslice_to_auto_us_df_RVALID),
        .s_axi_araddr(s01_couplers_to_s01_regslice_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_regslice_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_regslice_ARCACHE),
        .s_axi_arid(s01_couplers_to_s01_regslice_ARID),
        .s_axi_arlen(s01_couplers_to_s01_regslice_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_regslice_ARLOCK[0]),
        .s_axi_arprot(s01_couplers_to_s01_regslice_ARPROT),
        .s_axi_arqos(s01_couplers_to_s01_regslice_ARQOS),
        .s_axi_arready(s01_couplers_to_s01_regslice_ARREADY),
        .s_axi_arregion(s01_couplers_to_s01_regslice_ARREGION),
        .s_axi_arsize(s01_couplers_to_s01_regslice_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_regslice_ARVALID),
        .s_axi_rdata(s01_couplers_to_s01_regslice_RDATA),
        .s_axi_rid(s01_couplers_to_s01_regslice_RID),
        .s_axi_rlast(s01_couplers_to_s01_regslice_RLAST),
        .s_axi_rready(s01_couplers_to_s01_regslice_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_regslice_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_regslice_RVALID));
endmodule

module s01_couplers_imp_1CGKK39
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s01_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s01_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s01_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s01_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s01_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s01_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s01_couplers_AWQOS;
  wire auto_us_df_to_s01_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s01_couplers_AWSIZE;
  wire auto_us_df_to_s01_couplers_AWVALID;
  wire auto_us_df_to_s01_couplers_BREADY;
  wire [1:0]auto_us_df_to_s01_couplers_BRESP;
  wire auto_us_df_to_s01_couplers_BVALID;
  wire [127:0]auto_us_df_to_s01_couplers_WDATA;
  wire auto_us_df_to_s01_couplers_WLAST;
  wire auto_us_df_to_s01_couplers_WREADY;
  wire [15:0]auto_us_df_to_s01_couplers_WSTRB;
  wire auto_us_df_to_s01_couplers_WVALID;
  wire [63:0]s01_couplers_to_s01_regslice_AWADDR;
  wire [1:0]s01_couplers_to_s01_regslice_AWBURST;
  wire [3:0]s01_couplers_to_s01_regslice_AWCACHE;
  wire [0:0]s01_couplers_to_s01_regslice_AWID;
  wire [7:0]s01_couplers_to_s01_regslice_AWLEN;
  wire [1:0]s01_couplers_to_s01_regslice_AWLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_AWPROT;
  wire [3:0]s01_couplers_to_s01_regslice_AWQOS;
  wire s01_couplers_to_s01_regslice_AWREADY;
  wire [3:0]s01_couplers_to_s01_regslice_AWREGION;
  wire [2:0]s01_couplers_to_s01_regslice_AWSIZE;
  wire s01_couplers_to_s01_regslice_AWVALID;
  wire [0:0]s01_couplers_to_s01_regslice_BID;
  wire s01_couplers_to_s01_regslice_BREADY;
  wire [1:0]s01_couplers_to_s01_regslice_BRESP;
  wire s01_couplers_to_s01_regslice_BVALID;
  wire [31:0]s01_couplers_to_s01_regslice_WDATA;
  wire s01_couplers_to_s01_regslice_WLAST;
  wire s01_couplers_to_s01_regslice_WREADY;
  wire [3:0]s01_couplers_to_s01_regslice_WSTRB;
  wire s01_couplers_to_s01_regslice_WVALID;
  wire [63:0]s01_regslice_to_auto_us_df_AWADDR;
  wire [1:0]s01_regslice_to_auto_us_df_AWBURST;
  wire [3:0]s01_regslice_to_auto_us_df_AWCACHE;
  wire [0:0]s01_regslice_to_auto_us_df_AWID;
  wire [7:0]s01_regslice_to_auto_us_df_AWLEN;
  wire [0:0]s01_regslice_to_auto_us_df_AWLOCK;
  wire [2:0]s01_regslice_to_auto_us_df_AWPROT;
  wire [3:0]s01_regslice_to_auto_us_df_AWQOS;
  wire s01_regslice_to_auto_us_df_AWREADY;
  wire [3:0]s01_regslice_to_auto_us_df_AWREGION;
  wire [2:0]s01_regslice_to_auto_us_df_AWSIZE;
  wire s01_regslice_to_auto_us_df_AWVALID;
  wire [0:0]s01_regslice_to_auto_us_df_BID;
  wire s01_regslice_to_auto_us_df_BREADY;
  wire [1:0]s01_regslice_to_auto_us_df_BRESP;
  wire s01_regslice_to_auto_us_df_BVALID;
  wire [31:0]s01_regslice_to_auto_us_df_WDATA;
  wire s01_regslice_to_auto_us_df_WLAST;
  wire s01_regslice_to_auto_us_df_WREADY;
  wire [3:0]s01_regslice_to_auto_us_df_WSTRB;
  wire s01_regslice_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[63:0] = auto_us_df_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s01_couplers_BREADY;
  assign M_AXI_wdata[127:0] = auto_us_df_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = auto_us_df_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s01_couplers_to_s01_regslice_AWREADY;
  assign S_AXI_bid[0] = s01_couplers_to_s01_regslice_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_regslice_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_regslice_BVALID;
  assign S_AXI_wready = s01_couplers_to_s01_regslice_WREADY;
  assign auto_us_df_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_s01_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s01_couplers_to_s01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_regslice_AWID = S_AXI_awid[0];
  assign s01_couplers_to_s01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s01_couplers_to_s01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s01_couplers_to_s01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_regslice_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_regslice_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_regslice_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_s01_regslice_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_s01_regslice_WVALID = S_AXI_wvalid;
  vitis_design_auto_us_df_10 auto_us_df
       (.m_axi_awaddr(auto_us_df_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s01_couplers_BVALID),
        .m_axi_wdata(auto_us_df_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s01_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s01_regslice_to_auto_us_df_AWADDR),
        .s_axi_awburst(s01_regslice_to_auto_us_df_AWBURST),
        .s_axi_awcache(s01_regslice_to_auto_us_df_AWCACHE),
        .s_axi_awid(s01_regslice_to_auto_us_df_AWID),
        .s_axi_awlen(s01_regslice_to_auto_us_df_AWLEN),
        .s_axi_awlock(s01_regslice_to_auto_us_df_AWLOCK),
        .s_axi_awprot(s01_regslice_to_auto_us_df_AWPROT),
        .s_axi_awqos(s01_regslice_to_auto_us_df_AWQOS),
        .s_axi_awready(s01_regslice_to_auto_us_df_AWREADY),
        .s_axi_awregion(s01_regslice_to_auto_us_df_AWREGION),
        .s_axi_awsize(s01_regslice_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s01_regslice_to_auto_us_df_AWVALID),
        .s_axi_bid(s01_regslice_to_auto_us_df_BID),
        .s_axi_bready(s01_regslice_to_auto_us_df_BREADY),
        .s_axi_bresp(s01_regslice_to_auto_us_df_BRESP),
        .s_axi_bvalid(s01_regslice_to_auto_us_df_BVALID),
        .s_axi_wdata(s01_regslice_to_auto_us_df_WDATA),
        .s_axi_wlast(s01_regslice_to_auto_us_df_WLAST),
        .s_axi_wready(s01_regslice_to_auto_us_df_WREADY),
        .s_axi_wstrb(s01_regslice_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s01_regslice_to_auto_us_df_WVALID));
  vitis_design_s01_regslice_3 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s01_regslice_to_auto_us_df_AWADDR),
        .m_axi_awburst(s01_regslice_to_auto_us_df_AWBURST),
        .m_axi_awcache(s01_regslice_to_auto_us_df_AWCACHE),
        .m_axi_awid(s01_regslice_to_auto_us_df_AWID),
        .m_axi_awlen(s01_regslice_to_auto_us_df_AWLEN),
        .m_axi_awlock(s01_regslice_to_auto_us_df_AWLOCK),
        .m_axi_awprot(s01_regslice_to_auto_us_df_AWPROT),
        .m_axi_awqos(s01_regslice_to_auto_us_df_AWQOS),
        .m_axi_awready(s01_regslice_to_auto_us_df_AWREADY),
        .m_axi_awregion(s01_regslice_to_auto_us_df_AWREGION),
        .m_axi_awsize(s01_regslice_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(s01_regslice_to_auto_us_df_AWVALID),
        .m_axi_bid(s01_regslice_to_auto_us_df_BID),
        .m_axi_bready(s01_regslice_to_auto_us_df_BREADY),
        .m_axi_bresp(s01_regslice_to_auto_us_df_BRESP),
        .m_axi_bvalid(s01_regslice_to_auto_us_df_BVALID),
        .m_axi_wdata(s01_regslice_to_auto_us_df_WDATA),
        .m_axi_wlast(s01_regslice_to_auto_us_df_WLAST),
        .m_axi_wready(s01_regslice_to_auto_us_df_WREADY),
        .m_axi_wstrb(s01_regslice_to_auto_us_df_WSTRB),
        .m_axi_wvalid(s01_regslice_to_auto_us_df_WVALID),
        .s_axi_awaddr(s01_couplers_to_s01_regslice_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_regslice_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_regslice_AWCACHE),
        .s_axi_awid(s01_couplers_to_s01_regslice_AWID),
        .s_axi_awlen(s01_couplers_to_s01_regslice_AWLEN),
        .s_axi_awlock(s01_couplers_to_s01_regslice_AWLOCK[0]),
        .s_axi_awprot(s01_couplers_to_s01_regslice_AWPROT),
        .s_axi_awqos(s01_couplers_to_s01_regslice_AWQOS),
        .s_axi_awready(s01_couplers_to_s01_regslice_AWREADY),
        .s_axi_awregion(s01_couplers_to_s01_regslice_AWREGION),
        .s_axi_awsize(s01_couplers_to_s01_regslice_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_regslice_AWVALID),
        .s_axi_bid(s01_couplers_to_s01_regslice_BID),
        .s_axi_bready(s01_couplers_to_s01_regslice_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_regslice_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_regslice_BVALID),
        .s_axi_wdata(s01_couplers_to_s01_regslice_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_regslice_WLAST),
        .s_axi_wready(s01_couplers_to_s01_regslice_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_regslice_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_regslice_WVALID));
endmodule

module s02_couplers_imp_1BNJ6YL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s02_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s02_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s02_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s02_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s02_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s02_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s02_couplers_ARQOS;
  wire auto_us_df_to_s02_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s02_couplers_ARSIZE;
  wire auto_us_df_to_s02_couplers_ARVALID;
  wire [255:0]auto_us_df_to_s02_couplers_RDATA;
  wire auto_us_df_to_s02_couplers_RLAST;
  wire auto_us_df_to_s02_couplers_RREADY;
  wire [1:0]auto_us_df_to_s02_couplers_RRESP;
  wire auto_us_df_to_s02_couplers_RVALID;
  wire [63:0]s02_couplers_to_s02_regslice_ARADDR;
  wire [1:0]s02_couplers_to_s02_regslice_ARBURST;
  wire [3:0]s02_couplers_to_s02_regslice_ARCACHE;
  wire [0:0]s02_couplers_to_s02_regslice_ARID;
  wire [7:0]s02_couplers_to_s02_regslice_ARLEN;
  wire [1:0]s02_couplers_to_s02_regslice_ARLOCK;
  wire [2:0]s02_couplers_to_s02_regslice_ARPROT;
  wire [3:0]s02_couplers_to_s02_regslice_ARQOS;
  wire s02_couplers_to_s02_regslice_ARREADY;
  wire [3:0]s02_couplers_to_s02_regslice_ARREGION;
  wire [2:0]s02_couplers_to_s02_regslice_ARSIZE;
  wire s02_couplers_to_s02_regslice_ARVALID;
  wire [31:0]s02_couplers_to_s02_regslice_RDATA;
  wire [0:0]s02_couplers_to_s02_regslice_RID;
  wire s02_couplers_to_s02_regslice_RLAST;
  wire s02_couplers_to_s02_regslice_RREADY;
  wire [1:0]s02_couplers_to_s02_regslice_RRESP;
  wire s02_couplers_to_s02_regslice_RVALID;
  wire [63:0]s02_regslice_to_auto_us_df_ARADDR;
  wire [1:0]s02_regslice_to_auto_us_df_ARBURST;
  wire [3:0]s02_regslice_to_auto_us_df_ARCACHE;
  wire [0:0]s02_regslice_to_auto_us_df_ARID;
  wire [7:0]s02_regslice_to_auto_us_df_ARLEN;
  wire [0:0]s02_regslice_to_auto_us_df_ARLOCK;
  wire [2:0]s02_regslice_to_auto_us_df_ARPROT;
  wire [3:0]s02_regslice_to_auto_us_df_ARQOS;
  wire s02_regslice_to_auto_us_df_ARREADY;
  wire [3:0]s02_regslice_to_auto_us_df_ARREGION;
  wire [2:0]s02_regslice_to_auto_us_df_ARSIZE;
  wire s02_regslice_to_auto_us_df_ARVALID;
  wire [31:0]s02_regslice_to_auto_us_df_RDATA;
  wire [0:0]s02_regslice_to_auto_us_df_RID;
  wire s02_regslice_to_auto_us_df_RLAST;
  wire s02_regslice_to_auto_us_df_RREADY;
  wire [1:0]s02_regslice_to_auto_us_df_RRESP;
  wire s02_regslice_to_auto_us_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_df_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s02_couplers_ARVALID;
  assign M_AXI_rready = auto_us_df_to_s02_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s02_couplers_to_s02_regslice_ARREADY;
  assign S_AXI_rdata[31:0] = s02_couplers_to_s02_regslice_RDATA;
  assign S_AXI_rid[0] = s02_couplers_to_s02_regslice_RID;
  assign S_AXI_rlast = s02_couplers_to_s02_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_s02_regslice_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_s02_regslice_RVALID;
  assign auto_us_df_to_s02_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s02_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_us_df_to_s02_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign s02_couplers_to_s02_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s02_couplers_to_s02_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_s02_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_s02_regslice_ARID = S_AXI_arid[0];
  assign s02_couplers_to_s02_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_s02_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s02_couplers_to_s02_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_s02_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_s02_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s02_couplers_to_s02_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_s02_regslice_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_s02_regslice_RREADY = S_AXI_rready;
  vitis_design_auto_us_df_2 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s02_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s02_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s02_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s02_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s02_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s02_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s02_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s02_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s02_couplers_ARVALID),
        .m_axi_rdata(auto_us_df_to_s02_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s02_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s02_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s02_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s02_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s02_regslice_to_auto_us_df_ARADDR),
        .s_axi_arburst(s02_regslice_to_auto_us_df_ARBURST),
        .s_axi_arcache(s02_regslice_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s02_regslice_to_auto_us_df_ARID),
        .s_axi_arlen(s02_regslice_to_auto_us_df_ARLEN),
        .s_axi_arlock(s02_regslice_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s02_regslice_to_auto_us_df_ARPROT),
        .s_axi_arqos(s02_regslice_to_auto_us_df_ARQOS),
        .s_axi_arready(s02_regslice_to_auto_us_df_ARREADY),
        .s_axi_arregion(s02_regslice_to_auto_us_df_ARREGION),
        .s_axi_arsize(s02_regslice_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s02_regslice_to_auto_us_df_ARVALID),
        .s_axi_rdata(s02_regslice_to_auto_us_df_RDATA),
        .s_axi_rid(s02_regslice_to_auto_us_df_RID),
        .s_axi_rlast(s02_regslice_to_auto_us_df_RLAST),
        .s_axi_rready(s02_regslice_to_auto_us_df_RREADY),
        .s_axi_rresp(s02_regslice_to_auto_us_df_RRESP),
        .s_axi_rvalid(s02_regslice_to_auto_us_df_RVALID));
  vitis_design_s02_regslice_0 s02_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s02_regslice_to_auto_us_df_ARADDR),
        .m_axi_arburst(s02_regslice_to_auto_us_df_ARBURST),
        .m_axi_arcache(s02_regslice_to_auto_us_df_ARCACHE),
        .m_axi_arid(s02_regslice_to_auto_us_df_ARID),
        .m_axi_arlen(s02_regslice_to_auto_us_df_ARLEN),
        .m_axi_arlock(s02_regslice_to_auto_us_df_ARLOCK),
        .m_axi_arprot(s02_regslice_to_auto_us_df_ARPROT),
        .m_axi_arqos(s02_regslice_to_auto_us_df_ARQOS),
        .m_axi_arready(s02_regslice_to_auto_us_df_ARREADY),
        .m_axi_arregion(s02_regslice_to_auto_us_df_ARREGION),
        .m_axi_arsize(s02_regslice_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(s02_regslice_to_auto_us_df_ARVALID),
        .m_axi_rdata(s02_regslice_to_auto_us_df_RDATA),
        .m_axi_rid(s02_regslice_to_auto_us_df_RID),
        .m_axi_rlast(s02_regslice_to_auto_us_df_RLAST),
        .m_axi_rready(s02_regslice_to_auto_us_df_RREADY),
        .m_axi_rresp(s02_regslice_to_auto_us_df_RRESP),
        .m_axi_rvalid(s02_regslice_to_auto_us_df_RVALID),
        .s_axi_araddr(s02_couplers_to_s02_regslice_ARADDR),
        .s_axi_arburst(s02_couplers_to_s02_regslice_ARBURST),
        .s_axi_arcache(s02_couplers_to_s02_regslice_ARCACHE),
        .s_axi_arid(s02_couplers_to_s02_regslice_ARID),
        .s_axi_arlen(s02_couplers_to_s02_regslice_ARLEN),
        .s_axi_arlock(s02_couplers_to_s02_regslice_ARLOCK[0]),
        .s_axi_arprot(s02_couplers_to_s02_regslice_ARPROT),
        .s_axi_arqos(s02_couplers_to_s02_regslice_ARQOS),
        .s_axi_arready(s02_couplers_to_s02_regslice_ARREADY),
        .s_axi_arregion(s02_couplers_to_s02_regslice_ARREGION),
        .s_axi_arsize(s02_couplers_to_s02_regslice_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_s02_regslice_ARVALID),
        .s_axi_rdata(s02_couplers_to_s02_regslice_RDATA),
        .s_axi_rid(s02_couplers_to_s02_regslice_RID),
        .s_axi_rlast(s02_couplers_to_s02_regslice_RLAST),
        .s_axi_rready(s02_couplers_to_s02_regslice_RREADY),
        .s_axi_rresp(s02_couplers_to_s02_regslice_RRESP),
        .s_axi_rvalid(s02_couplers_to_s02_regslice_RVALID));
endmodule

module s03_couplers_imp_1GBS94T
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s03_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s03_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s03_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s03_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s03_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s03_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s03_couplers_AWQOS;
  wire auto_us_df_to_s03_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s03_couplers_AWSIZE;
  wire auto_us_df_to_s03_couplers_AWVALID;
  wire auto_us_df_to_s03_couplers_BREADY;
  wire [1:0]auto_us_df_to_s03_couplers_BRESP;
  wire auto_us_df_to_s03_couplers_BVALID;
  wire [255:0]auto_us_df_to_s03_couplers_WDATA;
  wire auto_us_df_to_s03_couplers_WLAST;
  wire auto_us_df_to_s03_couplers_WREADY;
  wire [31:0]auto_us_df_to_s03_couplers_WSTRB;
  wire auto_us_df_to_s03_couplers_WVALID;
  wire [63:0]s03_couplers_to_s03_regslice_AWADDR;
  wire [1:0]s03_couplers_to_s03_regslice_AWBURST;
  wire [3:0]s03_couplers_to_s03_regslice_AWCACHE;
  wire [0:0]s03_couplers_to_s03_regslice_AWID;
  wire [7:0]s03_couplers_to_s03_regslice_AWLEN;
  wire [1:0]s03_couplers_to_s03_regslice_AWLOCK;
  wire [2:0]s03_couplers_to_s03_regslice_AWPROT;
  wire [3:0]s03_couplers_to_s03_regslice_AWQOS;
  wire s03_couplers_to_s03_regslice_AWREADY;
  wire [3:0]s03_couplers_to_s03_regslice_AWREGION;
  wire [2:0]s03_couplers_to_s03_regslice_AWSIZE;
  wire s03_couplers_to_s03_regslice_AWVALID;
  wire [0:0]s03_couplers_to_s03_regslice_BID;
  wire s03_couplers_to_s03_regslice_BREADY;
  wire [1:0]s03_couplers_to_s03_regslice_BRESP;
  wire s03_couplers_to_s03_regslice_BVALID;
  wire [31:0]s03_couplers_to_s03_regslice_WDATA;
  wire s03_couplers_to_s03_regslice_WLAST;
  wire s03_couplers_to_s03_regslice_WREADY;
  wire [3:0]s03_couplers_to_s03_regslice_WSTRB;
  wire s03_couplers_to_s03_regslice_WVALID;
  wire [63:0]s03_regslice_to_auto_us_df_AWADDR;
  wire [1:0]s03_regslice_to_auto_us_df_AWBURST;
  wire [3:0]s03_regslice_to_auto_us_df_AWCACHE;
  wire [0:0]s03_regslice_to_auto_us_df_AWID;
  wire [7:0]s03_regslice_to_auto_us_df_AWLEN;
  wire [0:0]s03_regslice_to_auto_us_df_AWLOCK;
  wire [2:0]s03_regslice_to_auto_us_df_AWPROT;
  wire [3:0]s03_regslice_to_auto_us_df_AWQOS;
  wire s03_regslice_to_auto_us_df_AWREADY;
  wire [3:0]s03_regslice_to_auto_us_df_AWREGION;
  wire [2:0]s03_regslice_to_auto_us_df_AWSIZE;
  wire s03_regslice_to_auto_us_df_AWVALID;
  wire [0:0]s03_regslice_to_auto_us_df_BID;
  wire s03_regslice_to_auto_us_df_BREADY;
  wire [1:0]s03_regslice_to_auto_us_df_BRESP;
  wire s03_regslice_to_auto_us_df_BVALID;
  wire [31:0]s03_regslice_to_auto_us_df_WDATA;
  wire s03_regslice_to_auto_us_df_WLAST;
  wire s03_regslice_to_auto_us_df_WREADY;
  wire [3:0]s03_regslice_to_auto_us_df_WSTRB;
  wire s03_regslice_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[63:0] = auto_us_df_to_s03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s03_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s03_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s03_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s03_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s03_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s03_couplers_BREADY;
  assign M_AXI_wdata[255:0] = auto_us_df_to_s03_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s03_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_us_df_to_s03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s03_couplers_to_s03_regslice_AWREADY;
  assign S_AXI_bid[0] = s03_couplers_to_s03_regslice_BID;
  assign S_AXI_bresp[1:0] = s03_couplers_to_s03_regslice_BRESP;
  assign S_AXI_bvalid = s03_couplers_to_s03_regslice_BVALID;
  assign S_AXI_wready = s03_couplers_to_s03_regslice_WREADY;
  assign auto_us_df_to_s03_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s03_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s03_couplers_WREADY = M_AXI_wready;
  assign s03_couplers_to_s03_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s03_couplers_to_s03_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s03_couplers_to_s03_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s03_couplers_to_s03_regslice_AWID = S_AXI_awid[0];
  assign s03_couplers_to_s03_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s03_couplers_to_s03_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s03_couplers_to_s03_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s03_couplers_to_s03_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s03_couplers_to_s03_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s03_couplers_to_s03_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s03_couplers_to_s03_regslice_AWVALID = S_AXI_awvalid;
  assign s03_couplers_to_s03_regslice_BREADY = S_AXI_bready;
  assign s03_couplers_to_s03_regslice_WDATA = S_AXI_wdata[31:0];
  assign s03_couplers_to_s03_regslice_WLAST = S_AXI_wlast;
  assign s03_couplers_to_s03_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s03_couplers_to_s03_regslice_WVALID = S_AXI_wvalid;
  vitis_design_auto_us_df_3 auto_us_df
       (.m_axi_awaddr(auto_us_df_to_s03_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s03_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s03_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s03_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s03_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s03_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s03_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s03_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s03_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s03_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s03_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s03_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s03_couplers_BVALID),
        .m_axi_wdata(auto_us_df_to_s03_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s03_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s03_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s03_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s03_regslice_to_auto_us_df_AWADDR),
        .s_axi_awburst(s03_regslice_to_auto_us_df_AWBURST),
        .s_axi_awcache(s03_regslice_to_auto_us_df_AWCACHE),
        .s_axi_awid(s03_regslice_to_auto_us_df_AWID),
        .s_axi_awlen(s03_regslice_to_auto_us_df_AWLEN),
        .s_axi_awlock(s03_regslice_to_auto_us_df_AWLOCK),
        .s_axi_awprot(s03_regslice_to_auto_us_df_AWPROT),
        .s_axi_awqos(s03_regslice_to_auto_us_df_AWQOS),
        .s_axi_awready(s03_regslice_to_auto_us_df_AWREADY),
        .s_axi_awregion(s03_regslice_to_auto_us_df_AWREGION),
        .s_axi_awsize(s03_regslice_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s03_regslice_to_auto_us_df_AWVALID),
        .s_axi_bid(s03_regslice_to_auto_us_df_BID),
        .s_axi_bready(s03_regslice_to_auto_us_df_BREADY),
        .s_axi_bresp(s03_regslice_to_auto_us_df_BRESP),
        .s_axi_bvalid(s03_regslice_to_auto_us_df_BVALID),
        .s_axi_wdata(s03_regslice_to_auto_us_df_WDATA),
        .s_axi_wlast(s03_regslice_to_auto_us_df_WLAST),
        .s_axi_wready(s03_regslice_to_auto_us_df_WREADY),
        .s_axi_wstrb(s03_regslice_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s03_regslice_to_auto_us_df_WVALID));
  vitis_design_s03_regslice_0 s03_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s03_regslice_to_auto_us_df_AWADDR),
        .m_axi_awburst(s03_regslice_to_auto_us_df_AWBURST),
        .m_axi_awcache(s03_regslice_to_auto_us_df_AWCACHE),
        .m_axi_awid(s03_regslice_to_auto_us_df_AWID),
        .m_axi_awlen(s03_regslice_to_auto_us_df_AWLEN),
        .m_axi_awlock(s03_regslice_to_auto_us_df_AWLOCK),
        .m_axi_awprot(s03_regslice_to_auto_us_df_AWPROT),
        .m_axi_awqos(s03_regslice_to_auto_us_df_AWQOS),
        .m_axi_awready(s03_regslice_to_auto_us_df_AWREADY),
        .m_axi_awregion(s03_regslice_to_auto_us_df_AWREGION),
        .m_axi_awsize(s03_regslice_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(s03_regslice_to_auto_us_df_AWVALID),
        .m_axi_bid(s03_regslice_to_auto_us_df_BID),
        .m_axi_bready(s03_regslice_to_auto_us_df_BREADY),
        .m_axi_bresp(s03_regslice_to_auto_us_df_BRESP),
        .m_axi_bvalid(s03_regslice_to_auto_us_df_BVALID),
        .m_axi_wdata(s03_regslice_to_auto_us_df_WDATA),
        .m_axi_wlast(s03_regslice_to_auto_us_df_WLAST),
        .m_axi_wready(s03_regslice_to_auto_us_df_WREADY),
        .m_axi_wstrb(s03_regslice_to_auto_us_df_WSTRB),
        .m_axi_wvalid(s03_regslice_to_auto_us_df_WVALID),
        .s_axi_awaddr(s03_couplers_to_s03_regslice_AWADDR),
        .s_axi_awburst(s03_couplers_to_s03_regslice_AWBURST),
        .s_axi_awcache(s03_couplers_to_s03_regslice_AWCACHE),
        .s_axi_awid(s03_couplers_to_s03_regslice_AWID),
        .s_axi_awlen(s03_couplers_to_s03_regslice_AWLEN),
        .s_axi_awlock(s03_couplers_to_s03_regslice_AWLOCK[0]),
        .s_axi_awprot(s03_couplers_to_s03_regslice_AWPROT),
        .s_axi_awqos(s03_couplers_to_s03_regslice_AWQOS),
        .s_axi_awready(s03_couplers_to_s03_regslice_AWREADY),
        .s_axi_awregion(s03_couplers_to_s03_regslice_AWREGION),
        .s_axi_awsize(s03_couplers_to_s03_regslice_AWSIZE),
        .s_axi_awvalid(s03_couplers_to_s03_regslice_AWVALID),
        .s_axi_bid(s03_couplers_to_s03_regslice_BID),
        .s_axi_bready(s03_couplers_to_s03_regslice_BREADY),
        .s_axi_bresp(s03_couplers_to_s03_regslice_BRESP),
        .s_axi_bvalid(s03_couplers_to_s03_regslice_BVALID),
        .s_axi_wdata(s03_couplers_to_s03_regslice_WDATA),
        .s_axi_wlast(s03_couplers_to_s03_regslice_WLAST),
        .s_axi_wready(s03_couplers_to_s03_regslice_WREADY),
        .s_axi_wstrb(s03_couplers_to_s03_regslice_WSTRB),
        .s_axi_wvalid(s03_couplers_to_s03_regslice_WVALID));
endmodule

module s04_couplers_imp_1OAM0L9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s04_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s04_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s04_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s04_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s04_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s04_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s04_couplers_ARQOS;
  wire auto_us_df_to_s04_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s04_couplers_ARSIZE;
  wire auto_us_df_to_s04_couplers_ARVALID;
  wire [255:0]auto_us_df_to_s04_couplers_RDATA;
  wire auto_us_df_to_s04_couplers_RLAST;
  wire auto_us_df_to_s04_couplers_RREADY;
  wire [1:0]auto_us_df_to_s04_couplers_RRESP;
  wire auto_us_df_to_s04_couplers_RVALID;
  wire [63:0]s04_couplers_to_s04_regslice_ARADDR;
  wire [1:0]s04_couplers_to_s04_regslice_ARBURST;
  wire [3:0]s04_couplers_to_s04_regslice_ARCACHE;
  wire [0:0]s04_couplers_to_s04_regslice_ARID;
  wire [7:0]s04_couplers_to_s04_regslice_ARLEN;
  wire [1:0]s04_couplers_to_s04_regslice_ARLOCK;
  wire [2:0]s04_couplers_to_s04_regslice_ARPROT;
  wire [3:0]s04_couplers_to_s04_regslice_ARQOS;
  wire s04_couplers_to_s04_regslice_ARREADY;
  wire [3:0]s04_couplers_to_s04_regslice_ARREGION;
  wire [2:0]s04_couplers_to_s04_regslice_ARSIZE;
  wire s04_couplers_to_s04_regslice_ARVALID;
  wire [63:0]s04_couplers_to_s04_regslice_RDATA;
  wire [0:0]s04_couplers_to_s04_regslice_RID;
  wire s04_couplers_to_s04_regslice_RLAST;
  wire s04_couplers_to_s04_regslice_RREADY;
  wire [1:0]s04_couplers_to_s04_regslice_RRESP;
  wire s04_couplers_to_s04_regslice_RVALID;
  wire [63:0]s04_regslice_to_auto_us_df_ARADDR;
  wire [1:0]s04_regslice_to_auto_us_df_ARBURST;
  wire [3:0]s04_regslice_to_auto_us_df_ARCACHE;
  wire [0:0]s04_regslice_to_auto_us_df_ARID;
  wire [7:0]s04_regslice_to_auto_us_df_ARLEN;
  wire [0:0]s04_regslice_to_auto_us_df_ARLOCK;
  wire [2:0]s04_regslice_to_auto_us_df_ARPROT;
  wire [3:0]s04_regslice_to_auto_us_df_ARQOS;
  wire s04_regslice_to_auto_us_df_ARREADY;
  wire [3:0]s04_regslice_to_auto_us_df_ARREGION;
  wire [2:0]s04_regslice_to_auto_us_df_ARSIZE;
  wire s04_regslice_to_auto_us_df_ARVALID;
  wire [63:0]s04_regslice_to_auto_us_df_RDATA;
  wire [0:0]s04_regslice_to_auto_us_df_RID;
  wire s04_regslice_to_auto_us_df_RLAST;
  wire s04_regslice_to_auto_us_df_RREADY;
  wire [1:0]s04_regslice_to_auto_us_df_RRESP;
  wire s04_regslice_to_auto_us_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_df_to_s04_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s04_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s04_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s04_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s04_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s04_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s04_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s04_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s04_couplers_ARVALID;
  assign M_AXI_rready = auto_us_df_to_s04_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s04_couplers_to_s04_regslice_ARREADY;
  assign S_AXI_rdata[63:0] = s04_couplers_to_s04_regslice_RDATA;
  assign S_AXI_rid[0] = s04_couplers_to_s04_regslice_RID;
  assign S_AXI_rlast = s04_couplers_to_s04_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s04_couplers_to_s04_regslice_RRESP;
  assign S_AXI_rvalid = s04_couplers_to_s04_regslice_RVALID;
  assign auto_us_df_to_s04_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s04_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_us_df_to_s04_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s04_couplers_RVALID = M_AXI_rvalid;
  assign s04_couplers_to_s04_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s04_couplers_to_s04_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s04_couplers_to_s04_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s04_couplers_to_s04_regslice_ARID = S_AXI_arid[0];
  assign s04_couplers_to_s04_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s04_couplers_to_s04_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s04_couplers_to_s04_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s04_couplers_to_s04_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s04_couplers_to_s04_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s04_couplers_to_s04_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s04_couplers_to_s04_regslice_ARVALID = S_AXI_arvalid;
  assign s04_couplers_to_s04_regslice_RREADY = S_AXI_rready;
  vitis_design_auto_us_df_4 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s04_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s04_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s04_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s04_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s04_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s04_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s04_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s04_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s04_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s04_couplers_ARVALID),
        .m_axi_rdata(auto_us_df_to_s04_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s04_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s04_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s04_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s04_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s04_regslice_to_auto_us_df_ARADDR),
        .s_axi_arburst(s04_regslice_to_auto_us_df_ARBURST),
        .s_axi_arcache(s04_regslice_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s04_regslice_to_auto_us_df_ARID),
        .s_axi_arlen(s04_regslice_to_auto_us_df_ARLEN),
        .s_axi_arlock(s04_regslice_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s04_regslice_to_auto_us_df_ARPROT),
        .s_axi_arqos(s04_regslice_to_auto_us_df_ARQOS),
        .s_axi_arready(s04_regslice_to_auto_us_df_ARREADY),
        .s_axi_arregion(s04_regslice_to_auto_us_df_ARREGION),
        .s_axi_arsize(s04_regslice_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s04_regslice_to_auto_us_df_ARVALID),
        .s_axi_rdata(s04_regslice_to_auto_us_df_RDATA),
        .s_axi_rid(s04_regslice_to_auto_us_df_RID),
        .s_axi_rlast(s04_regslice_to_auto_us_df_RLAST),
        .s_axi_rready(s04_regslice_to_auto_us_df_RREADY),
        .s_axi_rresp(s04_regslice_to_auto_us_df_RRESP),
        .s_axi_rvalid(s04_regslice_to_auto_us_df_RVALID));
  vitis_design_s04_regslice_0 s04_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s04_regslice_to_auto_us_df_ARADDR),
        .m_axi_arburst(s04_regslice_to_auto_us_df_ARBURST),
        .m_axi_arcache(s04_regslice_to_auto_us_df_ARCACHE),
        .m_axi_arid(s04_regslice_to_auto_us_df_ARID),
        .m_axi_arlen(s04_regslice_to_auto_us_df_ARLEN),
        .m_axi_arlock(s04_regslice_to_auto_us_df_ARLOCK),
        .m_axi_arprot(s04_regslice_to_auto_us_df_ARPROT),
        .m_axi_arqos(s04_regslice_to_auto_us_df_ARQOS),
        .m_axi_arready(s04_regslice_to_auto_us_df_ARREADY),
        .m_axi_arregion(s04_regslice_to_auto_us_df_ARREGION),
        .m_axi_arsize(s04_regslice_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(s04_regslice_to_auto_us_df_ARVALID),
        .m_axi_rdata(s04_regslice_to_auto_us_df_RDATA),
        .m_axi_rid(s04_regslice_to_auto_us_df_RID),
        .m_axi_rlast(s04_regslice_to_auto_us_df_RLAST),
        .m_axi_rready(s04_regslice_to_auto_us_df_RREADY),
        .m_axi_rresp(s04_regslice_to_auto_us_df_RRESP),
        .m_axi_rvalid(s04_regslice_to_auto_us_df_RVALID),
        .s_axi_araddr(s04_couplers_to_s04_regslice_ARADDR),
        .s_axi_arburst(s04_couplers_to_s04_regslice_ARBURST),
        .s_axi_arcache(s04_couplers_to_s04_regslice_ARCACHE),
        .s_axi_arid(s04_couplers_to_s04_regslice_ARID),
        .s_axi_arlen(s04_couplers_to_s04_regslice_ARLEN),
        .s_axi_arlock(s04_couplers_to_s04_regslice_ARLOCK[0]),
        .s_axi_arprot(s04_couplers_to_s04_regslice_ARPROT),
        .s_axi_arqos(s04_couplers_to_s04_regslice_ARQOS),
        .s_axi_arready(s04_couplers_to_s04_regslice_ARREADY),
        .s_axi_arregion(s04_couplers_to_s04_regslice_ARREGION),
        .s_axi_arsize(s04_couplers_to_s04_regslice_ARSIZE),
        .s_axi_arvalid(s04_couplers_to_s04_regslice_ARVALID),
        .s_axi_rdata(s04_couplers_to_s04_regslice_RDATA),
        .s_axi_rid(s04_couplers_to_s04_regslice_RID),
        .s_axi_rlast(s04_couplers_to_s04_regslice_RLAST),
        .s_axi_rready(s04_couplers_to_s04_regslice_RREADY),
        .s_axi_rresp(s04_couplers_to_s04_regslice_RRESP),
        .s_axi_rvalid(s04_couplers_to_s04_regslice_RVALID));
endmodule

module s05_couplers_imp_1L9NNB1
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s05_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s05_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s05_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s05_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s05_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s05_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s05_couplers_AWQOS;
  wire auto_us_df_to_s05_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s05_couplers_AWSIZE;
  wire auto_us_df_to_s05_couplers_AWVALID;
  wire auto_us_df_to_s05_couplers_BREADY;
  wire [1:0]auto_us_df_to_s05_couplers_BRESP;
  wire auto_us_df_to_s05_couplers_BVALID;
  wire [255:0]auto_us_df_to_s05_couplers_WDATA;
  wire auto_us_df_to_s05_couplers_WLAST;
  wire auto_us_df_to_s05_couplers_WREADY;
  wire [31:0]auto_us_df_to_s05_couplers_WSTRB;
  wire auto_us_df_to_s05_couplers_WVALID;
  wire [63:0]s05_couplers_to_s05_regslice_AWADDR;
  wire [1:0]s05_couplers_to_s05_regslice_AWBURST;
  wire [3:0]s05_couplers_to_s05_regslice_AWCACHE;
  wire [0:0]s05_couplers_to_s05_regslice_AWID;
  wire [7:0]s05_couplers_to_s05_regslice_AWLEN;
  wire [1:0]s05_couplers_to_s05_regslice_AWLOCK;
  wire [2:0]s05_couplers_to_s05_regslice_AWPROT;
  wire [3:0]s05_couplers_to_s05_regslice_AWQOS;
  wire s05_couplers_to_s05_regslice_AWREADY;
  wire [3:0]s05_couplers_to_s05_regslice_AWREGION;
  wire [2:0]s05_couplers_to_s05_regslice_AWSIZE;
  wire s05_couplers_to_s05_regslice_AWVALID;
  wire [0:0]s05_couplers_to_s05_regslice_BID;
  wire s05_couplers_to_s05_regslice_BREADY;
  wire [1:0]s05_couplers_to_s05_regslice_BRESP;
  wire s05_couplers_to_s05_regslice_BVALID;
  wire [63:0]s05_couplers_to_s05_regslice_WDATA;
  wire s05_couplers_to_s05_regslice_WLAST;
  wire s05_couplers_to_s05_regslice_WREADY;
  wire [7:0]s05_couplers_to_s05_regslice_WSTRB;
  wire s05_couplers_to_s05_regslice_WVALID;
  wire [63:0]s05_regslice_to_auto_us_df_AWADDR;
  wire [1:0]s05_regslice_to_auto_us_df_AWBURST;
  wire [3:0]s05_regslice_to_auto_us_df_AWCACHE;
  wire [0:0]s05_regslice_to_auto_us_df_AWID;
  wire [7:0]s05_regslice_to_auto_us_df_AWLEN;
  wire [0:0]s05_regslice_to_auto_us_df_AWLOCK;
  wire [2:0]s05_regslice_to_auto_us_df_AWPROT;
  wire [3:0]s05_regslice_to_auto_us_df_AWQOS;
  wire s05_regslice_to_auto_us_df_AWREADY;
  wire [3:0]s05_regslice_to_auto_us_df_AWREGION;
  wire [2:0]s05_regslice_to_auto_us_df_AWSIZE;
  wire s05_regslice_to_auto_us_df_AWVALID;
  wire [0:0]s05_regslice_to_auto_us_df_BID;
  wire s05_regslice_to_auto_us_df_BREADY;
  wire [1:0]s05_regslice_to_auto_us_df_BRESP;
  wire s05_regslice_to_auto_us_df_BVALID;
  wire [63:0]s05_regslice_to_auto_us_df_WDATA;
  wire s05_regslice_to_auto_us_df_WLAST;
  wire s05_regslice_to_auto_us_df_WREADY;
  wire [7:0]s05_regslice_to_auto_us_df_WSTRB;
  wire s05_regslice_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[63:0] = auto_us_df_to_s05_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s05_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s05_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s05_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s05_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s05_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s05_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s05_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s05_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s05_couplers_BREADY;
  assign M_AXI_wdata[255:0] = auto_us_df_to_s05_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s05_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_us_df_to_s05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s05_couplers_to_s05_regslice_AWREADY;
  assign S_AXI_bid[0] = s05_couplers_to_s05_regslice_BID;
  assign S_AXI_bresp[1:0] = s05_couplers_to_s05_regslice_BRESP;
  assign S_AXI_bvalid = s05_couplers_to_s05_regslice_BVALID;
  assign S_AXI_wready = s05_couplers_to_s05_regslice_WREADY;
  assign auto_us_df_to_s05_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s05_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s05_couplers_WREADY = M_AXI_wready;
  assign s05_couplers_to_s05_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s05_couplers_to_s05_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s05_couplers_to_s05_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s05_couplers_to_s05_regslice_AWID = S_AXI_awid[0];
  assign s05_couplers_to_s05_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s05_couplers_to_s05_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s05_couplers_to_s05_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s05_couplers_to_s05_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s05_couplers_to_s05_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s05_couplers_to_s05_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s05_couplers_to_s05_regslice_AWVALID = S_AXI_awvalid;
  assign s05_couplers_to_s05_regslice_BREADY = S_AXI_bready;
  assign s05_couplers_to_s05_regslice_WDATA = S_AXI_wdata[63:0];
  assign s05_couplers_to_s05_regslice_WLAST = S_AXI_wlast;
  assign s05_couplers_to_s05_regslice_WSTRB = S_AXI_wstrb[7:0];
  assign s05_couplers_to_s05_regslice_WVALID = S_AXI_wvalid;
  vitis_design_auto_us_df_5 auto_us_df
       (.m_axi_awaddr(auto_us_df_to_s05_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s05_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s05_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s05_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s05_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s05_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s05_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s05_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s05_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s05_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s05_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s05_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s05_couplers_BVALID),
        .m_axi_wdata(auto_us_df_to_s05_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s05_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s05_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s05_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s05_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s05_regslice_to_auto_us_df_AWADDR),
        .s_axi_awburst(s05_regslice_to_auto_us_df_AWBURST),
        .s_axi_awcache(s05_regslice_to_auto_us_df_AWCACHE),
        .s_axi_awid(s05_regslice_to_auto_us_df_AWID),
        .s_axi_awlen(s05_regslice_to_auto_us_df_AWLEN),
        .s_axi_awlock(s05_regslice_to_auto_us_df_AWLOCK),
        .s_axi_awprot(s05_regslice_to_auto_us_df_AWPROT),
        .s_axi_awqos(s05_regslice_to_auto_us_df_AWQOS),
        .s_axi_awready(s05_regslice_to_auto_us_df_AWREADY),
        .s_axi_awregion(s05_regslice_to_auto_us_df_AWREGION),
        .s_axi_awsize(s05_regslice_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s05_regslice_to_auto_us_df_AWVALID),
        .s_axi_bid(s05_regslice_to_auto_us_df_BID),
        .s_axi_bready(s05_regslice_to_auto_us_df_BREADY),
        .s_axi_bresp(s05_regslice_to_auto_us_df_BRESP),
        .s_axi_bvalid(s05_regslice_to_auto_us_df_BVALID),
        .s_axi_wdata(s05_regslice_to_auto_us_df_WDATA),
        .s_axi_wlast(s05_regslice_to_auto_us_df_WLAST),
        .s_axi_wready(s05_regslice_to_auto_us_df_WREADY),
        .s_axi_wstrb(s05_regslice_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s05_regslice_to_auto_us_df_WVALID));
  vitis_design_s05_regslice_0 s05_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s05_regslice_to_auto_us_df_AWADDR),
        .m_axi_awburst(s05_regslice_to_auto_us_df_AWBURST),
        .m_axi_awcache(s05_regslice_to_auto_us_df_AWCACHE),
        .m_axi_awid(s05_regslice_to_auto_us_df_AWID),
        .m_axi_awlen(s05_regslice_to_auto_us_df_AWLEN),
        .m_axi_awlock(s05_regslice_to_auto_us_df_AWLOCK),
        .m_axi_awprot(s05_regslice_to_auto_us_df_AWPROT),
        .m_axi_awqos(s05_regslice_to_auto_us_df_AWQOS),
        .m_axi_awready(s05_regslice_to_auto_us_df_AWREADY),
        .m_axi_awregion(s05_regslice_to_auto_us_df_AWREGION),
        .m_axi_awsize(s05_regslice_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(s05_regslice_to_auto_us_df_AWVALID),
        .m_axi_bid(s05_regslice_to_auto_us_df_BID),
        .m_axi_bready(s05_regslice_to_auto_us_df_BREADY),
        .m_axi_bresp(s05_regslice_to_auto_us_df_BRESP),
        .m_axi_bvalid(s05_regslice_to_auto_us_df_BVALID),
        .m_axi_wdata(s05_regslice_to_auto_us_df_WDATA),
        .m_axi_wlast(s05_regslice_to_auto_us_df_WLAST),
        .m_axi_wready(s05_regslice_to_auto_us_df_WREADY),
        .m_axi_wstrb(s05_regslice_to_auto_us_df_WSTRB),
        .m_axi_wvalid(s05_regslice_to_auto_us_df_WVALID),
        .s_axi_awaddr(s05_couplers_to_s05_regslice_AWADDR),
        .s_axi_awburst(s05_couplers_to_s05_regslice_AWBURST),
        .s_axi_awcache(s05_couplers_to_s05_regslice_AWCACHE),
        .s_axi_awid(s05_couplers_to_s05_regslice_AWID),
        .s_axi_awlen(s05_couplers_to_s05_regslice_AWLEN),
        .s_axi_awlock(s05_couplers_to_s05_regslice_AWLOCK[0]),
        .s_axi_awprot(s05_couplers_to_s05_regslice_AWPROT),
        .s_axi_awqos(s05_couplers_to_s05_regslice_AWQOS),
        .s_axi_awready(s05_couplers_to_s05_regslice_AWREADY),
        .s_axi_awregion(s05_couplers_to_s05_regslice_AWREGION),
        .s_axi_awsize(s05_couplers_to_s05_regslice_AWSIZE),
        .s_axi_awvalid(s05_couplers_to_s05_regslice_AWVALID),
        .s_axi_bid(s05_couplers_to_s05_regslice_BID),
        .s_axi_bready(s05_couplers_to_s05_regslice_BREADY),
        .s_axi_bresp(s05_couplers_to_s05_regslice_BRESP),
        .s_axi_bvalid(s05_couplers_to_s05_regslice_BVALID),
        .s_axi_wdata(s05_couplers_to_s05_regslice_WDATA),
        .s_axi_wlast(s05_couplers_to_s05_regslice_WLAST),
        .s_axi_wready(s05_couplers_to_s05_regslice_WREADY),
        .s_axi_wstrb(s05_couplers_to_s05_regslice_WSTRB),
        .s_axi_wvalid(s05_couplers_to_s05_regslice_WVALID));
endmodule

module s06_couplers_imp_1WKETBX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [255:0]M_AXI_rdata;
  input [4:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]s06_couplers_to_s06_regslice_ARADDR;
  wire [1:0]s06_couplers_to_s06_regslice_ARBURST;
  wire [3:0]s06_couplers_to_s06_regslice_ARCACHE;
  wire [0:0]s06_couplers_to_s06_regslice_ARID;
  wire [7:0]s06_couplers_to_s06_regslice_ARLEN;
  wire [1:0]s06_couplers_to_s06_regslice_ARLOCK;
  wire [2:0]s06_couplers_to_s06_regslice_ARPROT;
  wire [3:0]s06_couplers_to_s06_regslice_ARQOS;
  wire s06_couplers_to_s06_regslice_ARREADY;
  wire [3:0]s06_couplers_to_s06_regslice_ARREGION;
  wire [2:0]s06_couplers_to_s06_regslice_ARSIZE;
  wire s06_couplers_to_s06_regslice_ARVALID;
  wire [255:0]s06_couplers_to_s06_regslice_RDATA;
  wire [0:0]s06_couplers_to_s06_regslice_RID;
  wire s06_couplers_to_s06_regslice_RLAST;
  wire s06_couplers_to_s06_regslice_RREADY;
  wire [1:0]s06_couplers_to_s06_regslice_RRESP;
  wire s06_couplers_to_s06_regslice_RVALID;
  wire [63:0]s06_data_fifo_to_s06_couplers_ARADDR;
  wire [1:0]s06_data_fifo_to_s06_couplers_ARBURST;
  wire [3:0]s06_data_fifo_to_s06_couplers_ARCACHE;
  wire [0:0]s06_data_fifo_to_s06_couplers_ARID;
  wire [7:0]s06_data_fifo_to_s06_couplers_ARLEN;
  wire [0:0]s06_data_fifo_to_s06_couplers_ARLOCK;
  wire [2:0]s06_data_fifo_to_s06_couplers_ARPROT;
  wire [3:0]s06_data_fifo_to_s06_couplers_ARQOS;
  wire s06_data_fifo_to_s06_couplers_ARREADY;
  wire [2:0]s06_data_fifo_to_s06_couplers_ARSIZE;
  wire s06_data_fifo_to_s06_couplers_ARVALID;
  wire [255:0]s06_data_fifo_to_s06_couplers_RDATA;
  wire [4:0]s06_data_fifo_to_s06_couplers_RID;
  wire s06_data_fifo_to_s06_couplers_RLAST;
  wire s06_data_fifo_to_s06_couplers_RREADY;
  wire [1:0]s06_data_fifo_to_s06_couplers_RRESP;
  wire s06_data_fifo_to_s06_couplers_RVALID;
  wire [63:0]s06_regslice_to_s06_data_fifo_ARADDR;
  wire [1:0]s06_regslice_to_s06_data_fifo_ARBURST;
  wire [3:0]s06_regslice_to_s06_data_fifo_ARCACHE;
  wire [0:0]s06_regslice_to_s06_data_fifo_ARID;
  wire [7:0]s06_regslice_to_s06_data_fifo_ARLEN;
  wire [0:0]s06_regslice_to_s06_data_fifo_ARLOCK;
  wire [2:0]s06_regslice_to_s06_data_fifo_ARPROT;
  wire [3:0]s06_regslice_to_s06_data_fifo_ARQOS;
  wire s06_regslice_to_s06_data_fifo_ARREADY;
  wire [3:0]s06_regslice_to_s06_data_fifo_ARREGION;
  wire [2:0]s06_regslice_to_s06_data_fifo_ARSIZE;
  wire s06_regslice_to_s06_data_fifo_ARVALID;
  wire [255:0]s06_regslice_to_s06_data_fifo_RDATA;
  wire [0:0]s06_regslice_to_s06_data_fifo_RID;
  wire s06_regslice_to_s06_data_fifo_RLAST;
  wire s06_regslice_to_s06_data_fifo_RREADY;
  wire [1:0]s06_regslice_to_s06_data_fifo_RRESP;
  wire s06_regslice_to_s06_data_fifo_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = s06_data_fifo_to_s06_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s06_data_fifo_to_s06_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s06_data_fifo_to_s06_couplers_ARCACHE;
  assign M_AXI_arid[0] = s06_data_fifo_to_s06_couplers_ARID;
  assign M_AXI_arlen[7:0] = s06_data_fifo_to_s06_couplers_ARLEN;
  assign M_AXI_arlock[0] = s06_data_fifo_to_s06_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s06_data_fifo_to_s06_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s06_data_fifo_to_s06_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s06_data_fifo_to_s06_couplers_ARSIZE;
  assign M_AXI_arvalid = s06_data_fifo_to_s06_couplers_ARVALID;
  assign M_AXI_rready = s06_data_fifo_to_s06_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s06_couplers_to_s06_regslice_ARREADY;
  assign S_AXI_rdata[255:0] = s06_couplers_to_s06_regslice_RDATA;
  assign S_AXI_rid[0] = s06_couplers_to_s06_regslice_RID;
  assign S_AXI_rlast = s06_couplers_to_s06_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s06_couplers_to_s06_regslice_RRESP;
  assign S_AXI_rvalid = s06_couplers_to_s06_regslice_RVALID;
  assign s06_couplers_to_s06_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s06_couplers_to_s06_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s06_couplers_to_s06_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s06_couplers_to_s06_regslice_ARID = S_AXI_arid[0];
  assign s06_couplers_to_s06_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s06_couplers_to_s06_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s06_couplers_to_s06_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s06_couplers_to_s06_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s06_couplers_to_s06_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s06_couplers_to_s06_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s06_couplers_to_s06_regslice_ARVALID = S_AXI_arvalid;
  assign s06_couplers_to_s06_regslice_RREADY = S_AXI_rready;
  assign s06_data_fifo_to_s06_couplers_ARREADY = M_AXI_arready;
  assign s06_data_fifo_to_s06_couplers_RDATA = M_AXI_rdata[255:0];
  assign s06_data_fifo_to_s06_couplers_RID = M_AXI_rid[4:0];
  assign s06_data_fifo_to_s06_couplers_RLAST = M_AXI_rlast;
  assign s06_data_fifo_to_s06_couplers_RRESP = M_AXI_rresp[1:0];
  assign s06_data_fifo_to_s06_couplers_RVALID = M_AXI_rvalid;
  vitis_design_s06_data_fifo_0 s06_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s06_data_fifo_to_s06_couplers_ARADDR),
        .m_axi_arburst(s06_data_fifo_to_s06_couplers_ARBURST),
        .m_axi_arcache(s06_data_fifo_to_s06_couplers_ARCACHE),
        .m_axi_arid(s06_data_fifo_to_s06_couplers_ARID),
        .m_axi_arlen(s06_data_fifo_to_s06_couplers_ARLEN),
        .m_axi_arlock(s06_data_fifo_to_s06_couplers_ARLOCK),
        .m_axi_arprot(s06_data_fifo_to_s06_couplers_ARPROT),
        .m_axi_arqos(s06_data_fifo_to_s06_couplers_ARQOS),
        .m_axi_arready(s06_data_fifo_to_s06_couplers_ARREADY),
        .m_axi_arsize(s06_data_fifo_to_s06_couplers_ARSIZE),
        .m_axi_arvalid(s06_data_fifo_to_s06_couplers_ARVALID),
        .m_axi_rdata(s06_data_fifo_to_s06_couplers_RDATA),
        .m_axi_rid(s06_data_fifo_to_s06_couplers_RID[0]),
        .m_axi_rlast(s06_data_fifo_to_s06_couplers_RLAST),
        .m_axi_rready(s06_data_fifo_to_s06_couplers_RREADY),
        .m_axi_rresp(s06_data_fifo_to_s06_couplers_RRESP),
        .m_axi_rvalid(s06_data_fifo_to_s06_couplers_RVALID),
        .s_axi_araddr(s06_regslice_to_s06_data_fifo_ARADDR),
        .s_axi_arburst(s06_regslice_to_s06_data_fifo_ARBURST),
        .s_axi_arcache(s06_regslice_to_s06_data_fifo_ARCACHE),
        .s_axi_arid(s06_regslice_to_s06_data_fifo_ARID),
        .s_axi_arlen(s06_regslice_to_s06_data_fifo_ARLEN),
        .s_axi_arlock(s06_regslice_to_s06_data_fifo_ARLOCK),
        .s_axi_arprot(s06_regslice_to_s06_data_fifo_ARPROT),
        .s_axi_arqos(s06_regslice_to_s06_data_fifo_ARQOS),
        .s_axi_arready(s06_regslice_to_s06_data_fifo_ARREADY),
        .s_axi_arregion(s06_regslice_to_s06_data_fifo_ARREGION),
        .s_axi_arsize(s06_regslice_to_s06_data_fifo_ARSIZE),
        .s_axi_arvalid(s06_regslice_to_s06_data_fifo_ARVALID),
        .s_axi_rdata(s06_regslice_to_s06_data_fifo_RDATA),
        .s_axi_rid(s06_regslice_to_s06_data_fifo_RID),
        .s_axi_rlast(s06_regslice_to_s06_data_fifo_RLAST),
        .s_axi_rready(s06_regslice_to_s06_data_fifo_RREADY),
        .s_axi_rresp(s06_regslice_to_s06_data_fifo_RRESP),
        .s_axi_rvalid(s06_regslice_to_s06_data_fifo_RVALID));
  vitis_design_s06_regslice_0 s06_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s06_regslice_to_s06_data_fifo_ARADDR),
        .m_axi_arburst(s06_regslice_to_s06_data_fifo_ARBURST),
        .m_axi_arcache(s06_regslice_to_s06_data_fifo_ARCACHE),
        .m_axi_arid(s06_regslice_to_s06_data_fifo_ARID),
        .m_axi_arlen(s06_regslice_to_s06_data_fifo_ARLEN),
        .m_axi_arlock(s06_regslice_to_s06_data_fifo_ARLOCK),
        .m_axi_arprot(s06_regslice_to_s06_data_fifo_ARPROT),
        .m_axi_arqos(s06_regslice_to_s06_data_fifo_ARQOS),
        .m_axi_arready(s06_regslice_to_s06_data_fifo_ARREADY),
        .m_axi_arregion(s06_regslice_to_s06_data_fifo_ARREGION),
        .m_axi_arsize(s06_regslice_to_s06_data_fifo_ARSIZE),
        .m_axi_arvalid(s06_regslice_to_s06_data_fifo_ARVALID),
        .m_axi_rdata(s06_regslice_to_s06_data_fifo_RDATA),
        .m_axi_rid(s06_regslice_to_s06_data_fifo_RID),
        .m_axi_rlast(s06_regslice_to_s06_data_fifo_RLAST),
        .m_axi_rready(s06_regslice_to_s06_data_fifo_RREADY),
        .m_axi_rresp(s06_regslice_to_s06_data_fifo_RRESP),
        .m_axi_rvalid(s06_regslice_to_s06_data_fifo_RVALID),
        .s_axi_araddr(s06_couplers_to_s06_regslice_ARADDR),
        .s_axi_arburst(s06_couplers_to_s06_regslice_ARBURST),
        .s_axi_arcache(s06_couplers_to_s06_regslice_ARCACHE),
        .s_axi_arid(s06_couplers_to_s06_regslice_ARID),
        .s_axi_arlen(s06_couplers_to_s06_regslice_ARLEN),
        .s_axi_arlock(s06_couplers_to_s06_regslice_ARLOCK[0]),
        .s_axi_arprot(s06_couplers_to_s06_regslice_ARPROT),
        .s_axi_arqos(s06_couplers_to_s06_regslice_ARQOS),
        .s_axi_arready(s06_couplers_to_s06_regslice_ARREADY),
        .s_axi_arregion(s06_couplers_to_s06_regslice_ARREGION),
        .s_axi_arsize(s06_couplers_to_s06_regslice_ARSIZE),
        .s_axi_arvalid(s06_couplers_to_s06_regslice_ARVALID),
        .s_axi_rdata(s06_couplers_to_s06_regslice_RDATA),
        .s_axi_rid(s06_couplers_to_s06_regslice_RID),
        .s_axi_rlast(s06_couplers_to_s06_regslice_RLAST),
        .s_axi_rready(s06_couplers_to_s06_regslice_RREADY),
        .s_axi_rresp(s06_couplers_to_s06_regslice_RRESP),
        .s_axi_rvalid(s06_couplers_to_s06_regslice_RVALID));
endmodule

module s07_couplers_imp_1Q7M0JH
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [4:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]s07_couplers_to_s07_regslice_AWADDR;
  wire [1:0]s07_couplers_to_s07_regslice_AWBURST;
  wire [3:0]s07_couplers_to_s07_regslice_AWCACHE;
  wire [0:0]s07_couplers_to_s07_regslice_AWID;
  wire [7:0]s07_couplers_to_s07_regslice_AWLEN;
  wire [1:0]s07_couplers_to_s07_regslice_AWLOCK;
  wire [2:0]s07_couplers_to_s07_regslice_AWPROT;
  wire [3:0]s07_couplers_to_s07_regslice_AWQOS;
  wire s07_couplers_to_s07_regslice_AWREADY;
  wire [3:0]s07_couplers_to_s07_regslice_AWREGION;
  wire [2:0]s07_couplers_to_s07_regslice_AWSIZE;
  wire s07_couplers_to_s07_regslice_AWVALID;
  wire [0:0]s07_couplers_to_s07_regslice_BID;
  wire s07_couplers_to_s07_regslice_BREADY;
  wire [1:0]s07_couplers_to_s07_regslice_BRESP;
  wire s07_couplers_to_s07_regslice_BVALID;
  wire [255:0]s07_couplers_to_s07_regslice_WDATA;
  wire s07_couplers_to_s07_regslice_WLAST;
  wire s07_couplers_to_s07_regslice_WREADY;
  wire [31:0]s07_couplers_to_s07_regslice_WSTRB;
  wire s07_couplers_to_s07_regslice_WVALID;
  wire [63:0]s07_data_fifo_to_s07_couplers_AWADDR;
  wire [1:0]s07_data_fifo_to_s07_couplers_AWBURST;
  wire [3:0]s07_data_fifo_to_s07_couplers_AWCACHE;
  wire [0:0]s07_data_fifo_to_s07_couplers_AWID;
  wire [7:0]s07_data_fifo_to_s07_couplers_AWLEN;
  wire [0:0]s07_data_fifo_to_s07_couplers_AWLOCK;
  wire [2:0]s07_data_fifo_to_s07_couplers_AWPROT;
  wire [3:0]s07_data_fifo_to_s07_couplers_AWQOS;
  wire s07_data_fifo_to_s07_couplers_AWREADY;
  wire [2:0]s07_data_fifo_to_s07_couplers_AWSIZE;
  wire s07_data_fifo_to_s07_couplers_AWVALID;
  wire [4:0]s07_data_fifo_to_s07_couplers_BID;
  wire s07_data_fifo_to_s07_couplers_BREADY;
  wire [1:0]s07_data_fifo_to_s07_couplers_BRESP;
  wire s07_data_fifo_to_s07_couplers_BVALID;
  wire [255:0]s07_data_fifo_to_s07_couplers_WDATA;
  wire s07_data_fifo_to_s07_couplers_WLAST;
  wire s07_data_fifo_to_s07_couplers_WREADY;
  wire [31:0]s07_data_fifo_to_s07_couplers_WSTRB;
  wire s07_data_fifo_to_s07_couplers_WVALID;
  wire [63:0]s07_regslice_to_s07_data_fifo_AWADDR;
  wire [1:0]s07_regslice_to_s07_data_fifo_AWBURST;
  wire [3:0]s07_regslice_to_s07_data_fifo_AWCACHE;
  wire [0:0]s07_regslice_to_s07_data_fifo_AWID;
  wire [7:0]s07_regslice_to_s07_data_fifo_AWLEN;
  wire [0:0]s07_regslice_to_s07_data_fifo_AWLOCK;
  wire [2:0]s07_regslice_to_s07_data_fifo_AWPROT;
  wire [3:0]s07_regslice_to_s07_data_fifo_AWQOS;
  wire s07_regslice_to_s07_data_fifo_AWREADY;
  wire [3:0]s07_regslice_to_s07_data_fifo_AWREGION;
  wire [2:0]s07_regslice_to_s07_data_fifo_AWSIZE;
  wire s07_regslice_to_s07_data_fifo_AWVALID;
  wire [0:0]s07_regslice_to_s07_data_fifo_BID;
  wire s07_regslice_to_s07_data_fifo_BREADY;
  wire [1:0]s07_regslice_to_s07_data_fifo_BRESP;
  wire s07_regslice_to_s07_data_fifo_BVALID;
  wire [255:0]s07_regslice_to_s07_data_fifo_WDATA;
  wire s07_regslice_to_s07_data_fifo_WLAST;
  wire s07_regslice_to_s07_data_fifo_WREADY;
  wire [31:0]s07_regslice_to_s07_data_fifo_WSTRB;
  wire s07_regslice_to_s07_data_fifo_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[63:0] = s07_data_fifo_to_s07_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s07_data_fifo_to_s07_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s07_data_fifo_to_s07_couplers_AWCACHE;
  assign M_AXI_awid[0] = s07_data_fifo_to_s07_couplers_AWID;
  assign M_AXI_awlen[7:0] = s07_data_fifo_to_s07_couplers_AWLEN;
  assign M_AXI_awlock[0] = s07_data_fifo_to_s07_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s07_data_fifo_to_s07_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s07_data_fifo_to_s07_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s07_data_fifo_to_s07_couplers_AWSIZE;
  assign M_AXI_awvalid = s07_data_fifo_to_s07_couplers_AWVALID;
  assign M_AXI_bready = s07_data_fifo_to_s07_couplers_BREADY;
  assign M_AXI_wdata[255:0] = s07_data_fifo_to_s07_couplers_WDATA;
  assign M_AXI_wlast = s07_data_fifo_to_s07_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = s07_data_fifo_to_s07_couplers_WSTRB;
  assign M_AXI_wvalid = s07_data_fifo_to_s07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s07_couplers_to_s07_regslice_AWREADY;
  assign S_AXI_bid[0] = s07_couplers_to_s07_regslice_BID;
  assign S_AXI_bresp[1:0] = s07_couplers_to_s07_regslice_BRESP;
  assign S_AXI_bvalid = s07_couplers_to_s07_regslice_BVALID;
  assign S_AXI_wready = s07_couplers_to_s07_regslice_WREADY;
  assign s07_couplers_to_s07_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s07_couplers_to_s07_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s07_couplers_to_s07_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s07_couplers_to_s07_regslice_AWID = S_AXI_awid[0];
  assign s07_couplers_to_s07_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s07_couplers_to_s07_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s07_couplers_to_s07_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s07_couplers_to_s07_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s07_couplers_to_s07_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s07_couplers_to_s07_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s07_couplers_to_s07_regslice_AWVALID = S_AXI_awvalid;
  assign s07_couplers_to_s07_regslice_BREADY = S_AXI_bready;
  assign s07_couplers_to_s07_regslice_WDATA = S_AXI_wdata[255:0];
  assign s07_couplers_to_s07_regslice_WLAST = S_AXI_wlast;
  assign s07_couplers_to_s07_regslice_WSTRB = S_AXI_wstrb[31:0];
  assign s07_couplers_to_s07_regslice_WVALID = S_AXI_wvalid;
  assign s07_data_fifo_to_s07_couplers_AWREADY = M_AXI_awready;
  assign s07_data_fifo_to_s07_couplers_BID = M_AXI_bid[4:0];
  assign s07_data_fifo_to_s07_couplers_BRESP = M_AXI_bresp[1:0];
  assign s07_data_fifo_to_s07_couplers_BVALID = M_AXI_bvalid;
  assign s07_data_fifo_to_s07_couplers_WREADY = M_AXI_wready;
  vitis_design_s07_data_fifo_0 s07_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_awaddr(s07_data_fifo_to_s07_couplers_AWADDR),
        .m_axi_awburst(s07_data_fifo_to_s07_couplers_AWBURST),
        .m_axi_awcache(s07_data_fifo_to_s07_couplers_AWCACHE),
        .m_axi_awid(s07_data_fifo_to_s07_couplers_AWID),
        .m_axi_awlen(s07_data_fifo_to_s07_couplers_AWLEN),
        .m_axi_awlock(s07_data_fifo_to_s07_couplers_AWLOCK),
        .m_axi_awprot(s07_data_fifo_to_s07_couplers_AWPROT),
        .m_axi_awqos(s07_data_fifo_to_s07_couplers_AWQOS),
        .m_axi_awready(s07_data_fifo_to_s07_couplers_AWREADY),
        .m_axi_awsize(s07_data_fifo_to_s07_couplers_AWSIZE),
        .m_axi_awvalid(s07_data_fifo_to_s07_couplers_AWVALID),
        .m_axi_bid(s07_data_fifo_to_s07_couplers_BID[0]),
        .m_axi_bready(s07_data_fifo_to_s07_couplers_BREADY),
        .m_axi_bresp(s07_data_fifo_to_s07_couplers_BRESP),
        .m_axi_bvalid(s07_data_fifo_to_s07_couplers_BVALID),
        .m_axi_wdata(s07_data_fifo_to_s07_couplers_WDATA),
        .m_axi_wlast(s07_data_fifo_to_s07_couplers_WLAST),
        .m_axi_wready(s07_data_fifo_to_s07_couplers_WREADY),
        .m_axi_wstrb(s07_data_fifo_to_s07_couplers_WSTRB),
        .m_axi_wvalid(s07_data_fifo_to_s07_couplers_WVALID),
        .s_axi_awaddr(s07_regslice_to_s07_data_fifo_AWADDR),
        .s_axi_awburst(s07_regslice_to_s07_data_fifo_AWBURST),
        .s_axi_awcache(s07_regslice_to_s07_data_fifo_AWCACHE),
        .s_axi_awid(s07_regslice_to_s07_data_fifo_AWID),
        .s_axi_awlen(s07_regslice_to_s07_data_fifo_AWLEN),
        .s_axi_awlock(s07_regslice_to_s07_data_fifo_AWLOCK),
        .s_axi_awprot(s07_regslice_to_s07_data_fifo_AWPROT),
        .s_axi_awqos(s07_regslice_to_s07_data_fifo_AWQOS),
        .s_axi_awready(s07_regslice_to_s07_data_fifo_AWREADY),
        .s_axi_awregion(s07_regslice_to_s07_data_fifo_AWREGION),
        .s_axi_awsize(s07_regslice_to_s07_data_fifo_AWSIZE),
        .s_axi_awvalid(s07_regslice_to_s07_data_fifo_AWVALID),
        .s_axi_bid(s07_regslice_to_s07_data_fifo_BID),
        .s_axi_bready(s07_regslice_to_s07_data_fifo_BREADY),
        .s_axi_bresp(s07_regslice_to_s07_data_fifo_BRESP),
        .s_axi_bvalid(s07_regslice_to_s07_data_fifo_BVALID),
        .s_axi_wdata(s07_regslice_to_s07_data_fifo_WDATA),
        .s_axi_wlast(s07_regslice_to_s07_data_fifo_WLAST),
        .s_axi_wready(s07_regslice_to_s07_data_fifo_WREADY),
        .s_axi_wstrb(s07_regslice_to_s07_data_fifo_WSTRB),
        .s_axi_wvalid(s07_regslice_to_s07_data_fifo_WVALID));
  vitis_design_s07_regslice_0 s07_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s07_regslice_to_s07_data_fifo_AWADDR),
        .m_axi_awburst(s07_regslice_to_s07_data_fifo_AWBURST),
        .m_axi_awcache(s07_regslice_to_s07_data_fifo_AWCACHE),
        .m_axi_awid(s07_regslice_to_s07_data_fifo_AWID),
        .m_axi_awlen(s07_regslice_to_s07_data_fifo_AWLEN),
        .m_axi_awlock(s07_regslice_to_s07_data_fifo_AWLOCK),
        .m_axi_awprot(s07_regslice_to_s07_data_fifo_AWPROT),
        .m_axi_awqos(s07_regslice_to_s07_data_fifo_AWQOS),
        .m_axi_awready(s07_regslice_to_s07_data_fifo_AWREADY),
        .m_axi_awregion(s07_regslice_to_s07_data_fifo_AWREGION),
        .m_axi_awsize(s07_regslice_to_s07_data_fifo_AWSIZE),
        .m_axi_awvalid(s07_regslice_to_s07_data_fifo_AWVALID),
        .m_axi_bid(s07_regslice_to_s07_data_fifo_BID),
        .m_axi_bready(s07_regslice_to_s07_data_fifo_BREADY),
        .m_axi_bresp(s07_regslice_to_s07_data_fifo_BRESP),
        .m_axi_bvalid(s07_regslice_to_s07_data_fifo_BVALID),
        .m_axi_wdata(s07_regslice_to_s07_data_fifo_WDATA),
        .m_axi_wlast(s07_regslice_to_s07_data_fifo_WLAST),
        .m_axi_wready(s07_regslice_to_s07_data_fifo_WREADY),
        .m_axi_wstrb(s07_regslice_to_s07_data_fifo_WSTRB),
        .m_axi_wvalid(s07_regslice_to_s07_data_fifo_WVALID),
        .s_axi_awaddr(s07_couplers_to_s07_regslice_AWADDR),
        .s_axi_awburst(s07_couplers_to_s07_regslice_AWBURST),
        .s_axi_awcache(s07_couplers_to_s07_regslice_AWCACHE),
        .s_axi_awid(s07_couplers_to_s07_regslice_AWID),
        .s_axi_awlen(s07_couplers_to_s07_regslice_AWLEN),
        .s_axi_awlock(s07_couplers_to_s07_regslice_AWLOCK[0]),
        .s_axi_awprot(s07_couplers_to_s07_regslice_AWPROT),
        .s_axi_awqos(s07_couplers_to_s07_regslice_AWQOS),
        .s_axi_awready(s07_couplers_to_s07_regslice_AWREADY),
        .s_axi_awregion(s07_couplers_to_s07_regslice_AWREGION),
        .s_axi_awsize(s07_couplers_to_s07_regslice_AWSIZE),
        .s_axi_awvalid(s07_couplers_to_s07_regslice_AWVALID),
        .s_axi_bid(s07_couplers_to_s07_regslice_BID),
        .s_axi_bready(s07_couplers_to_s07_regslice_BREADY),
        .s_axi_bresp(s07_couplers_to_s07_regslice_BRESP),
        .s_axi_bvalid(s07_couplers_to_s07_regslice_BVALID),
        .s_axi_wdata(s07_couplers_to_s07_regslice_WDATA),
        .s_axi_wlast(s07_couplers_to_s07_regslice_WLAST),
        .s_axi_wready(s07_couplers_to_s07_regslice_WREADY),
        .s_axi_wstrb(s07_couplers_to_s07_regslice_WSTRB),
        .s_axi_wvalid(s07_couplers_to_s07_regslice_WVALID));
endmodule

module s08_couplers_imp_GU2EF1
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [4:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]s08_couplers_to_s08_regslice_AWADDR;
  wire [1:0]s08_couplers_to_s08_regslice_AWBURST;
  wire [3:0]s08_couplers_to_s08_regslice_AWCACHE;
  wire [0:0]s08_couplers_to_s08_regslice_AWID;
  wire [7:0]s08_couplers_to_s08_regslice_AWLEN;
  wire [1:0]s08_couplers_to_s08_regslice_AWLOCK;
  wire [2:0]s08_couplers_to_s08_regslice_AWPROT;
  wire [3:0]s08_couplers_to_s08_regslice_AWQOS;
  wire s08_couplers_to_s08_regslice_AWREADY;
  wire [3:0]s08_couplers_to_s08_regslice_AWREGION;
  wire [2:0]s08_couplers_to_s08_regslice_AWSIZE;
  wire s08_couplers_to_s08_regslice_AWVALID;
  wire [0:0]s08_couplers_to_s08_regslice_BID;
  wire s08_couplers_to_s08_regslice_BREADY;
  wire [1:0]s08_couplers_to_s08_regslice_BRESP;
  wire s08_couplers_to_s08_regslice_BVALID;
  wire [255:0]s08_couplers_to_s08_regslice_WDATA;
  wire s08_couplers_to_s08_regslice_WLAST;
  wire s08_couplers_to_s08_regslice_WREADY;
  wire [31:0]s08_couplers_to_s08_regslice_WSTRB;
  wire s08_couplers_to_s08_regslice_WVALID;
  wire [63:0]s08_data_fifo_to_s08_couplers_AWADDR;
  wire [1:0]s08_data_fifo_to_s08_couplers_AWBURST;
  wire [3:0]s08_data_fifo_to_s08_couplers_AWCACHE;
  wire [0:0]s08_data_fifo_to_s08_couplers_AWID;
  wire [7:0]s08_data_fifo_to_s08_couplers_AWLEN;
  wire [0:0]s08_data_fifo_to_s08_couplers_AWLOCK;
  wire [2:0]s08_data_fifo_to_s08_couplers_AWPROT;
  wire [3:0]s08_data_fifo_to_s08_couplers_AWQOS;
  wire s08_data_fifo_to_s08_couplers_AWREADY;
  wire [2:0]s08_data_fifo_to_s08_couplers_AWSIZE;
  wire s08_data_fifo_to_s08_couplers_AWVALID;
  wire [4:0]s08_data_fifo_to_s08_couplers_BID;
  wire s08_data_fifo_to_s08_couplers_BREADY;
  wire [1:0]s08_data_fifo_to_s08_couplers_BRESP;
  wire s08_data_fifo_to_s08_couplers_BVALID;
  wire [255:0]s08_data_fifo_to_s08_couplers_WDATA;
  wire s08_data_fifo_to_s08_couplers_WLAST;
  wire s08_data_fifo_to_s08_couplers_WREADY;
  wire [31:0]s08_data_fifo_to_s08_couplers_WSTRB;
  wire s08_data_fifo_to_s08_couplers_WVALID;
  wire [63:0]s08_regslice_to_s08_data_fifo_AWADDR;
  wire [1:0]s08_regslice_to_s08_data_fifo_AWBURST;
  wire [3:0]s08_regslice_to_s08_data_fifo_AWCACHE;
  wire [0:0]s08_regslice_to_s08_data_fifo_AWID;
  wire [7:0]s08_regslice_to_s08_data_fifo_AWLEN;
  wire [0:0]s08_regslice_to_s08_data_fifo_AWLOCK;
  wire [2:0]s08_regslice_to_s08_data_fifo_AWPROT;
  wire [3:0]s08_regslice_to_s08_data_fifo_AWQOS;
  wire s08_regslice_to_s08_data_fifo_AWREADY;
  wire [3:0]s08_regslice_to_s08_data_fifo_AWREGION;
  wire [2:0]s08_regslice_to_s08_data_fifo_AWSIZE;
  wire s08_regslice_to_s08_data_fifo_AWVALID;
  wire [0:0]s08_regslice_to_s08_data_fifo_BID;
  wire s08_regslice_to_s08_data_fifo_BREADY;
  wire [1:0]s08_regslice_to_s08_data_fifo_BRESP;
  wire s08_regslice_to_s08_data_fifo_BVALID;
  wire [255:0]s08_regslice_to_s08_data_fifo_WDATA;
  wire s08_regslice_to_s08_data_fifo_WLAST;
  wire s08_regslice_to_s08_data_fifo_WREADY;
  wire [31:0]s08_regslice_to_s08_data_fifo_WSTRB;
  wire s08_regslice_to_s08_data_fifo_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[63:0] = s08_data_fifo_to_s08_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s08_data_fifo_to_s08_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s08_data_fifo_to_s08_couplers_AWCACHE;
  assign M_AXI_awid[0] = s08_data_fifo_to_s08_couplers_AWID;
  assign M_AXI_awlen[7:0] = s08_data_fifo_to_s08_couplers_AWLEN;
  assign M_AXI_awlock[0] = s08_data_fifo_to_s08_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s08_data_fifo_to_s08_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s08_data_fifo_to_s08_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s08_data_fifo_to_s08_couplers_AWSIZE;
  assign M_AXI_awvalid = s08_data_fifo_to_s08_couplers_AWVALID;
  assign M_AXI_bready = s08_data_fifo_to_s08_couplers_BREADY;
  assign M_AXI_wdata[255:0] = s08_data_fifo_to_s08_couplers_WDATA;
  assign M_AXI_wlast = s08_data_fifo_to_s08_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = s08_data_fifo_to_s08_couplers_WSTRB;
  assign M_AXI_wvalid = s08_data_fifo_to_s08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s08_couplers_to_s08_regslice_AWREADY;
  assign S_AXI_bid[0] = s08_couplers_to_s08_regslice_BID;
  assign S_AXI_bresp[1:0] = s08_couplers_to_s08_regslice_BRESP;
  assign S_AXI_bvalid = s08_couplers_to_s08_regslice_BVALID;
  assign S_AXI_wready = s08_couplers_to_s08_regslice_WREADY;
  assign s08_couplers_to_s08_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s08_couplers_to_s08_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s08_couplers_to_s08_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s08_couplers_to_s08_regslice_AWID = S_AXI_awid[0];
  assign s08_couplers_to_s08_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s08_couplers_to_s08_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s08_couplers_to_s08_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s08_couplers_to_s08_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s08_couplers_to_s08_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s08_couplers_to_s08_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s08_couplers_to_s08_regslice_AWVALID = S_AXI_awvalid;
  assign s08_couplers_to_s08_regslice_BREADY = S_AXI_bready;
  assign s08_couplers_to_s08_regslice_WDATA = S_AXI_wdata[255:0];
  assign s08_couplers_to_s08_regslice_WLAST = S_AXI_wlast;
  assign s08_couplers_to_s08_regslice_WSTRB = S_AXI_wstrb[31:0];
  assign s08_couplers_to_s08_regslice_WVALID = S_AXI_wvalid;
  assign s08_data_fifo_to_s08_couplers_AWREADY = M_AXI_awready;
  assign s08_data_fifo_to_s08_couplers_BID = M_AXI_bid[4:0];
  assign s08_data_fifo_to_s08_couplers_BRESP = M_AXI_bresp[1:0];
  assign s08_data_fifo_to_s08_couplers_BVALID = M_AXI_bvalid;
  assign s08_data_fifo_to_s08_couplers_WREADY = M_AXI_wready;
  vitis_design_s08_data_fifo_0 s08_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_awaddr(s08_data_fifo_to_s08_couplers_AWADDR),
        .m_axi_awburst(s08_data_fifo_to_s08_couplers_AWBURST),
        .m_axi_awcache(s08_data_fifo_to_s08_couplers_AWCACHE),
        .m_axi_awid(s08_data_fifo_to_s08_couplers_AWID),
        .m_axi_awlen(s08_data_fifo_to_s08_couplers_AWLEN),
        .m_axi_awlock(s08_data_fifo_to_s08_couplers_AWLOCK),
        .m_axi_awprot(s08_data_fifo_to_s08_couplers_AWPROT),
        .m_axi_awqos(s08_data_fifo_to_s08_couplers_AWQOS),
        .m_axi_awready(s08_data_fifo_to_s08_couplers_AWREADY),
        .m_axi_awsize(s08_data_fifo_to_s08_couplers_AWSIZE),
        .m_axi_awvalid(s08_data_fifo_to_s08_couplers_AWVALID),
        .m_axi_bid(s08_data_fifo_to_s08_couplers_BID[0]),
        .m_axi_bready(s08_data_fifo_to_s08_couplers_BREADY),
        .m_axi_bresp(s08_data_fifo_to_s08_couplers_BRESP),
        .m_axi_bvalid(s08_data_fifo_to_s08_couplers_BVALID),
        .m_axi_wdata(s08_data_fifo_to_s08_couplers_WDATA),
        .m_axi_wlast(s08_data_fifo_to_s08_couplers_WLAST),
        .m_axi_wready(s08_data_fifo_to_s08_couplers_WREADY),
        .m_axi_wstrb(s08_data_fifo_to_s08_couplers_WSTRB),
        .m_axi_wvalid(s08_data_fifo_to_s08_couplers_WVALID),
        .s_axi_awaddr(s08_regslice_to_s08_data_fifo_AWADDR),
        .s_axi_awburst(s08_regslice_to_s08_data_fifo_AWBURST),
        .s_axi_awcache(s08_regslice_to_s08_data_fifo_AWCACHE),
        .s_axi_awid(s08_regslice_to_s08_data_fifo_AWID),
        .s_axi_awlen(s08_regslice_to_s08_data_fifo_AWLEN),
        .s_axi_awlock(s08_regslice_to_s08_data_fifo_AWLOCK),
        .s_axi_awprot(s08_regslice_to_s08_data_fifo_AWPROT),
        .s_axi_awqos(s08_regslice_to_s08_data_fifo_AWQOS),
        .s_axi_awready(s08_regslice_to_s08_data_fifo_AWREADY),
        .s_axi_awregion(s08_regslice_to_s08_data_fifo_AWREGION),
        .s_axi_awsize(s08_regslice_to_s08_data_fifo_AWSIZE),
        .s_axi_awvalid(s08_regslice_to_s08_data_fifo_AWVALID),
        .s_axi_bid(s08_regslice_to_s08_data_fifo_BID),
        .s_axi_bready(s08_regslice_to_s08_data_fifo_BREADY),
        .s_axi_bresp(s08_regslice_to_s08_data_fifo_BRESP),
        .s_axi_bvalid(s08_regslice_to_s08_data_fifo_BVALID),
        .s_axi_wdata(s08_regslice_to_s08_data_fifo_WDATA),
        .s_axi_wlast(s08_regslice_to_s08_data_fifo_WLAST),
        .s_axi_wready(s08_regslice_to_s08_data_fifo_WREADY),
        .s_axi_wstrb(s08_regslice_to_s08_data_fifo_WSTRB),
        .s_axi_wvalid(s08_regslice_to_s08_data_fifo_WVALID));
  vitis_design_s08_regslice_0 s08_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s08_regslice_to_s08_data_fifo_AWADDR),
        .m_axi_awburst(s08_regslice_to_s08_data_fifo_AWBURST),
        .m_axi_awcache(s08_regslice_to_s08_data_fifo_AWCACHE),
        .m_axi_awid(s08_regslice_to_s08_data_fifo_AWID),
        .m_axi_awlen(s08_regslice_to_s08_data_fifo_AWLEN),
        .m_axi_awlock(s08_regslice_to_s08_data_fifo_AWLOCK),
        .m_axi_awprot(s08_regslice_to_s08_data_fifo_AWPROT),
        .m_axi_awqos(s08_regslice_to_s08_data_fifo_AWQOS),
        .m_axi_awready(s08_regslice_to_s08_data_fifo_AWREADY),
        .m_axi_awregion(s08_regslice_to_s08_data_fifo_AWREGION),
        .m_axi_awsize(s08_regslice_to_s08_data_fifo_AWSIZE),
        .m_axi_awvalid(s08_regslice_to_s08_data_fifo_AWVALID),
        .m_axi_bid(s08_regslice_to_s08_data_fifo_BID),
        .m_axi_bready(s08_regslice_to_s08_data_fifo_BREADY),
        .m_axi_bresp(s08_regslice_to_s08_data_fifo_BRESP),
        .m_axi_bvalid(s08_regslice_to_s08_data_fifo_BVALID),
        .m_axi_wdata(s08_regslice_to_s08_data_fifo_WDATA),
        .m_axi_wlast(s08_regslice_to_s08_data_fifo_WLAST),
        .m_axi_wready(s08_regslice_to_s08_data_fifo_WREADY),
        .m_axi_wstrb(s08_regslice_to_s08_data_fifo_WSTRB),
        .m_axi_wvalid(s08_regslice_to_s08_data_fifo_WVALID),
        .s_axi_awaddr(s08_couplers_to_s08_regslice_AWADDR),
        .s_axi_awburst(s08_couplers_to_s08_regslice_AWBURST),
        .s_axi_awcache(s08_couplers_to_s08_regslice_AWCACHE),
        .s_axi_awid(s08_couplers_to_s08_regslice_AWID),
        .s_axi_awlen(s08_couplers_to_s08_regslice_AWLEN),
        .s_axi_awlock(s08_couplers_to_s08_regslice_AWLOCK[0]),
        .s_axi_awprot(s08_couplers_to_s08_regslice_AWPROT),
        .s_axi_awqos(s08_couplers_to_s08_regslice_AWQOS),
        .s_axi_awready(s08_couplers_to_s08_regslice_AWREADY),
        .s_axi_awregion(s08_couplers_to_s08_regslice_AWREGION),
        .s_axi_awsize(s08_couplers_to_s08_regslice_AWSIZE),
        .s_axi_awvalid(s08_couplers_to_s08_regslice_AWVALID),
        .s_axi_bid(s08_couplers_to_s08_regslice_BID),
        .s_axi_bready(s08_couplers_to_s08_regslice_BREADY),
        .s_axi_bresp(s08_couplers_to_s08_regslice_BRESP),
        .s_axi_bvalid(s08_couplers_to_s08_regslice_BVALID),
        .s_axi_wdata(s08_couplers_to_s08_regslice_WDATA),
        .s_axi_wlast(s08_couplers_to_s08_regslice_WLAST),
        .s_axi_wready(s08_couplers_to_s08_regslice_WREADY),
        .s_axi_wstrb(s08_couplers_to_s08_regslice_WSTRB),
        .s_axi_wvalid(s08_couplers_to_s08_regslice_WVALID));
endmodule

module s09_couplers_imp_C2OYPP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [255:0]M_AXI_rdata;
  input [4:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]s09_couplers_to_s09_regslice_ARADDR;
  wire [1:0]s09_couplers_to_s09_regslice_ARBURST;
  wire [3:0]s09_couplers_to_s09_regslice_ARCACHE;
  wire [0:0]s09_couplers_to_s09_regslice_ARID;
  wire [7:0]s09_couplers_to_s09_regslice_ARLEN;
  wire [1:0]s09_couplers_to_s09_regslice_ARLOCK;
  wire [2:0]s09_couplers_to_s09_regslice_ARPROT;
  wire [3:0]s09_couplers_to_s09_regslice_ARQOS;
  wire s09_couplers_to_s09_regslice_ARREADY;
  wire [3:0]s09_couplers_to_s09_regslice_ARREGION;
  wire [2:0]s09_couplers_to_s09_regslice_ARSIZE;
  wire s09_couplers_to_s09_regslice_ARVALID;
  wire [255:0]s09_couplers_to_s09_regslice_RDATA;
  wire [0:0]s09_couplers_to_s09_regslice_RID;
  wire s09_couplers_to_s09_regslice_RLAST;
  wire s09_couplers_to_s09_regslice_RREADY;
  wire [1:0]s09_couplers_to_s09_regslice_RRESP;
  wire s09_couplers_to_s09_regslice_RVALID;
  wire [63:0]s09_data_fifo_to_s09_couplers_ARADDR;
  wire [1:0]s09_data_fifo_to_s09_couplers_ARBURST;
  wire [3:0]s09_data_fifo_to_s09_couplers_ARCACHE;
  wire [0:0]s09_data_fifo_to_s09_couplers_ARID;
  wire [7:0]s09_data_fifo_to_s09_couplers_ARLEN;
  wire [0:0]s09_data_fifo_to_s09_couplers_ARLOCK;
  wire [2:0]s09_data_fifo_to_s09_couplers_ARPROT;
  wire [3:0]s09_data_fifo_to_s09_couplers_ARQOS;
  wire s09_data_fifo_to_s09_couplers_ARREADY;
  wire [2:0]s09_data_fifo_to_s09_couplers_ARSIZE;
  wire s09_data_fifo_to_s09_couplers_ARVALID;
  wire [255:0]s09_data_fifo_to_s09_couplers_RDATA;
  wire [4:0]s09_data_fifo_to_s09_couplers_RID;
  wire s09_data_fifo_to_s09_couplers_RLAST;
  wire s09_data_fifo_to_s09_couplers_RREADY;
  wire [1:0]s09_data_fifo_to_s09_couplers_RRESP;
  wire s09_data_fifo_to_s09_couplers_RVALID;
  wire [63:0]s09_regslice_to_s09_data_fifo_ARADDR;
  wire [1:0]s09_regslice_to_s09_data_fifo_ARBURST;
  wire [3:0]s09_regslice_to_s09_data_fifo_ARCACHE;
  wire [0:0]s09_regslice_to_s09_data_fifo_ARID;
  wire [7:0]s09_regslice_to_s09_data_fifo_ARLEN;
  wire [0:0]s09_regslice_to_s09_data_fifo_ARLOCK;
  wire [2:0]s09_regslice_to_s09_data_fifo_ARPROT;
  wire [3:0]s09_regslice_to_s09_data_fifo_ARQOS;
  wire s09_regslice_to_s09_data_fifo_ARREADY;
  wire [3:0]s09_regslice_to_s09_data_fifo_ARREGION;
  wire [2:0]s09_regslice_to_s09_data_fifo_ARSIZE;
  wire s09_regslice_to_s09_data_fifo_ARVALID;
  wire [255:0]s09_regslice_to_s09_data_fifo_RDATA;
  wire [0:0]s09_regslice_to_s09_data_fifo_RID;
  wire s09_regslice_to_s09_data_fifo_RLAST;
  wire s09_regslice_to_s09_data_fifo_RREADY;
  wire [1:0]s09_regslice_to_s09_data_fifo_RRESP;
  wire s09_regslice_to_s09_data_fifo_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = s09_data_fifo_to_s09_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s09_data_fifo_to_s09_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s09_data_fifo_to_s09_couplers_ARCACHE;
  assign M_AXI_arid[0] = s09_data_fifo_to_s09_couplers_ARID;
  assign M_AXI_arlen[7:0] = s09_data_fifo_to_s09_couplers_ARLEN;
  assign M_AXI_arlock[0] = s09_data_fifo_to_s09_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s09_data_fifo_to_s09_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s09_data_fifo_to_s09_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s09_data_fifo_to_s09_couplers_ARSIZE;
  assign M_AXI_arvalid = s09_data_fifo_to_s09_couplers_ARVALID;
  assign M_AXI_rready = s09_data_fifo_to_s09_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s09_couplers_to_s09_regslice_ARREADY;
  assign S_AXI_rdata[255:0] = s09_couplers_to_s09_regslice_RDATA;
  assign S_AXI_rid[0] = s09_couplers_to_s09_regslice_RID;
  assign S_AXI_rlast = s09_couplers_to_s09_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s09_couplers_to_s09_regslice_RRESP;
  assign S_AXI_rvalid = s09_couplers_to_s09_regslice_RVALID;
  assign s09_couplers_to_s09_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s09_couplers_to_s09_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s09_couplers_to_s09_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s09_couplers_to_s09_regslice_ARID = S_AXI_arid[0];
  assign s09_couplers_to_s09_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s09_couplers_to_s09_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s09_couplers_to_s09_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s09_couplers_to_s09_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s09_couplers_to_s09_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s09_couplers_to_s09_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s09_couplers_to_s09_regslice_ARVALID = S_AXI_arvalid;
  assign s09_couplers_to_s09_regslice_RREADY = S_AXI_rready;
  assign s09_data_fifo_to_s09_couplers_ARREADY = M_AXI_arready;
  assign s09_data_fifo_to_s09_couplers_RDATA = M_AXI_rdata[255:0];
  assign s09_data_fifo_to_s09_couplers_RID = M_AXI_rid[4:0];
  assign s09_data_fifo_to_s09_couplers_RLAST = M_AXI_rlast;
  assign s09_data_fifo_to_s09_couplers_RRESP = M_AXI_rresp[1:0];
  assign s09_data_fifo_to_s09_couplers_RVALID = M_AXI_rvalid;
  vitis_design_s09_data_fifo_0 s09_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s09_data_fifo_to_s09_couplers_ARADDR),
        .m_axi_arburst(s09_data_fifo_to_s09_couplers_ARBURST),
        .m_axi_arcache(s09_data_fifo_to_s09_couplers_ARCACHE),
        .m_axi_arid(s09_data_fifo_to_s09_couplers_ARID),
        .m_axi_arlen(s09_data_fifo_to_s09_couplers_ARLEN),
        .m_axi_arlock(s09_data_fifo_to_s09_couplers_ARLOCK),
        .m_axi_arprot(s09_data_fifo_to_s09_couplers_ARPROT),
        .m_axi_arqos(s09_data_fifo_to_s09_couplers_ARQOS),
        .m_axi_arready(s09_data_fifo_to_s09_couplers_ARREADY),
        .m_axi_arsize(s09_data_fifo_to_s09_couplers_ARSIZE),
        .m_axi_arvalid(s09_data_fifo_to_s09_couplers_ARVALID),
        .m_axi_rdata(s09_data_fifo_to_s09_couplers_RDATA),
        .m_axi_rid(s09_data_fifo_to_s09_couplers_RID[0]),
        .m_axi_rlast(s09_data_fifo_to_s09_couplers_RLAST),
        .m_axi_rready(s09_data_fifo_to_s09_couplers_RREADY),
        .m_axi_rresp(s09_data_fifo_to_s09_couplers_RRESP),
        .m_axi_rvalid(s09_data_fifo_to_s09_couplers_RVALID),
        .s_axi_araddr(s09_regslice_to_s09_data_fifo_ARADDR),
        .s_axi_arburst(s09_regslice_to_s09_data_fifo_ARBURST),
        .s_axi_arcache(s09_regslice_to_s09_data_fifo_ARCACHE),
        .s_axi_arid(s09_regslice_to_s09_data_fifo_ARID),
        .s_axi_arlen(s09_regslice_to_s09_data_fifo_ARLEN),
        .s_axi_arlock(s09_regslice_to_s09_data_fifo_ARLOCK),
        .s_axi_arprot(s09_regslice_to_s09_data_fifo_ARPROT),
        .s_axi_arqos(s09_regslice_to_s09_data_fifo_ARQOS),
        .s_axi_arready(s09_regslice_to_s09_data_fifo_ARREADY),
        .s_axi_arregion(s09_regslice_to_s09_data_fifo_ARREGION),
        .s_axi_arsize(s09_regslice_to_s09_data_fifo_ARSIZE),
        .s_axi_arvalid(s09_regslice_to_s09_data_fifo_ARVALID),
        .s_axi_rdata(s09_regslice_to_s09_data_fifo_RDATA),
        .s_axi_rid(s09_regslice_to_s09_data_fifo_RID),
        .s_axi_rlast(s09_regslice_to_s09_data_fifo_RLAST),
        .s_axi_rready(s09_regslice_to_s09_data_fifo_RREADY),
        .s_axi_rresp(s09_regslice_to_s09_data_fifo_RRESP),
        .s_axi_rvalid(s09_regslice_to_s09_data_fifo_RVALID));
  vitis_design_s09_regslice_0 s09_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s09_regslice_to_s09_data_fifo_ARADDR),
        .m_axi_arburst(s09_regslice_to_s09_data_fifo_ARBURST),
        .m_axi_arcache(s09_regslice_to_s09_data_fifo_ARCACHE),
        .m_axi_arid(s09_regslice_to_s09_data_fifo_ARID),
        .m_axi_arlen(s09_regslice_to_s09_data_fifo_ARLEN),
        .m_axi_arlock(s09_regslice_to_s09_data_fifo_ARLOCK),
        .m_axi_arprot(s09_regslice_to_s09_data_fifo_ARPROT),
        .m_axi_arqos(s09_regslice_to_s09_data_fifo_ARQOS),
        .m_axi_arready(s09_regslice_to_s09_data_fifo_ARREADY),
        .m_axi_arregion(s09_regslice_to_s09_data_fifo_ARREGION),
        .m_axi_arsize(s09_regslice_to_s09_data_fifo_ARSIZE),
        .m_axi_arvalid(s09_regslice_to_s09_data_fifo_ARVALID),
        .m_axi_rdata(s09_regslice_to_s09_data_fifo_RDATA),
        .m_axi_rid(s09_regslice_to_s09_data_fifo_RID),
        .m_axi_rlast(s09_regslice_to_s09_data_fifo_RLAST),
        .m_axi_rready(s09_regslice_to_s09_data_fifo_RREADY),
        .m_axi_rresp(s09_regslice_to_s09_data_fifo_RRESP),
        .m_axi_rvalid(s09_regslice_to_s09_data_fifo_RVALID),
        .s_axi_araddr(s09_couplers_to_s09_regslice_ARADDR),
        .s_axi_arburst(s09_couplers_to_s09_regslice_ARBURST),
        .s_axi_arcache(s09_couplers_to_s09_regslice_ARCACHE),
        .s_axi_arid(s09_couplers_to_s09_regslice_ARID),
        .s_axi_arlen(s09_couplers_to_s09_regslice_ARLEN),
        .s_axi_arlock(s09_couplers_to_s09_regslice_ARLOCK[0]),
        .s_axi_arprot(s09_couplers_to_s09_regslice_ARPROT),
        .s_axi_arqos(s09_couplers_to_s09_regslice_ARQOS),
        .s_axi_arready(s09_couplers_to_s09_regslice_ARREADY),
        .s_axi_arregion(s09_couplers_to_s09_regslice_ARREGION),
        .s_axi_arsize(s09_couplers_to_s09_regslice_ARSIZE),
        .s_axi_arvalid(s09_couplers_to_s09_regslice_ARVALID),
        .s_axi_rdata(s09_couplers_to_s09_regslice_RDATA),
        .s_axi_rid(s09_couplers_to_s09_regslice_RID),
        .s_axi_rlast(s09_couplers_to_s09_regslice_RLAST),
        .s_axi_rready(s09_couplers_to_s09_regslice_RREADY),
        .s_axi_rresp(s09_couplers_to_s09_regslice_RRESP),
        .s_axi_rvalid(s09_couplers_to_s09_regslice_RVALID));
endmodule

module s10_couplers_imp_8HR4BT
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [4:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]s10_couplers_to_s10_regslice_AWADDR;
  wire [1:0]s10_couplers_to_s10_regslice_AWBURST;
  wire [3:0]s10_couplers_to_s10_regslice_AWCACHE;
  wire [0:0]s10_couplers_to_s10_regslice_AWID;
  wire [7:0]s10_couplers_to_s10_regslice_AWLEN;
  wire [1:0]s10_couplers_to_s10_regslice_AWLOCK;
  wire [2:0]s10_couplers_to_s10_regslice_AWPROT;
  wire [3:0]s10_couplers_to_s10_regslice_AWQOS;
  wire s10_couplers_to_s10_regslice_AWREADY;
  wire [3:0]s10_couplers_to_s10_regslice_AWREGION;
  wire [2:0]s10_couplers_to_s10_regslice_AWSIZE;
  wire s10_couplers_to_s10_regslice_AWVALID;
  wire [0:0]s10_couplers_to_s10_regslice_BID;
  wire s10_couplers_to_s10_regslice_BREADY;
  wire [1:0]s10_couplers_to_s10_regslice_BRESP;
  wire s10_couplers_to_s10_regslice_BVALID;
  wire [255:0]s10_couplers_to_s10_regslice_WDATA;
  wire s10_couplers_to_s10_regslice_WLAST;
  wire s10_couplers_to_s10_regslice_WREADY;
  wire [31:0]s10_couplers_to_s10_regslice_WSTRB;
  wire s10_couplers_to_s10_regslice_WVALID;
  wire [63:0]s10_data_fifo_to_s10_couplers_AWADDR;
  wire [1:0]s10_data_fifo_to_s10_couplers_AWBURST;
  wire [3:0]s10_data_fifo_to_s10_couplers_AWCACHE;
  wire [0:0]s10_data_fifo_to_s10_couplers_AWID;
  wire [7:0]s10_data_fifo_to_s10_couplers_AWLEN;
  wire [0:0]s10_data_fifo_to_s10_couplers_AWLOCK;
  wire [2:0]s10_data_fifo_to_s10_couplers_AWPROT;
  wire [3:0]s10_data_fifo_to_s10_couplers_AWQOS;
  wire s10_data_fifo_to_s10_couplers_AWREADY;
  wire [2:0]s10_data_fifo_to_s10_couplers_AWSIZE;
  wire s10_data_fifo_to_s10_couplers_AWVALID;
  wire [4:0]s10_data_fifo_to_s10_couplers_BID;
  wire s10_data_fifo_to_s10_couplers_BREADY;
  wire [1:0]s10_data_fifo_to_s10_couplers_BRESP;
  wire s10_data_fifo_to_s10_couplers_BVALID;
  wire [255:0]s10_data_fifo_to_s10_couplers_WDATA;
  wire s10_data_fifo_to_s10_couplers_WLAST;
  wire s10_data_fifo_to_s10_couplers_WREADY;
  wire [31:0]s10_data_fifo_to_s10_couplers_WSTRB;
  wire s10_data_fifo_to_s10_couplers_WVALID;
  wire [63:0]s10_regslice_to_s10_data_fifo_AWADDR;
  wire [1:0]s10_regslice_to_s10_data_fifo_AWBURST;
  wire [3:0]s10_regslice_to_s10_data_fifo_AWCACHE;
  wire [0:0]s10_regslice_to_s10_data_fifo_AWID;
  wire [7:0]s10_regslice_to_s10_data_fifo_AWLEN;
  wire [0:0]s10_regslice_to_s10_data_fifo_AWLOCK;
  wire [2:0]s10_regslice_to_s10_data_fifo_AWPROT;
  wire [3:0]s10_regslice_to_s10_data_fifo_AWQOS;
  wire s10_regslice_to_s10_data_fifo_AWREADY;
  wire [3:0]s10_regslice_to_s10_data_fifo_AWREGION;
  wire [2:0]s10_regslice_to_s10_data_fifo_AWSIZE;
  wire s10_regslice_to_s10_data_fifo_AWVALID;
  wire [0:0]s10_regslice_to_s10_data_fifo_BID;
  wire s10_regslice_to_s10_data_fifo_BREADY;
  wire [1:0]s10_regslice_to_s10_data_fifo_BRESP;
  wire s10_regslice_to_s10_data_fifo_BVALID;
  wire [255:0]s10_regslice_to_s10_data_fifo_WDATA;
  wire s10_regslice_to_s10_data_fifo_WLAST;
  wire s10_regslice_to_s10_data_fifo_WREADY;
  wire [31:0]s10_regslice_to_s10_data_fifo_WSTRB;
  wire s10_regslice_to_s10_data_fifo_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[63:0] = s10_data_fifo_to_s10_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s10_data_fifo_to_s10_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s10_data_fifo_to_s10_couplers_AWCACHE;
  assign M_AXI_awid[0] = s10_data_fifo_to_s10_couplers_AWID;
  assign M_AXI_awlen[7:0] = s10_data_fifo_to_s10_couplers_AWLEN;
  assign M_AXI_awlock[0] = s10_data_fifo_to_s10_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s10_data_fifo_to_s10_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s10_data_fifo_to_s10_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s10_data_fifo_to_s10_couplers_AWSIZE;
  assign M_AXI_awvalid = s10_data_fifo_to_s10_couplers_AWVALID;
  assign M_AXI_bready = s10_data_fifo_to_s10_couplers_BREADY;
  assign M_AXI_wdata[255:0] = s10_data_fifo_to_s10_couplers_WDATA;
  assign M_AXI_wlast = s10_data_fifo_to_s10_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = s10_data_fifo_to_s10_couplers_WSTRB;
  assign M_AXI_wvalid = s10_data_fifo_to_s10_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s10_couplers_to_s10_regslice_AWREADY;
  assign S_AXI_bid[0] = s10_couplers_to_s10_regslice_BID;
  assign S_AXI_bresp[1:0] = s10_couplers_to_s10_regslice_BRESP;
  assign S_AXI_bvalid = s10_couplers_to_s10_regslice_BVALID;
  assign S_AXI_wready = s10_couplers_to_s10_regslice_WREADY;
  assign s10_couplers_to_s10_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s10_couplers_to_s10_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s10_couplers_to_s10_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s10_couplers_to_s10_regslice_AWID = S_AXI_awid[0];
  assign s10_couplers_to_s10_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s10_couplers_to_s10_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s10_couplers_to_s10_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s10_couplers_to_s10_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s10_couplers_to_s10_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s10_couplers_to_s10_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s10_couplers_to_s10_regslice_AWVALID = S_AXI_awvalid;
  assign s10_couplers_to_s10_regslice_BREADY = S_AXI_bready;
  assign s10_couplers_to_s10_regslice_WDATA = S_AXI_wdata[255:0];
  assign s10_couplers_to_s10_regslice_WLAST = S_AXI_wlast;
  assign s10_couplers_to_s10_regslice_WSTRB = S_AXI_wstrb[31:0];
  assign s10_couplers_to_s10_regslice_WVALID = S_AXI_wvalid;
  assign s10_data_fifo_to_s10_couplers_AWREADY = M_AXI_awready;
  assign s10_data_fifo_to_s10_couplers_BID = M_AXI_bid[4:0];
  assign s10_data_fifo_to_s10_couplers_BRESP = M_AXI_bresp[1:0];
  assign s10_data_fifo_to_s10_couplers_BVALID = M_AXI_bvalid;
  assign s10_data_fifo_to_s10_couplers_WREADY = M_AXI_wready;
  vitis_design_s10_data_fifo_0 s10_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_awaddr(s10_data_fifo_to_s10_couplers_AWADDR),
        .m_axi_awburst(s10_data_fifo_to_s10_couplers_AWBURST),
        .m_axi_awcache(s10_data_fifo_to_s10_couplers_AWCACHE),
        .m_axi_awid(s10_data_fifo_to_s10_couplers_AWID),
        .m_axi_awlen(s10_data_fifo_to_s10_couplers_AWLEN),
        .m_axi_awlock(s10_data_fifo_to_s10_couplers_AWLOCK),
        .m_axi_awprot(s10_data_fifo_to_s10_couplers_AWPROT),
        .m_axi_awqos(s10_data_fifo_to_s10_couplers_AWQOS),
        .m_axi_awready(s10_data_fifo_to_s10_couplers_AWREADY),
        .m_axi_awsize(s10_data_fifo_to_s10_couplers_AWSIZE),
        .m_axi_awvalid(s10_data_fifo_to_s10_couplers_AWVALID),
        .m_axi_bid(s10_data_fifo_to_s10_couplers_BID[0]),
        .m_axi_bready(s10_data_fifo_to_s10_couplers_BREADY),
        .m_axi_bresp(s10_data_fifo_to_s10_couplers_BRESP),
        .m_axi_bvalid(s10_data_fifo_to_s10_couplers_BVALID),
        .m_axi_wdata(s10_data_fifo_to_s10_couplers_WDATA),
        .m_axi_wlast(s10_data_fifo_to_s10_couplers_WLAST),
        .m_axi_wready(s10_data_fifo_to_s10_couplers_WREADY),
        .m_axi_wstrb(s10_data_fifo_to_s10_couplers_WSTRB),
        .m_axi_wvalid(s10_data_fifo_to_s10_couplers_WVALID),
        .s_axi_awaddr(s10_regslice_to_s10_data_fifo_AWADDR),
        .s_axi_awburst(s10_regslice_to_s10_data_fifo_AWBURST),
        .s_axi_awcache(s10_regslice_to_s10_data_fifo_AWCACHE),
        .s_axi_awid(s10_regslice_to_s10_data_fifo_AWID),
        .s_axi_awlen(s10_regslice_to_s10_data_fifo_AWLEN),
        .s_axi_awlock(s10_regslice_to_s10_data_fifo_AWLOCK),
        .s_axi_awprot(s10_regslice_to_s10_data_fifo_AWPROT),
        .s_axi_awqos(s10_regslice_to_s10_data_fifo_AWQOS),
        .s_axi_awready(s10_regslice_to_s10_data_fifo_AWREADY),
        .s_axi_awregion(s10_regslice_to_s10_data_fifo_AWREGION),
        .s_axi_awsize(s10_regslice_to_s10_data_fifo_AWSIZE),
        .s_axi_awvalid(s10_regslice_to_s10_data_fifo_AWVALID),
        .s_axi_bid(s10_regslice_to_s10_data_fifo_BID),
        .s_axi_bready(s10_regslice_to_s10_data_fifo_BREADY),
        .s_axi_bresp(s10_regslice_to_s10_data_fifo_BRESP),
        .s_axi_bvalid(s10_regslice_to_s10_data_fifo_BVALID),
        .s_axi_wdata(s10_regslice_to_s10_data_fifo_WDATA),
        .s_axi_wlast(s10_regslice_to_s10_data_fifo_WLAST),
        .s_axi_wready(s10_regslice_to_s10_data_fifo_WREADY),
        .s_axi_wstrb(s10_regslice_to_s10_data_fifo_WSTRB),
        .s_axi_wvalid(s10_regslice_to_s10_data_fifo_WVALID));
  vitis_design_s10_regslice_0 s10_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s10_regslice_to_s10_data_fifo_AWADDR),
        .m_axi_awburst(s10_regslice_to_s10_data_fifo_AWBURST),
        .m_axi_awcache(s10_regslice_to_s10_data_fifo_AWCACHE),
        .m_axi_awid(s10_regslice_to_s10_data_fifo_AWID),
        .m_axi_awlen(s10_regslice_to_s10_data_fifo_AWLEN),
        .m_axi_awlock(s10_regslice_to_s10_data_fifo_AWLOCK),
        .m_axi_awprot(s10_regslice_to_s10_data_fifo_AWPROT),
        .m_axi_awqos(s10_regslice_to_s10_data_fifo_AWQOS),
        .m_axi_awready(s10_regslice_to_s10_data_fifo_AWREADY),
        .m_axi_awregion(s10_regslice_to_s10_data_fifo_AWREGION),
        .m_axi_awsize(s10_regslice_to_s10_data_fifo_AWSIZE),
        .m_axi_awvalid(s10_regslice_to_s10_data_fifo_AWVALID),
        .m_axi_bid(s10_regslice_to_s10_data_fifo_BID),
        .m_axi_bready(s10_regslice_to_s10_data_fifo_BREADY),
        .m_axi_bresp(s10_regslice_to_s10_data_fifo_BRESP),
        .m_axi_bvalid(s10_regslice_to_s10_data_fifo_BVALID),
        .m_axi_wdata(s10_regslice_to_s10_data_fifo_WDATA),
        .m_axi_wlast(s10_regslice_to_s10_data_fifo_WLAST),
        .m_axi_wready(s10_regslice_to_s10_data_fifo_WREADY),
        .m_axi_wstrb(s10_regslice_to_s10_data_fifo_WSTRB),
        .m_axi_wvalid(s10_regslice_to_s10_data_fifo_WVALID),
        .s_axi_awaddr(s10_couplers_to_s10_regslice_AWADDR),
        .s_axi_awburst(s10_couplers_to_s10_regslice_AWBURST),
        .s_axi_awcache(s10_couplers_to_s10_regslice_AWCACHE),
        .s_axi_awid(s10_couplers_to_s10_regslice_AWID),
        .s_axi_awlen(s10_couplers_to_s10_regslice_AWLEN),
        .s_axi_awlock(s10_couplers_to_s10_regslice_AWLOCK[0]),
        .s_axi_awprot(s10_couplers_to_s10_regslice_AWPROT),
        .s_axi_awqos(s10_couplers_to_s10_regslice_AWQOS),
        .s_axi_awready(s10_couplers_to_s10_regslice_AWREADY),
        .s_axi_awregion(s10_couplers_to_s10_regslice_AWREGION),
        .s_axi_awsize(s10_couplers_to_s10_regslice_AWSIZE),
        .s_axi_awvalid(s10_couplers_to_s10_regslice_AWVALID),
        .s_axi_bid(s10_couplers_to_s10_regslice_BID),
        .s_axi_bready(s10_couplers_to_s10_regslice_BREADY),
        .s_axi_bresp(s10_couplers_to_s10_regslice_BRESP),
        .s_axi_bvalid(s10_couplers_to_s10_regslice_BVALID),
        .s_axi_wdata(s10_couplers_to_s10_regslice_WDATA),
        .s_axi_wlast(s10_couplers_to_s10_regslice_WLAST),
        .s_axi_wready(s10_couplers_to_s10_regslice_WREADY),
        .s_axi_wstrb(s10_couplers_to_s10_regslice_WSTRB),
        .s_axi_wvalid(s10_couplers_to_s10_regslice_WVALID));
endmodule

module s11_couplers_imp_2OXV1L
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [255:0]M_AXI_rdata;
  input [4:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]s11_couplers_to_s11_regslice_ARADDR;
  wire [1:0]s11_couplers_to_s11_regslice_ARBURST;
  wire [3:0]s11_couplers_to_s11_regslice_ARCACHE;
  wire [0:0]s11_couplers_to_s11_regslice_ARID;
  wire [7:0]s11_couplers_to_s11_regslice_ARLEN;
  wire [1:0]s11_couplers_to_s11_regslice_ARLOCK;
  wire [2:0]s11_couplers_to_s11_regslice_ARPROT;
  wire [3:0]s11_couplers_to_s11_regslice_ARQOS;
  wire s11_couplers_to_s11_regslice_ARREADY;
  wire [3:0]s11_couplers_to_s11_regslice_ARREGION;
  wire [2:0]s11_couplers_to_s11_regslice_ARSIZE;
  wire s11_couplers_to_s11_regslice_ARVALID;
  wire [255:0]s11_couplers_to_s11_regslice_RDATA;
  wire [0:0]s11_couplers_to_s11_regslice_RID;
  wire s11_couplers_to_s11_regslice_RLAST;
  wire s11_couplers_to_s11_regslice_RREADY;
  wire [1:0]s11_couplers_to_s11_regslice_RRESP;
  wire s11_couplers_to_s11_regslice_RVALID;
  wire [63:0]s11_data_fifo_to_s11_couplers_ARADDR;
  wire [1:0]s11_data_fifo_to_s11_couplers_ARBURST;
  wire [3:0]s11_data_fifo_to_s11_couplers_ARCACHE;
  wire [0:0]s11_data_fifo_to_s11_couplers_ARID;
  wire [7:0]s11_data_fifo_to_s11_couplers_ARLEN;
  wire [0:0]s11_data_fifo_to_s11_couplers_ARLOCK;
  wire [2:0]s11_data_fifo_to_s11_couplers_ARPROT;
  wire [3:0]s11_data_fifo_to_s11_couplers_ARQOS;
  wire s11_data_fifo_to_s11_couplers_ARREADY;
  wire [2:0]s11_data_fifo_to_s11_couplers_ARSIZE;
  wire s11_data_fifo_to_s11_couplers_ARVALID;
  wire [255:0]s11_data_fifo_to_s11_couplers_RDATA;
  wire [4:0]s11_data_fifo_to_s11_couplers_RID;
  wire s11_data_fifo_to_s11_couplers_RLAST;
  wire s11_data_fifo_to_s11_couplers_RREADY;
  wire [1:0]s11_data_fifo_to_s11_couplers_RRESP;
  wire s11_data_fifo_to_s11_couplers_RVALID;
  wire [63:0]s11_regslice_to_s11_data_fifo_ARADDR;
  wire [1:0]s11_regslice_to_s11_data_fifo_ARBURST;
  wire [3:0]s11_regslice_to_s11_data_fifo_ARCACHE;
  wire [0:0]s11_regslice_to_s11_data_fifo_ARID;
  wire [7:0]s11_regslice_to_s11_data_fifo_ARLEN;
  wire [0:0]s11_regslice_to_s11_data_fifo_ARLOCK;
  wire [2:0]s11_regslice_to_s11_data_fifo_ARPROT;
  wire [3:0]s11_regslice_to_s11_data_fifo_ARQOS;
  wire s11_regslice_to_s11_data_fifo_ARREADY;
  wire [3:0]s11_regslice_to_s11_data_fifo_ARREGION;
  wire [2:0]s11_regslice_to_s11_data_fifo_ARSIZE;
  wire s11_regslice_to_s11_data_fifo_ARVALID;
  wire [255:0]s11_regslice_to_s11_data_fifo_RDATA;
  wire [0:0]s11_regslice_to_s11_data_fifo_RID;
  wire s11_regslice_to_s11_data_fifo_RLAST;
  wire s11_regslice_to_s11_data_fifo_RREADY;
  wire [1:0]s11_regslice_to_s11_data_fifo_RRESP;
  wire s11_regslice_to_s11_data_fifo_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = s11_data_fifo_to_s11_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s11_data_fifo_to_s11_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s11_data_fifo_to_s11_couplers_ARCACHE;
  assign M_AXI_arid[0] = s11_data_fifo_to_s11_couplers_ARID;
  assign M_AXI_arlen[7:0] = s11_data_fifo_to_s11_couplers_ARLEN;
  assign M_AXI_arlock[0] = s11_data_fifo_to_s11_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s11_data_fifo_to_s11_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s11_data_fifo_to_s11_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s11_data_fifo_to_s11_couplers_ARSIZE;
  assign M_AXI_arvalid = s11_data_fifo_to_s11_couplers_ARVALID;
  assign M_AXI_rready = s11_data_fifo_to_s11_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s11_couplers_to_s11_regslice_ARREADY;
  assign S_AXI_rdata[255:0] = s11_couplers_to_s11_regslice_RDATA;
  assign S_AXI_rid[0] = s11_couplers_to_s11_regslice_RID;
  assign S_AXI_rlast = s11_couplers_to_s11_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s11_couplers_to_s11_regslice_RRESP;
  assign S_AXI_rvalid = s11_couplers_to_s11_regslice_RVALID;
  assign s11_couplers_to_s11_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s11_couplers_to_s11_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s11_couplers_to_s11_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s11_couplers_to_s11_regslice_ARID = S_AXI_arid[0];
  assign s11_couplers_to_s11_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s11_couplers_to_s11_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s11_couplers_to_s11_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s11_couplers_to_s11_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s11_couplers_to_s11_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s11_couplers_to_s11_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s11_couplers_to_s11_regslice_ARVALID = S_AXI_arvalid;
  assign s11_couplers_to_s11_regslice_RREADY = S_AXI_rready;
  assign s11_data_fifo_to_s11_couplers_ARREADY = M_AXI_arready;
  assign s11_data_fifo_to_s11_couplers_RDATA = M_AXI_rdata[255:0];
  assign s11_data_fifo_to_s11_couplers_RID = M_AXI_rid[4:0];
  assign s11_data_fifo_to_s11_couplers_RLAST = M_AXI_rlast;
  assign s11_data_fifo_to_s11_couplers_RRESP = M_AXI_rresp[1:0];
  assign s11_data_fifo_to_s11_couplers_RVALID = M_AXI_rvalid;
  vitis_design_s11_data_fifo_0 s11_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s11_data_fifo_to_s11_couplers_ARADDR),
        .m_axi_arburst(s11_data_fifo_to_s11_couplers_ARBURST),
        .m_axi_arcache(s11_data_fifo_to_s11_couplers_ARCACHE),
        .m_axi_arid(s11_data_fifo_to_s11_couplers_ARID),
        .m_axi_arlen(s11_data_fifo_to_s11_couplers_ARLEN),
        .m_axi_arlock(s11_data_fifo_to_s11_couplers_ARLOCK),
        .m_axi_arprot(s11_data_fifo_to_s11_couplers_ARPROT),
        .m_axi_arqos(s11_data_fifo_to_s11_couplers_ARQOS),
        .m_axi_arready(s11_data_fifo_to_s11_couplers_ARREADY),
        .m_axi_arsize(s11_data_fifo_to_s11_couplers_ARSIZE),
        .m_axi_arvalid(s11_data_fifo_to_s11_couplers_ARVALID),
        .m_axi_rdata(s11_data_fifo_to_s11_couplers_RDATA),
        .m_axi_rid(s11_data_fifo_to_s11_couplers_RID[0]),
        .m_axi_rlast(s11_data_fifo_to_s11_couplers_RLAST),
        .m_axi_rready(s11_data_fifo_to_s11_couplers_RREADY),
        .m_axi_rresp(s11_data_fifo_to_s11_couplers_RRESP),
        .m_axi_rvalid(s11_data_fifo_to_s11_couplers_RVALID),
        .s_axi_araddr(s11_regslice_to_s11_data_fifo_ARADDR),
        .s_axi_arburst(s11_regslice_to_s11_data_fifo_ARBURST),
        .s_axi_arcache(s11_regslice_to_s11_data_fifo_ARCACHE),
        .s_axi_arid(s11_regslice_to_s11_data_fifo_ARID),
        .s_axi_arlen(s11_regslice_to_s11_data_fifo_ARLEN),
        .s_axi_arlock(s11_regslice_to_s11_data_fifo_ARLOCK),
        .s_axi_arprot(s11_regslice_to_s11_data_fifo_ARPROT),
        .s_axi_arqos(s11_regslice_to_s11_data_fifo_ARQOS),
        .s_axi_arready(s11_regslice_to_s11_data_fifo_ARREADY),
        .s_axi_arregion(s11_regslice_to_s11_data_fifo_ARREGION),
        .s_axi_arsize(s11_regslice_to_s11_data_fifo_ARSIZE),
        .s_axi_arvalid(s11_regslice_to_s11_data_fifo_ARVALID),
        .s_axi_rdata(s11_regslice_to_s11_data_fifo_RDATA),
        .s_axi_rid(s11_regslice_to_s11_data_fifo_RID),
        .s_axi_rlast(s11_regslice_to_s11_data_fifo_RLAST),
        .s_axi_rready(s11_regslice_to_s11_data_fifo_RREADY),
        .s_axi_rresp(s11_regslice_to_s11_data_fifo_RRESP),
        .s_axi_rvalid(s11_regslice_to_s11_data_fifo_RVALID));
  vitis_design_s11_regslice_0 s11_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s11_regslice_to_s11_data_fifo_ARADDR),
        .m_axi_arburst(s11_regslice_to_s11_data_fifo_ARBURST),
        .m_axi_arcache(s11_regslice_to_s11_data_fifo_ARCACHE),
        .m_axi_arid(s11_regslice_to_s11_data_fifo_ARID),
        .m_axi_arlen(s11_regslice_to_s11_data_fifo_ARLEN),
        .m_axi_arlock(s11_regslice_to_s11_data_fifo_ARLOCK),
        .m_axi_arprot(s11_regslice_to_s11_data_fifo_ARPROT),
        .m_axi_arqos(s11_regslice_to_s11_data_fifo_ARQOS),
        .m_axi_arready(s11_regslice_to_s11_data_fifo_ARREADY),
        .m_axi_arregion(s11_regslice_to_s11_data_fifo_ARREGION),
        .m_axi_arsize(s11_regslice_to_s11_data_fifo_ARSIZE),
        .m_axi_arvalid(s11_regslice_to_s11_data_fifo_ARVALID),
        .m_axi_rdata(s11_regslice_to_s11_data_fifo_RDATA),
        .m_axi_rid(s11_regslice_to_s11_data_fifo_RID),
        .m_axi_rlast(s11_regslice_to_s11_data_fifo_RLAST),
        .m_axi_rready(s11_regslice_to_s11_data_fifo_RREADY),
        .m_axi_rresp(s11_regslice_to_s11_data_fifo_RRESP),
        .m_axi_rvalid(s11_regslice_to_s11_data_fifo_RVALID),
        .s_axi_araddr(s11_couplers_to_s11_regslice_ARADDR),
        .s_axi_arburst(s11_couplers_to_s11_regslice_ARBURST),
        .s_axi_arcache(s11_couplers_to_s11_regslice_ARCACHE),
        .s_axi_arid(s11_couplers_to_s11_regslice_ARID),
        .s_axi_arlen(s11_couplers_to_s11_regslice_ARLEN),
        .s_axi_arlock(s11_couplers_to_s11_regslice_ARLOCK[0]),
        .s_axi_arprot(s11_couplers_to_s11_regslice_ARPROT),
        .s_axi_arqos(s11_couplers_to_s11_regslice_ARQOS),
        .s_axi_arready(s11_couplers_to_s11_regslice_ARREADY),
        .s_axi_arregion(s11_couplers_to_s11_regslice_ARREGION),
        .s_axi_arsize(s11_couplers_to_s11_regslice_ARSIZE),
        .s_axi_arvalid(s11_couplers_to_s11_regslice_ARVALID),
        .s_axi_rdata(s11_couplers_to_s11_regslice_RDATA),
        .s_axi_rid(s11_couplers_to_s11_regslice_RID),
        .s_axi_rlast(s11_couplers_to_s11_regslice_RLAST),
        .s_axi_rready(s11_couplers_to_s11_regslice_RREADY),
        .s_axi_rresp(s11_couplers_to_s11_regslice_RRESP),
        .s_axi_rvalid(s11_couplers_to_s11_regslice_RVALID));
endmodule

module s12_couplers_imp_DJG8IX
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [4:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]s12_couplers_to_s12_regslice_AWADDR;
  wire [1:0]s12_couplers_to_s12_regslice_AWBURST;
  wire [3:0]s12_couplers_to_s12_regslice_AWCACHE;
  wire [0:0]s12_couplers_to_s12_regslice_AWID;
  wire [7:0]s12_couplers_to_s12_regslice_AWLEN;
  wire [1:0]s12_couplers_to_s12_regslice_AWLOCK;
  wire [2:0]s12_couplers_to_s12_regslice_AWPROT;
  wire [3:0]s12_couplers_to_s12_regslice_AWQOS;
  wire s12_couplers_to_s12_regslice_AWREADY;
  wire [3:0]s12_couplers_to_s12_regslice_AWREGION;
  wire [2:0]s12_couplers_to_s12_regslice_AWSIZE;
  wire s12_couplers_to_s12_regslice_AWVALID;
  wire [0:0]s12_couplers_to_s12_regslice_BID;
  wire s12_couplers_to_s12_regslice_BREADY;
  wire [1:0]s12_couplers_to_s12_regslice_BRESP;
  wire s12_couplers_to_s12_regslice_BVALID;
  wire [255:0]s12_couplers_to_s12_regslice_WDATA;
  wire s12_couplers_to_s12_regslice_WLAST;
  wire s12_couplers_to_s12_regslice_WREADY;
  wire [31:0]s12_couplers_to_s12_regslice_WSTRB;
  wire s12_couplers_to_s12_regslice_WVALID;
  wire [63:0]s12_data_fifo_to_s12_couplers_AWADDR;
  wire [1:0]s12_data_fifo_to_s12_couplers_AWBURST;
  wire [3:0]s12_data_fifo_to_s12_couplers_AWCACHE;
  wire [0:0]s12_data_fifo_to_s12_couplers_AWID;
  wire [7:0]s12_data_fifo_to_s12_couplers_AWLEN;
  wire [0:0]s12_data_fifo_to_s12_couplers_AWLOCK;
  wire [2:0]s12_data_fifo_to_s12_couplers_AWPROT;
  wire [3:0]s12_data_fifo_to_s12_couplers_AWQOS;
  wire s12_data_fifo_to_s12_couplers_AWREADY;
  wire [2:0]s12_data_fifo_to_s12_couplers_AWSIZE;
  wire s12_data_fifo_to_s12_couplers_AWVALID;
  wire [4:0]s12_data_fifo_to_s12_couplers_BID;
  wire s12_data_fifo_to_s12_couplers_BREADY;
  wire [1:0]s12_data_fifo_to_s12_couplers_BRESP;
  wire s12_data_fifo_to_s12_couplers_BVALID;
  wire [255:0]s12_data_fifo_to_s12_couplers_WDATA;
  wire s12_data_fifo_to_s12_couplers_WLAST;
  wire s12_data_fifo_to_s12_couplers_WREADY;
  wire [31:0]s12_data_fifo_to_s12_couplers_WSTRB;
  wire s12_data_fifo_to_s12_couplers_WVALID;
  wire [63:0]s12_regslice_to_s12_data_fifo_AWADDR;
  wire [1:0]s12_regslice_to_s12_data_fifo_AWBURST;
  wire [3:0]s12_regslice_to_s12_data_fifo_AWCACHE;
  wire [0:0]s12_regslice_to_s12_data_fifo_AWID;
  wire [7:0]s12_regslice_to_s12_data_fifo_AWLEN;
  wire [0:0]s12_regslice_to_s12_data_fifo_AWLOCK;
  wire [2:0]s12_regslice_to_s12_data_fifo_AWPROT;
  wire [3:0]s12_regslice_to_s12_data_fifo_AWQOS;
  wire s12_regslice_to_s12_data_fifo_AWREADY;
  wire [3:0]s12_regslice_to_s12_data_fifo_AWREGION;
  wire [2:0]s12_regslice_to_s12_data_fifo_AWSIZE;
  wire s12_regslice_to_s12_data_fifo_AWVALID;
  wire [0:0]s12_regslice_to_s12_data_fifo_BID;
  wire s12_regslice_to_s12_data_fifo_BREADY;
  wire [1:0]s12_regslice_to_s12_data_fifo_BRESP;
  wire s12_regslice_to_s12_data_fifo_BVALID;
  wire [255:0]s12_regslice_to_s12_data_fifo_WDATA;
  wire s12_regslice_to_s12_data_fifo_WLAST;
  wire s12_regslice_to_s12_data_fifo_WREADY;
  wire [31:0]s12_regslice_to_s12_data_fifo_WSTRB;
  wire s12_regslice_to_s12_data_fifo_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[63:0] = s12_data_fifo_to_s12_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s12_data_fifo_to_s12_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s12_data_fifo_to_s12_couplers_AWCACHE;
  assign M_AXI_awid[0] = s12_data_fifo_to_s12_couplers_AWID;
  assign M_AXI_awlen[7:0] = s12_data_fifo_to_s12_couplers_AWLEN;
  assign M_AXI_awlock[0] = s12_data_fifo_to_s12_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s12_data_fifo_to_s12_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s12_data_fifo_to_s12_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s12_data_fifo_to_s12_couplers_AWSIZE;
  assign M_AXI_awvalid = s12_data_fifo_to_s12_couplers_AWVALID;
  assign M_AXI_bready = s12_data_fifo_to_s12_couplers_BREADY;
  assign M_AXI_wdata[255:0] = s12_data_fifo_to_s12_couplers_WDATA;
  assign M_AXI_wlast = s12_data_fifo_to_s12_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = s12_data_fifo_to_s12_couplers_WSTRB;
  assign M_AXI_wvalid = s12_data_fifo_to_s12_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s12_couplers_to_s12_regslice_AWREADY;
  assign S_AXI_bid[0] = s12_couplers_to_s12_regslice_BID;
  assign S_AXI_bresp[1:0] = s12_couplers_to_s12_regslice_BRESP;
  assign S_AXI_bvalid = s12_couplers_to_s12_regslice_BVALID;
  assign S_AXI_wready = s12_couplers_to_s12_regslice_WREADY;
  assign s12_couplers_to_s12_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s12_couplers_to_s12_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s12_couplers_to_s12_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s12_couplers_to_s12_regslice_AWID = S_AXI_awid[0];
  assign s12_couplers_to_s12_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s12_couplers_to_s12_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s12_couplers_to_s12_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s12_couplers_to_s12_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s12_couplers_to_s12_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s12_couplers_to_s12_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s12_couplers_to_s12_regslice_AWVALID = S_AXI_awvalid;
  assign s12_couplers_to_s12_regslice_BREADY = S_AXI_bready;
  assign s12_couplers_to_s12_regslice_WDATA = S_AXI_wdata[255:0];
  assign s12_couplers_to_s12_regslice_WLAST = S_AXI_wlast;
  assign s12_couplers_to_s12_regslice_WSTRB = S_AXI_wstrb[31:0];
  assign s12_couplers_to_s12_regslice_WVALID = S_AXI_wvalid;
  assign s12_data_fifo_to_s12_couplers_AWREADY = M_AXI_awready;
  assign s12_data_fifo_to_s12_couplers_BID = M_AXI_bid[4:0];
  assign s12_data_fifo_to_s12_couplers_BRESP = M_AXI_bresp[1:0];
  assign s12_data_fifo_to_s12_couplers_BVALID = M_AXI_bvalid;
  assign s12_data_fifo_to_s12_couplers_WREADY = M_AXI_wready;
  vitis_design_s12_data_fifo_0 s12_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_awaddr(s12_data_fifo_to_s12_couplers_AWADDR),
        .m_axi_awburst(s12_data_fifo_to_s12_couplers_AWBURST),
        .m_axi_awcache(s12_data_fifo_to_s12_couplers_AWCACHE),
        .m_axi_awid(s12_data_fifo_to_s12_couplers_AWID),
        .m_axi_awlen(s12_data_fifo_to_s12_couplers_AWLEN),
        .m_axi_awlock(s12_data_fifo_to_s12_couplers_AWLOCK),
        .m_axi_awprot(s12_data_fifo_to_s12_couplers_AWPROT),
        .m_axi_awqos(s12_data_fifo_to_s12_couplers_AWQOS),
        .m_axi_awready(s12_data_fifo_to_s12_couplers_AWREADY),
        .m_axi_awsize(s12_data_fifo_to_s12_couplers_AWSIZE),
        .m_axi_awvalid(s12_data_fifo_to_s12_couplers_AWVALID),
        .m_axi_bid(s12_data_fifo_to_s12_couplers_BID[0]),
        .m_axi_bready(s12_data_fifo_to_s12_couplers_BREADY),
        .m_axi_bresp(s12_data_fifo_to_s12_couplers_BRESP),
        .m_axi_bvalid(s12_data_fifo_to_s12_couplers_BVALID),
        .m_axi_wdata(s12_data_fifo_to_s12_couplers_WDATA),
        .m_axi_wlast(s12_data_fifo_to_s12_couplers_WLAST),
        .m_axi_wready(s12_data_fifo_to_s12_couplers_WREADY),
        .m_axi_wstrb(s12_data_fifo_to_s12_couplers_WSTRB),
        .m_axi_wvalid(s12_data_fifo_to_s12_couplers_WVALID),
        .s_axi_awaddr(s12_regslice_to_s12_data_fifo_AWADDR),
        .s_axi_awburst(s12_regslice_to_s12_data_fifo_AWBURST),
        .s_axi_awcache(s12_regslice_to_s12_data_fifo_AWCACHE),
        .s_axi_awid(s12_regslice_to_s12_data_fifo_AWID),
        .s_axi_awlen(s12_regslice_to_s12_data_fifo_AWLEN),
        .s_axi_awlock(s12_regslice_to_s12_data_fifo_AWLOCK),
        .s_axi_awprot(s12_regslice_to_s12_data_fifo_AWPROT),
        .s_axi_awqos(s12_regslice_to_s12_data_fifo_AWQOS),
        .s_axi_awready(s12_regslice_to_s12_data_fifo_AWREADY),
        .s_axi_awregion(s12_regslice_to_s12_data_fifo_AWREGION),
        .s_axi_awsize(s12_regslice_to_s12_data_fifo_AWSIZE),
        .s_axi_awvalid(s12_regslice_to_s12_data_fifo_AWVALID),
        .s_axi_bid(s12_regslice_to_s12_data_fifo_BID),
        .s_axi_bready(s12_regslice_to_s12_data_fifo_BREADY),
        .s_axi_bresp(s12_regslice_to_s12_data_fifo_BRESP),
        .s_axi_bvalid(s12_regslice_to_s12_data_fifo_BVALID),
        .s_axi_wdata(s12_regslice_to_s12_data_fifo_WDATA),
        .s_axi_wlast(s12_regslice_to_s12_data_fifo_WLAST),
        .s_axi_wready(s12_regslice_to_s12_data_fifo_WREADY),
        .s_axi_wstrb(s12_regslice_to_s12_data_fifo_WSTRB),
        .s_axi_wvalid(s12_regslice_to_s12_data_fifo_WVALID));
  vitis_design_s12_regslice_0 s12_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s12_regslice_to_s12_data_fifo_AWADDR),
        .m_axi_awburst(s12_regslice_to_s12_data_fifo_AWBURST),
        .m_axi_awcache(s12_regslice_to_s12_data_fifo_AWCACHE),
        .m_axi_awid(s12_regslice_to_s12_data_fifo_AWID),
        .m_axi_awlen(s12_regslice_to_s12_data_fifo_AWLEN),
        .m_axi_awlock(s12_regslice_to_s12_data_fifo_AWLOCK),
        .m_axi_awprot(s12_regslice_to_s12_data_fifo_AWPROT),
        .m_axi_awqos(s12_regslice_to_s12_data_fifo_AWQOS),
        .m_axi_awready(s12_regslice_to_s12_data_fifo_AWREADY),
        .m_axi_awregion(s12_regslice_to_s12_data_fifo_AWREGION),
        .m_axi_awsize(s12_regslice_to_s12_data_fifo_AWSIZE),
        .m_axi_awvalid(s12_regslice_to_s12_data_fifo_AWVALID),
        .m_axi_bid(s12_regslice_to_s12_data_fifo_BID),
        .m_axi_bready(s12_regslice_to_s12_data_fifo_BREADY),
        .m_axi_bresp(s12_regslice_to_s12_data_fifo_BRESP),
        .m_axi_bvalid(s12_regslice_to_s12_data_fifo_BVALID),
        .m_axi_wdata(s12_regslice_to_s12_data_fifo_WDATA),
        .m_axi_wlast(s12_regslice_to_s12_data_fifo_WLAST),
        .m_axi_wready(s12_regslice_to_s12_data_fifo_WREADY),
        .m_axi_wstrb(s12_regslice_to_s12_data_fifo_WSTRB),
        .m_axi_wvalid(s12_regslice_to_s12_data_fifo_WVALID),
        .s_axi_awaddr(s12_couplers_to_s12_regslice_AWADDR),
        .s_axi_awburst(s12_couplers_to_s12_regslice_AWBURST),
        .s_axi_awcache(s12_couplers_to_s12_regslice_AWCACHE),
        .s_axi_awid(s12_couplers_to_s12_regslice_AWID),
        .s_axi_awlen(s12_couplers_to_s12_regslice_AWLEN),
        .s_axi_awlock(s12_couplers_to_s12_regslice_AWLOCK[0]),
        .s_axi_awprot(s12_couplers_to_s12_regslice_AWPROT),
        .s_axi_awqos(s12_couplers_to_s12_regslice_AWQOS),
        .s_axi_awready(s12_couplers_to_s12_regslice_AWREADY),
        .s_axi_awregion(s12_couplers_to_s12_regslice_AWREGION),
        .s_axi_awsize(s12_couplers_to_s12_regslice_AWSIZE),
        .s_axi_awvalid(s12_couplers_to_s12_regslice_AWVALID),
        .s_axi_bid(s12_couplers_to_s12_regslice_BID),
        .s_axi_bready(s12_couplers_to_s12_regslice_BREADY),
        .s_axi_bresp(s12_couplers_to_s12_regslice_BRESP),
        .s_axi_bvalid(s12_couplers_to_s12_regslice_BVALID),
        .s_axi_wdata(s12_couplers_to_s12_regslice_WDATA),
        .s_axi_wlast(s12_couplers_to_s12_regslice_WLAST),
        .s_axi_wready(s12_couplers_to_s12_regslice_WREADY),
        .s_axi_wstrb(s12_couplers_to_s12_regslice_WSTRB),
        .s_axi_wvalid(s12_couplers_to_s12_regslice_WVALID));
endmodule

module s13_couplers_imp_B2HEQX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s13_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s13_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s13_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s13_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s13_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s13_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s13_couplers_ARQOS;
  wire auto_us_df_to_s13_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s13_couplers_ARSIZE;
  wire auto_us_df_to_s13_couplers_ARVALID;
  wire [63:0]auto_us_df_to_s13_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s13_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s13_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s13_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s13_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s13_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s13_couplers_AWQOS;
  wire auto_us_df_to_s13_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s13_couplers_AWSIZE;
  wire auto_us_df_to_s13_couplers_AWVALID;
  wire auto_us_df_to_s13_couplers_BREADY;
  wire [1:0]auto_us_df_to_s13_couplers_BRESP;
  wire auto_us_df_to_s13_couplers_BVALID;
  wire [255:0]auto_us_df_to_s13_couplers_RDATA;
  wire auto_us_df_to_s13_couplers_RLAST;
  wire auto_us_df_to_s13_couplers_RREADY;
  wire [1:0]auto_us_df_to_s13_couplers_RRESP;
  wire auto_us_df_to_s13_couplers_RVALID;
  wire [255:0]auto_us_df_to_s13_couplers_WDATA;
  wire auto_us_df_to_s13_couplers_WLAST;
  wire auto_us_df_to_s13_couplers_WREADY;
  wire [31:0]auto_us_df_to_s13_couplers_WSTRB;
  wire auto_us_df_to_s13_couplers_WVALID;
  wire [63:0]s13_couplers_to_s13_regslice_ARADDR;
  wire [1:0]s13_couplers_to_s13_regslice_ARBURST;
  wire [3:0]s13_couplers_to_s13_regslice_ARCACHE;
  wire [0:0]s13_couplers_to_s13_regslice_ARID;
  wire [7:0]s13_couplers_to_s13_regslice_ARLEN;
  wire [1:0]s13_couplers_to_s13_regslice_ARLOCK;
  wire [2:0]s13_couplers_to_s13_regslice_ARPROT;
  wire [3:0]s13_couplers_to_s13_regslice_ARQOS;
  wire s13_couplers_to_s13_regslice_ARREADY;
  wire [3:0]s13_couplers_to_s13_regslice_ARREGION;
  wire [2:0]s13_couplers_to_s13_regslice_ARSIZE;
  wire s13_couplers_to_s13_regslice_ARVALID;
  wire [63:0]s13_couplers_to_s13_regslice_AWADDR;
  wire [1:0]s13_couplers_to_s13_regslice_AWBURST;
  wire [3:0]s13_couplers_to_s13_regslice_AWCACHE;
  wire [0:0]s13_couplers_to_s13_regslice_AWID;
  wire [7:0]s13_couplers_to_s13_regslice_AWLEN;
  wire [1:0]s13_couplers_to_s13_regslice_AWLOCK;
  wire [2:0]s13_couplers_to_s13_regslice_AWPROT;
  wire [3:0]s13_couplers_to_s13_regslice_AWQOS;
  wire s13_couplers_to_s13_regslice_AWREADY;
  wire [3:0]s13_couplers_to_s13_regslice_AWREGION;
  wire [2:0]s13_couplers_to_s13_regslice_AWSIZE;
  wire s13_couplers_to_s13_regslice_AWVALID;
  wire [0:0]s13_couplers_to_s13_regslice_BID;
  wire s13_couplers_to_s13_regslice_BREADY;
  wire [1:0]s13_couplers_to_s13_regslice_BRESP;
  wire s13_couplers_to_s13_regslice_BVALID;
  wire [31:0]s13_couplers_to_s13_regslice_RDATA;
  wire [0:0]s13_couplers_to_s13_regslice_RID;
  wire s13_couplers_to_s13_regslice_RLAST;
  wire s13_couplers_to_s13_regslice_RREADY;
  wire [1:0]s13_couplers_to_s13_regslice_RRESP;
  wire s13_couplers_to_s13_regslice_RVALID;
  wire [31:0]s13_couplers_to_s13_regslice_WDATA;
  wire s13_couplers_to_s13_regslice_WLAST;
  wire s13_couplers_to_s13_regslice_WREADY;
  wire [3:0]s13_couplers_to_s13_regslice_WSTRB;
  wire s13_couplers_to_s13_regslice_WVALID;
  wire [63:0]s13_regslice_to_auto_us_df_ARADDR;
  wire [1:0]s13_regslice_to_auto_us_df_ARBURST;
  wire [3:0]s13_regslice_to_auto_us_df_ARCACHE;
  wire [0:0]s13_regslice_to_auto_us_df_ARID;
  wire [7:0]s13_regslice_to_auto_us_df_ARLEN;
  wire [0:0]s13_regslice_to_auto_us_df_ARLOCK;
  wire [2:0]s13_regslice_to_auto_us_df_ARPROT;
  wire [3:0]s13_regslice_to_auto_us_df_ARQOS;
  wire s13_regslice_to_auto_us_df_ARREADY;
  wire [3:0]s13_regslice_to_auto_us_df_ARREGION;
  wire [2:0]s13_regslice_to_auto_us_df_ARSIZE;
  wire s13_regslice_to_auto_us_df_ARVALID;
  wire [63:0]s13_regslice_to_auto_us_df_AWADDR;
  wire [1:0]s13_regslice_to_auto_us_df_AWBURST;
  wire [3:0]s13_regslice_to_auto_us_df_AWCACHE;
  wire [0:0]s13_regslice_to_auto_us_df_AWID;
  wire [7:0]s13_regslice_to_auto_us_df_AWLEN;
  wire [0:0]s13_regslice_to_auto_us_df_AWLOCK;
  wire [2:0]s13_regslice_to_auto_us_df_AWPROT;
  wire [3:0]s13_regslice_to_auto_us_df_AWQOS;
  wire s13_regslice_to_auto_us_df_AWREADY;
  wire [3:0]s13_regslice_to_auto_us_df_AWREGION;
  wire [2:0]s13_regslice_to_auto_us_df_AWSIZE;
  wire s13_regslice_to_auto_us_df_AWVALID;
  wire [0:0]s13_regslice_to_auto_us_df_BID;
  wire s13_regslice_to_auto_us_df_BREADY;
  wire [1:0]s13_regslice_to_auto_us_df_BRESP;
  wire s13_regslice_to_auto_us_df_BVALID;
  wire [31:0]s13_regslice_to_auto_us_df_RDATA;
  wire [0:0]s13_regslice_to_auto_us_df_RID;
  wire s13_regslice_to_auto_us_df_RLAST;
  wire s13_regslice_to_auto_us_df_RREADY;
  wire [1:0]s13_regslice_to_auto_us_df_RRESP;
  wire s13_regslice_to_auto_us_df_RVALID;
  wire [31:0]s13_regslice_to_auto_us_df_WDATA;
  wire s13_regslice_to_auto_us_df_WLAST;
  wire s13_regslice_to_auto_us_df_WREADY;
  wire [3:0]s13_regslice_to_auto_us_df_WSTRB;
  wire s13_regslice_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_df_to_s13_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s13_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s13_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s13_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s13_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s13_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s13_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s13_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s13_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_us_df_to_s13_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s13_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s13_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s13_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s13_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s13_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s13_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s13_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s13_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s13_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s13_couplers_RREADY;
  assign M_AXI_wdata[255:0] = auto_us_df_to_s13_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s13_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_us_df_to_s13_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s13_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s13_couplers_to_s13_regslice_ARREADY;
  assign S_AXI_awready = s13_couplers_to_s13_regslice_AWREADY;
  assign S_AXI_bid[0] = s13_couplers_to_s13_regslice_BID;
  assign S_AXI_bresp[1:0] = s13_couplers_to_s13_regslice_BRESP;
  assign S_AXI_bvalid = s13_couplers_to_s13_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s13_couplers_to_s13_regslice_RDATA;
  assign S_AXI_rid[0] = s13_couplers_to_s13_regslice_RID;
  assign S_AXI_rlast = s13_couplers_to_s13_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s13_couplers_to_s13_regslice_RRESP;
  assign S_AXI_rvalid = s13_couplers_to_s13_regslice_RVALID;
  assign S_AXI_wready = s13_couplers_to_s13_regslice_WREADY;
  assign auto_us_df_to_s13_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s13_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s13_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s13_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s13_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_us_df_to_s13_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s13_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s13_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s13_couplers_WREADY = M_AXI_wready;
  assign s13_couplers_to_s13_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s13_couplers_to_s13_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s13_couplers_to_s13_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s13_couplers_to_s13_regslice_ARID = S_AXI_arid[0];
  assign s13_couplers_to_s13_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s13_couplers_to_s13_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s13_couplers_to_s13_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s13_couplers_to_s13_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s13_couplers_to_s13_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s13_couplers_to_s13_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s13_couplers_to_s13_regslice_ARVALID = S_AXI_arvalid;
  assign s13_couplers_to_s13_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s13_couplers_to_s13_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s13_couplers_to_s13_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s13_couplers_to_s13_regslice_AWID = S_AXI_awid[0];
  assign s13_couplers_to_s13_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s13_couplers_to_s13_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s13_couplers_to_s13_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s13_couplers_to_s13_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s13_couplers_to_s13_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s13_couplers_to_s13_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s13_couplers_to_s13_regslice_AWVALID = S_AXI_awvalid;
  assign s13_couplers_to_s13_regslice_BREADY = S_AXI_bready;
  assign s13_couplers_to_s13_regslice_RREADY = S_AXI_rready;
  assign s13_couplers_to_s13_regslice_WDATA = S_AXI_wdata[31:0];
  assign s13_couplers_to_s13_regslice_WLAST = S_AXI_wlast;
  assign s13_couplers_to_s13_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s13_couplers_to_s13_regslice_WVALID = S_AXI_wvalid;
  vitis_design_auto_us_df_6 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s13_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s13_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s13_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s13_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s13_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s13_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s13_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s13_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s13_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s13_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s13_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s13_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s13_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s13_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s13_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s13_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s13_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s13_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s13_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s13_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s13_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s13_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s13_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s13_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s13_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s13_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s13_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s13_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s13_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s13_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s13_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s13_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s13_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s13_regslice_to_auto_us_df_ARADDR),
        .s_axi_arburst(s13_regslice_to_auto_us_df_ARBURST),
        .s_axi_arcache(s13_regslice_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s13_regslice_to_auto_us_df_ARID),
        .s_axi_arlen(s13_regslice_to_auto_us_df_ARLEN),
        .s_axi_arlock(s13_regslice_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s13_regslice_to_auto_us_df_ARPROT),
        .s_axi_arqos(s13_regslice_to_auto_us_df_ARQOS),
        .s_axi_arready(s13_regslice_to_auto_us_df_ARREADY),
        .s_axi_arregion(s13_regslice_to_auto_us_df_ARREGION),
        .s_axi_arsize(s13_regslice_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s13_regslice_to_auto_us_df_ARVALID),
        .s_axi_awaddr(s13_regslice_to_auto_us_df_AWADDR),
        .s_axi_awburst(s13_regslice_to_auto_us_df_AWBURST),
        .s_axi_awcache(s13_regslice_to_auto_us_df_AWCACHE),
        .s_axi_awid(s13_regslice_to_auto_us_df_AWID),
        .s_axi_awlen(s13_regslice_to_auto_us_df_AWLEN),
        .s_axi_awlock(s13_regslice_to_auto_us_df_AWLOCK),
        .s_axi_awprot(s13_regslice_to_auto_us_df_AWPROT),
        .s_axi_awqos(s13_regslice_to_auto_us_df_AWQOS),
        .s_axi_awready(s13_regslice_to_auto_us_df_AWREADY),
        .s_axi_awregion(s13_regslice_to_auto_us_df_AWREGION),
        .s_axi_awsize(s13_regslice_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s13_regslice_to_auto_us_df_AWVALID),
        .s_axi_bid(s13_regslice_to_auto_us_df_BID),
        .s_axi_bready(s13_regslice_to_auto_us_df_BREADY),
        .s_axi_bresp(s13_regslice_to_auto_us_df_BRESP),
        .s_axi_bvalid(s13_regslice_to_auto_us_df_BVALID),
        .s_axi_rdata(s13_regslice_to_auto_us_df_RDATA),
        .s_axi_rid(s13_regslice_to_auto_us_df_RID),
        .s_axi_rlast(s13_regslice_to_auto_us_df_RLAST),
        .s_axi_rready(s13_regslice_to_auto_us_df_RREADY),
        .s_axi_rresp(s13_regslice_to_auto_us_df_RRESP),
        .s_axi_rvalid(s13_regslice_to_auto_us_df_RVALID),
        .s_axi_wdata(s13_regslice_to_auto_us_df_WDATA),
        .s_axi_wlast(s13_regslice_to_auto_us_df_WLAST),
        .s_axi_wready(s13_regslice_to_auto_us_df_WREADY),
        .s_axi_wstrb(s13_regslice_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s13_regslice_to_auto_us_df_WVALID));
  vitis_design_s13_regslice_0 s13_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s13_regslice_to_auto_us_df_ARADDR),
        .m_axi_arburst(s13_regslice_to_auto_us_df_ARBURST),
        .m_axi_arcache(s13_regslice_to_auto_us_df_ARCACHE),
        .m_axi_arid(s13_regslice_to_auto_us_df_ARID),
        .m_axi_arlen(s13_regslice_to_auto_us_df_ARLEN),
        .m_axi_arlock(s13_regslice_to_auto_us_df_ARLOCK),
        .m_axi_arprot(s13_regslice_to_auto_us_df_ARPROT),
        .m_axi_arqos(s13_regslice_to_auto_us_df_ARQOS),
        .m_axi_arready(s13_regslice_to_auto_us_df_ARREADY),
        .m_axi_arregion(s13_regslice_to_auto_us_df_ARREGION),
        .m_axi_arsize(s13_regslice_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(s13_regslice_to_auto_us_df_ARVALID),
        .m_axi_awaddr(s13_regslice_to_auto_us_df_AWADDR),
        .m_axi_awburst(s13_regslice_to_auto_us_df_AWBURST),
        .m_axi_awcache(s13_regslice_to_auto_us_df_AWCACHE),
        .m_axi_awid(s13_regslice_to_auto_us_df_AWID),
        .m_axi_awlen(s13_regslice_to_auto_us_df_AWLEN),
        .m_axi_awlock(s13_regslice_to_auto_us_df_AWLOCK),
        .m_axi_awprot(s13_regslice_to_auto_us_df_AWPROT),
        .m_axi_awqos(s13_regslice_to_auto_us_df_AWQOS),
        .m_axi_awready(s13_regslice_to_auto_us_df_AWREADY),
        .m_axi_awregion(s13_regslice_to_auto_us_df_AWREGION),
        .m_axi_awsize(s13_regslice_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(s13_regslice_to_auto_us_df_AWVALID),
        .m_axi_bid(s13_regslice_to_auto_us_df_BID),
        .m_axi_bready(s13_regslice_to_auto_us_df_BREADY),
        .m_axi_bresp(s13_regslice_to_auto_us_df_BRESP),
        .m_axi_bvalid(s13_regslice_to_auto_us_df_BVALID),
        .m_axi_rdata(s13_regslice_to_auto_us_df_RDATA),
        .m_axi_rid(s13_regslice_to_auto_us_df_RID),
        .m_axi_rlast(s13_regslice_to_auto_us_df_RLAST),
        .m_axi_rready(s13_regslice_to_auto_us_df_RREADY),
        .m_axi_rresp(s13_regslice_to_auto_us_df_RRESP),
        .m_axi_rvalid(s13_regslice_to_auto_us_df_RVALID),
        .m_axi_wdata(s13_regslice_to_auto_us_df_WDATA),
        .m_axi_wlast(s13_regslice_to_auto_us_df_WLAST),
        .m_axi_wready(s13_regslice_to_auto_us_df_WREADY),
        .m_axi_wstrb(s13_regslice_to_auto_us_df_WSTRB),
        .m_axi_wvalid(s13_regslice_to_auto_us_df_WVALID),
        .s_axi_araddr(s13_couplers_to_s13_regslice_ARADDR),
        .s_axi_arburst(s13_couplers_to_s13_regslice_ARBURST),
        .s_axi_arcache(s13_couplers_to_s13_regslice_ARCACHE),
        .s_axi_arid(s13_couplers_to_s13_regslice_ARID),
        .s_axi_arlen(s13_couplers_to_s13_regslice_ARLEN),
        .s_axi_arlock(s13_couplers_to_s13_regslice_ARLOCK[0]),
        .s_axi_arprot(s13_couplers_to_s13_regslice_ARPROT),
        .s_axi_arqos(s13_couplers_to_s13_regslice_ARQOS),
        .s_axi_arready(s13_couplers_to_s13_regslice_ARREADY),
        .s_axi_arregion(s13_couplers_to_s13_regslice_ARREGION),
        .s_axi_arsize(s13_couplers_to_s13_regslice_ARSIZE),
        .s_axi_arvalid(s13_couplers_to_s13_regslice_ARVALID),
        .s_axi_awaddr(s13_couplers_to_s13_regslice_AWADDR),
        .s_axi_awburst(s13_couplers_to_s13_regslice_AWBURST),
        .s_axi_awcache(s13_couplers_to_s13_regslice_AWCACHE),
        .s_axi_awid(s13_couplers_to_s13_regslice_AWID),
        .s_axi_awlen(s13_couplers_to_s13_regslice_AWLEN),
        .s_axi_awlock(s13_couplers_to_s13_regslice_AWLOCK[0]),
        .s_axi_awprot(s13_couplers_to_s13_regslice_AWPROT),
        .s_axi_awqos(s13_couplers_to_s13_regslice_AWQOS),
        .s_axi_awready(s13_couplers_to_s13_regslice_AWREADY),
        .s_axi_awregion(s13_couplers_to_s13_regslice_AWREGION),
        .s_axi_awsize(s13_couplers_to_s13_regslice_AWSIZE),
        .s_axi_awvalid(s13_couplers_to_s13_regslice_AWVALID),
        .s_axi_bid(s13_couplers_to_s13_regslice_BID),
        .s_axi_bready(s13_couplers_to_s13_regslice_BREADY),
        .s_axi_bresp(s13_couplers_to_s13_regslice_BRESP),
        .s_axi_bvalid(s13_couplers_to_s13_regslice_BVALID),
        .s_axi_rdata(s13_couplers_to_s13_regslice_RDATA),
        .s_axi_rid(s13_couplers_to_s13_regslice_RID),
        .s_axi_rlast(s13_couplers_to_s13_regslice_RLAST),
        .s_axi_rready(s13_couplers_to_s13_regslice_RREADY),
        .s_axi_rresp(s13_couplers_to_s13_regslice_RRESP),
        .s_axi_rvalid(s13_couplers_to_s13_regslice_RVALID),
        .s_axi_wdata(s13_couplers_to_s13_regslice_WDATA),
        .s_axi_wlast(s13_couplers_to_s13_regslice_WLAST),
        .s_axi_wready(s13_couplers_to_s13_regslice_WREADY),
        .s_axi_wstrb(s13_couplers_to_s13_regslice_WSTRB),
        .s_axi_wvalid(s13_couplers_to_s13_regslice_WVALID));
endmodule

module s14_couplers_imp_IDNNOP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s14_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s14_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s14_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s14_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s14_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s14_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s14_couplers_ARQOS;
  wire auto_us_df_to_s14_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s14_couplers_ARSIZE;
  wire auto_us_df_to_s14_couplers_ARVALID;
  wire [255:0]auto_us_df_to_s14_couplers_RDATA;
  wire auto_us_df_to_s14_couplers_RLAST;
  wire auto_us_df_to_s14_couplers_RREADY;
  wire [1:0]auto_us_df_to_s14_couplers_RRESP;
  wire auto_us_df_to_s14_couplers_RVALID;
  wire [63:0]s14_couplers_to_s14_regslice_ARADDR;
  wire [1:0]s14_couplers_to_s14_regslice_ARBURST;
  wire [3:0]s14_couplers_to_s14_regslice_ARCACHE;
  wire [0:0]s14_couplers_to_s14_regslice_ARID;
  wire [7:0]s14_couplers_to_s14_regslice_ARLEN;
  wire [1:0]s14_couplers_to_s14_regslice_ARLOCK;
  wire [2:0]s14_couplers_to_s14_regslice_ARPROT;
  wire [3:0]s14_couplers_to_s14_regslice_ARQOS;
  wire s14_couplers_to_s14_regslice_ARREADY;
  wire [3:0]s14_couplers_to_s14_regslice_ARREGION;
  wire [2:0]s14_couplers_to_s14_regslice_ARSIZE;
  wire s14_couplers_to_s14_regslice_ARVALID;
  wire [31:0]s14_couplers_to_s14_regslice_RDATA;
  wire [0:0]s14_couplers_to_s14_regslice_RID;
  wire s14_couplers_to_s14_regslice_RLAST;
  wire s14_couplers_to_s14_regslice_RREADY;
  wire [1:0]s14_couplers_to_s14_regslice_RRESP;
  wire s14_couplers_to_s14_regslice_RVALID;
  wire [63:0]s14_regslice_to_auto_us_df_ARADDR;
  wire [1:0]s14_regslice_to_auto_us_df_ARBURST;
  wire [3:0]s14_regslice_to_auto_us_df_ARCACHE;
  wire [0:0]s14_regslice_to_auto_us_df_ARID;
  wire [7:0]s14_regslice_to_auto_us_df_ARLEN;
  wire [0:0]s14_regslice_to_auto_us_df_ARLOCK;
  wire [2:0]s14_regslice_to_auto_us_df_ARPROT;
  wire [3:0]s14_regslice_to_auto_us_df_ARQOS;
  wire s14_regslice_to_auto_us_df_ARREADY;
  wire [3:0]s14_regslice_to_auto_us_df_ARREGION;
  wire [2:0]s14_regslice_to_auto_us_df_ARSIZE;
  wire s14_regslice_to_auto_us_df_ARVALID;
  wire [31:0]s14_regslice_to_auto_us_df_RDATA;
  wire [0:0]s14_regslice_to_auto_us_df_RID;
  wire s14_regslice_to_auto_us_df_RLAST;
  wire s14_regslice_to_auto_us_df_RREADY;
  wire [1:0]s14_regslice_to_auto_us_df_RRESP;
  wire s14_regslice_to_auto_us_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_df_to_s14_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s14_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s14_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s14_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s14_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s14_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s14_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s14_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s14_couplers_ARVALID;
  assign M_AXI_rready = auto_us_df_to_s14_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s14_couplers_to_s14_regslice_ARREADY;
  assign S_AXI_rdata[31:0] = s14_couplers_to_s14_regslice_RDATA;
  assign S_AXI_rid[0] = s14_couplers_to_s14_regslice_RID;
  assign S_AXI_rlast = s14_couplers_to_s14_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s14_couplers_to_s14_regslice_RRESP;
  assign S_AXI_rvalid = s14_couplers_to_s14_regslice_RVALID;
  assign auto_us_df_to_s14_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s14_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_us_df_to_s14_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s14_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s14_couplers_RVALID = M_AXI_rvalid;
  assign s14_couplers_to_s14_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s14_couplers_to_s14_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s14_couplers_to_s14_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s14_couplers_to_s14_regslice_ARID = S_AXI_arid[0];
  assign s14_couplers_to_s14_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s14_couplers_to_s14_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s14_couplers_to_s14_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s14_couplers_to_s14_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s14_couplers_to_s14_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s14_couplers_to_s14_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s14_couplers_to_s14_regslice_ARVALID = S_AXI_arvalid;
  assign s14_couplers_to_s14_regslice_RREADY = S_AXI_rready;
  vitis_design_auto_us_df_7 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s14_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s14_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s14_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s14_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s14_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s14_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s14_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s14_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s14_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s14_couplers_ARVALID),
        .m_axi_rdata(auto_us_df_to_s14_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s14_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s14_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s14_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s14_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s14_regslice_to_auto_us_df_ARADDR),
        .s_axi_arburst(s14_regslice_to_auto_us_df_ARBURST),
        .s_axi_arcache(s14_regslice_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s14_regslice_to_auto_us_df_ARID),
        .s_axi_arlen(s14_regslice_to_auto_us_df_ARLEN),
        .s_axi_arlock(s14_regslice_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s14_regslice_to_auto_us_df_ARPROT),
        .s_axi_arqos(s14_regslice_to_auto_us_df_ARQOS),
        .s_axi_arready(s14_regslice_to_auto_us_df_ARREADY),
        .s_axi_arregion(s14_regslice_to_auto_us_df_ARREGION),
        .s_axi_arsize(s14_regslice_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s14_regslice_to_auto_us_df_ARVALID),
        .s_axi_rdata(s14_regslice_to_auto_us_df_RDATA),
        .s_axi_rid(s14_regslice_to_auto_us_df_RID),
        .s_axi_rlast(s14_regslice_to_auto_us_df_RLAST),
        .s_axi_rready(s14_regslice_to_auto_us_df_RREADY),
        .s_axi_rresp(s14_regslice_to_auto_us_df_RRESP),
        .s_axi_rvalid(s14_regslice_to_auto_us_df_RVALID));
  vitis_design_s14_regslice_0 s14_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s14_regslice_to_auto_us_df_ARADDR),
        .m_axi_arburst(s14_regslice_to_auto_us_df_ARBURST),
        .m_axi_arcache(s14_regslice_to_auto_us_df_ARCACHE),
        .m_axi_arid(s14_regslice_to_auto_us_df_ARID),
        .m_axi_arlen(s14_regslice_to_auto_us_df_ARLEN),
        .m_axi_arlock(s14_regslice_to_auto_us_df_ARLOCK),
        .m_axi_arprot(s14_regslice_to_auto_us_df_ARPROT),
        .m_axi_arqos(s14_regslice_to_auto_us_df_ARQOS),
        .m_axi_arready(s14_regslice_to_auto_us_df_ARREADY),
        .m_axi_arregion(s14_regslice_to_auto_us_df_ARREGION),
        .m_axi_arsize(s14_regslice_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(s14_regslice_to_auto_us_df_ARVALID),
        .m_axi_rdata(s14_regslice_to_auto_us_df_RDATA),
        .m_axi_rid(s14_regslice_to_auto_us_df_RID),
        .m_axi_rlast(s14_regslice_to_auto_us_df_RLAST),
        .m_axi_rready(s14_regslice_to_auto_us_df_RREADY),
        .m_axi_rresp(s14_regslice_to_auto_us_df_RRESP),
        .m_axi_rvalid(s14_regslice_to_auto_us_df_RVALID),
        .s_axi_araddr(s14_couplers_to_s14_regslice_ARADDR),
        .s_axi_arburst(s14_couplers_to_s14_regslice_ARBURST),
        .s_axi_arcache(s14_couplers_to_s14_regslice_ARCACHE),
        .s_axi_arid(s14_couplers_to_s14_regslice_ARID),
        .s_axi_arlen(s14_couplers_to_s14_regslice_ARLEN),
        .s_axi_arlock(s14_couplers_to_s14_regslice_ARLOCK[0]),
        .s_axi_arprot(s14_couplers_to_s14_regslice_ARPROT),
        .s_axi_arqos(s14_couplers_to_s14_regslice_ARQOS),
        .s_axi_arready(s14_couplers_to_s14_regslice_ARREADY),
        .s_axi_arregion(s14_couplers_to_s14_regslice_ARREGION),
        .s_axi_arsize(s14_couplers_to_s14_regslice_ARSIZE),
        .s_axi_arvalid(s14_couplers_to_s14_regslice_ARVALID),
        .s_axi_rdata(s14_couplers_to_s14_regslice_RDATA),
        .s_axi_rid(s14_couplers_to_s14_regslice_RID),
        .s_axi_rlast(s14_couplers_to_s14_regslice_RLAST),
        .s_axi_rready(s14_couplers_to_s14_regslice_RREADY),
        .s_axi_rresp(s14_couplers_to_s14_regslice_RRESP),
        .s_axi_rvalid(s14_couplers_to_s14_regslice_RVALID));
endmodule

module s15_couplers_imp_NLW9D5
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s15_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s15_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s15_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s15_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s15_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s15_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s15_couplers_AWQOS;
  wire auto_us_df_to_s15_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s15_couplers_AWSIZE;
  wire auto_us_df_to_s15_couplers_AWVALID;
  wire auto_us_df_to_s15_couplers_BREADY;
  wire [1:0]auto_us_df_to_s15_couplers_BRESP;
  wire auto_us_df_to_s15_couplers_BVALID;
  wire [255:0]auto_us_df_to_s15_couplers_WDATA;
  wire auto_us_df_to_s15_couplers_WLAST;
  wire auto_us_df_to_s15_couplers_WREADY;
  wire [31:0]auto_us_df_to_s15_couplers_WSTRB;
  wire auto_us_df_to_s15_couplers_WVALID;
  wire [63:0]s15_couplers_to_s15_regslice_AWADDR;
  wire [1:0]s15_couplers_to_s15_regslice_AWBURST;
  wire [3:0]s15_couplers_to_s15_regslice_AWCACHE;
  wire [0:0]s15_couplers_to_s15_regslice_AWID;
  wire [7:0]s15_couplers_to_s15_regslice_AWLEN;
  wire [1:0]s15_couplers_to_s15_regslice_AWLOCK;
  wire [2:0]s15_couplers_to_s15_regslice_AWPROT;
  wire [3:0]s15_couplers_to_s15_regslice_AWQOS;
  wire s15_couplers_to_s15_regslice_AWREADY;
  wire [3:0]s15_couplers_to_s15_regslice_AWREGION;
  wire [2:0]s15_couplers_to_s15_regslice_AWSIZE;
  wire s15_couplers_to_s15_regslice_AWVALID;
  wire [0:0]s15_couplers_to_s15_regslice_BID;
  wire s15_couplers_to_s15_regslice_BREADY;
  wire [1:0]s15_couplers_to_s15_regslice_BRESP;
  wire s15_couplers_to_s15_regslice_BVALID;
  wire [31:0]s15_couplers_to_s15_regslice_WDATA;
  wire s15_couplers_to_s15_regslice_WLAST;
  wire s15_couplers_to_s15_regslice_WREADY;
  wire [3:0]s15_couplers_to_s15_regslice_WSTRB;
  wire s15_couplers_to_s15_regslice_WVALID;
  wire [63:0]s15_regslice_to_auto_us_df_AWADDR;
  wire [1:0]s15_regslice_to_auto_us_df_AWBURST;
  wire [3:0]s15_regslice_to_auto_us_df_AWCACHE;
  wire [0:0]s15_regslice_to_auto_us_df_AWID;
  wire [7:0]s15_regslice_to_auto_us_df_AWLEN;
  wire [0:0]s15_regslice_to_auto_us_df_AWLOCK;
  wire [2:0]s15_regslice_to_auto_us_df_AWPROT;
  wire [3:0]s15_regslice_to_auto_us_df_AWQOS;
  wire s15_regslice_to_auto_us_df_AWREADY;
  wire [3:0]s15_regslice_to_auto_us_df_AWREGION;
  wire [2:0]s15_regslice_to_auto_us_df_AWSIZE;
  wire s15_regslice_to_auto_us_df_AWVALID;
  wire [0:0]s15_regslice_to_auto_us_df_BID;
  wire s15_regslice_to_auto_us_df_BREADY;
  wire [1:0]s15_regslice_to_auto_us_df_BRESP;
  wire s15_regslice_to_auto_us_df_BVALID;
  wire [31:0]s15_regslice_to_auto_us_df_WDATA;
  wire s15_regslice_to_auto_us_df_WLAST;
  wire s15_regslice_to_auto_us_df_WREADY;
  wire [3:0]s15_regslice_to_auto_us_df_WSTRB;
  wire s15_regslice_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[63:0] = auto_us_df_to_s15_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s15_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s15_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s15_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s15_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s15_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s15_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s15_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s15_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s15_couplers_BREADY;
  assign M_AXI_wdata[255:0] = auto_us_df_to_s15_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s15_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_us_df_to_s15_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s15_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s15_couplers_to_s15_regslice_AWREADY;
  assign S_AXI_bid[0] = s15_couplers_to_s15_regslice_BID;
  assign S_AXI_bresp[1:0] = s15_couplers_to_s15_regslice_BRESP;
  assign S_AXI_bvalid = s15_couplers_to_s15_regslice_BVALID;
  assign S_AXI_wready = s15_couplers_to_s15_regslice_WREADY;
  assign auto_us_df_to_s15_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s15_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s15_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s15_couplers_WREADY = M_AXI_wready;
  assign s15_couplers_to_s15_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s15_couplers_to_s15_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s15_couplers_to_s15_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s15_couplers_to_s15_regslice_AWID = S_AXI_awid[0];
  assign s15_couplers_to_s15_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s15_couplers_to_s15_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s15_couplers_to_s15_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s15_couplers_to_s15_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s15_couplers_to_s15_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s15_couplers_to_s15_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s15_couplers_to_s15_regslice_AWVALID = S_AXI_awvalid;
  assign s15_couplers_to_s15_regslice_BREADY = S_AXI_bready;
  assign s15_couplers_to_s15_regslice_WDATA = S_AXI_wdata[31:0];
  assign s15_couplers_to_s15_regslice_WLAST = S_AXI_wlast;
  assign s15_couplers_to_s15_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s15_couplers_to_s15_regslice_WVALID = S_AXI_wvalid;
  vitis_design_auto_us_df_8 auto_us_df
       (.m_axi_awaddr(auto_us_df_to_s15_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s15_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s15_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s15_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s15_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s15_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s15_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s15_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s15_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s15_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s15_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s15_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s15_couplers_BVALID),
        .m_axi_wdata(auto_us_df_to_s15_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s15_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s15_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s15_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s15_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s15_regslice_to_auto_us_df_AWADDR),
        .s_axi_awburst(s15_regslice_to_auto_us_df_AWBURST),
        .s_axi_awcache(s15_regslice_to_auto_us_df_AWCACHE),
        .s_axi_awid(s15_regslice_to_auto_us_df_AWID),
        .s_axi_awlen(s15_regslice_to_auto_us_df_AWLEN),
        .s_axi_awlock(s15_regslice_to_auto_us_df_AWLOCK),
        .s_axi_awprot(s15_regslice_to_auto_us_df_AWPROT),
        .s_axi_awqos(s15_regslice_to_auto_us_df_AWQOS),
        .s_axi_awready(s15_regslice_to_auto_us_df_AWREADY),
        .s_axi_awregion(s15_regslice_to_auto_us_df_AWREGION),
        .s_axi_awsize(s15_regslice_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s15_regslice_to_auto_us_df_AWVALID),
        .s_axi_bid(s15_regslice_to_auto_us_df_BID),
        .s_axi_bready(s15_regslice_to_auto_us_df_BREADY),
        .s_axi_bresp(s15_regslice_to_auto_us_df_BRESP),
        .s_axi_bvalid(s15_regslice_to_auto_us_df_BVALID),
        .s_axi_wdata(s15_regslice_to_auto_us_df_WDATA),
        .s_axi_wlast(s15_regslice_to_auto_us_df_WLAST),
        .s_axi_wready(s15_regslice_to_auto_us_df_WREADY),
        .s_axi_wstrb(s15_regslice_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s15_regslice_to_auto_us_df_WVALID));
  vitis_design_s15_regslice_0 s15_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s15_regslice_to_auto_us_df_AWADDR),
        .m_axi_awburst(s15_regslice_to_auto_us_df_AWBURST),
        .m_axi_awcache(s15_regslice_to_auto_us_df_AWCACHE),
        .m_axi_awid(s15_regslice_to_auto_us_df_AWID),
        .m_axi_awlen(s15_regslice_to_auto_us_df_AWLEN),
        .m_axi_awlock(s15_regslice_to_auto_us_df_AWLOCK),
        .m_axi_awprot(s15_regslice_to_auto_us_df_AWPROT),
        .m_axi_awqos(s15_regslice_to_auto_us_df_AWQOS),
        .m_axi_awready(s15_regslice_to_auto_us_df_AWREADY),
        .m_axi_awregion(s15_regslice_to_auto_us_df_AWREGION),
        .m_axi_awsize(s15_regslice_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(s15_regslice_to_auto_us_df_AWVALID),
        .m_axi_bid(s15_regslice_to_auto_us_df_BID),
        .m_axi_bready(s15_regslice_to_auto_us_df_BREADY),
        .m_axi_bresp(s15_regslice_to_auto_us_df_BRESP),
        .m_axi_bvalid(s15_regslice_to_auto_us_df_BVALID),
        .m_axi_wdata(s15_regslice_to_auto_us_df_WDATA),
        .m_axi_wlast(s15_regslice_to_auto_us_df_WLAST),
        .m_axi_wready(s15_regslice_to_auto_us_df_WREADY),
        .m_axi_wstrb(s15_regslice_to_auto_us_df_WSTRB),
        .m_axi_wvalid(s15_regslice_to_auto_us_df_WVALID),
        .s_axi_awaddr(s15_couplers_to_s15_regslice_AWADDR),
        .s_axi_awburst(s15_couplers_to_s15_regslice_AWBURST),
        .s_axi_awcache(s15_couplers_to_s15_regslice_AWCACHE),
        .s_axi_awid(s15_couplers_to_s15_regslice_AWID),
        .s_axi_awlen(s15_couplers_to_s15_regslice_AWLEN),
        .s_axi_awlock(s15_couplers_to_s15_regslice_AWLOCK[0]),
        .s_axi_awprot(s15_couplers_to_s15_regslice_AWPROT),
        .s_axi_awqos(s15_couplers_to_s15_regslice_AWQOS),
        .s_axi_awready(s15_couplers_to_s15_regslice_AWREADY),
        .s_axi_awregion(s15_couplers_to_s15_regslice_AWREGION),
        .s_axi_awsize(s15_couplers_to_s15_regslice_AWSIZE),
        .s_axi_awvalid(s15_couplers_to_s15_regslice_AWVALID),
        .s_axi_bid(s15_couplers_to_s15_regslice_BID),
        .s_axi_bready(s15_couplers_to_s15_regslice_BREADY),
        .s_axi_bresp(s15_couplers_to_s15_regslice_BRESP),
        .s_axi_bvalid(s15_couplers_to_s15_regslice_BVALID),
        .s_axi_wdata(s15_couplers_to_s15_regslice_WDATA),
        .s_axi_wlast(s15_couplers_to_s15_regslice_WLAST),
        .s_axi_wready(s15_couplers_to_s15_regslice_WREADY),
        .s_axi_wstrb(s15_couplers_to_s15_regslice_WSTRB),
        .s_axi_wvalid(s15_couplers_to_s15_regslice_WVALID));
endmodule

(* CORE_GENERATION_INFO = "vitis_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=vitis_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=124,numReposBlks=85,numNonXlnxBlks=0,numHierBlks=39,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=8,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=Vitis,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "vitis_design.hwdef" *) 
module vitis_design
   ();

  wire Net;
  wire [48:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARCACHE;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARLEN;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARREADY;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARVALID;
  wire [48:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWCACHE;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWLEN;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWREADY;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWVALID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_BREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_BRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_BVALID;
  wire [127:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RDATA;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RVALID;
  wire [127:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WDATA;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WREADY;
  wire [15:0]axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WSTRB;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WVALID;
  wire [48:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARLEN;
  wire [0:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARQOS;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARREADY;
  wire [2:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARSIZE;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARVALID;
  wire [48:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWLEN;
  wire [0:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWQOS;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWREADY;
  wire [2:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWSIZE;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWVALID;
  wire [5:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_BID;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_BREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_BRESP;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_BVALID;
  wire [127:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RDATA;
  wire [5:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RID;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RLAST;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RRESP;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RVALID;
  wire [127:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WDATA;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WLAST;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WREADY;
  wire [15:0]axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WSTRB;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WVALID;
  wire [31:0]axi_intc_0_intr_1_interrupt_concat_dout;
  wire axi_intc_0_irq;
  wire [31:0]axi_interconnect_0_M00_AXI1_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI1_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI1_ARLEN;
  wire axi_interconnect_0_M00_AXI1_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI1_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARQOS;
  wire axi_interconnect_0_M00_AXI1_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI1_ARSIZE;
  wire axi_interconnect_0_M00_AXI1_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI1_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI1_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI1_AWLEN;
  wire axi_interconnect_0_M00_AXI1_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI1_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWQOS;
  wire axi_interconnect_0_M00_AXI1_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI1_AWSIZE;
  wire axi_interconnect_0_M00_AXI1_AWVALID;
  wire axi_interconnect_0_M00_AXI1_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI1_BRESP;
  wire axi_interconnect_0_M00_AXI1_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI1_RDATA;
  wire axi_interconnect_0_M00_AXI1_RLAST;
  wire axi_interconnect_0_M00_AXI1_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI1_RRESP;
  wire axi_interconnect_0_M00_AXI1_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI1_WDATA;
  wire axi_interconnect_0_M00_AXI1_WLAST;
  wire axi_interconnect_0_M00_AXI1_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI1_WSTRB;
  wire axi_interconnect_0_M00_AXI1_WVALID;
  wire [39:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [39:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_ARCACHE;
  wire [7:0]axi_interconnect_1_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_ARQOS;
  wire axi_interconnect_1_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_1_M00_AXI_ARSIZE;
  wire axi_interconnect_1_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_AWCACHE;
  wire [7:0]axi_interconnect_1_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_AWQOS;
  wire axi_interconnect_1_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_1_M00_AXI_AWSIZE;
  wire axi_interconnect_1_M00_AXI_AWVALID;
  wire axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_BRESP;
  wire axi_interconnect_1_M00_AXI_BVALID;
  wire [127:0]axi_interconnect_1_M00_AXI_RDATA;
  wire axi_interconnect_1_M00_AXI_RLAST;
  wire axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_RRESP;
  wire axi_interconnect_1_M00_AXI_RVALID;
  wire [127:0]axi_interconnect_1_M00_AXI_WDATA;
  wire axi_interconnect_1_M00_AXI_WLAST;
  wire axi_interconnect_1_M00_AXI_WREADY;
  wire [15:0]axi_interconnect_1_M00_AXI_WSTRB;
  wire axi_interconnect_1_M00_AXI_WVALID;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire [1:0]axi_vip_0_M_AXI_ARBURST;
  wire [3:0]axi_vip_0_M_AXI_ARCACHE;
  wire [7:0]axi_vip_0_M_AXI_ARLEN;
  wire [0:0]axi_vip_0_M_AXI_ARLOCK;
  wire [2:0]axi_vip_0_M_AXI_ARPROT;
  wire [3:0]axi_vip_0_M_AXI_ARQOS;
  wire axi_vip_0_M_AXI_ARREADY;
  wire [3:0]axi_vip_0_M_AXI_ARREGION;
  wire [2:0]axi_vip_0_M_AXI_ARSIZE;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire [1:0]axi_vip_0_M_AXI_AWBURST;
  wire [3:0]axi_vip_0_M_AXI_AWCACHE;
  wire [7:0]axi_vip_0_M_AXI_AWLEN;
  wire [0:0]axi_vip_0_M_AXI_AWLOCK;
  wire [2:0]axi_vip_0_M_AXI_AWPROT;
  wire [3:0]axi_vip_0_M_AXI_AWQOS;
  wire axi_vip_0_M_AXI_AWREADY;
  wire [3:0]axi_vip_0_M_AXI_AWREGION;
  wire [2:0]axi_vip_0_M_AXI_AWSIZE;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RLAST;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WLAST;
  wire axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire [31:0]axi_vip_1_M_AXI_ARADDR;
  wire [1:0]axi_vip_1_M_AXI_ARBURST;
  wire [3:0]axi_vip_1_M_AXI_ARCACHE;
  wire [7:0]axi_vip_1_M_AXI_ARLEN;
  wire [0:0]axi_vip_1_M_AXI_ARLOCK;
  wire [2:0]axi_vip_1_M_AXI_ARPROT;
  wire [3:0]axi_vip_1_M_AXI_ARQOS;
  wire axi_vip_1_M_AXI_ARREADY;
  wire [2:0]axi_vip_1_M_AXI_ARSIZE;
  wire axi_vip_1_M_AXI_ARVALID;
  wire [31:0]axi_vip_1_M_AXI_AWADDR;
  wire [1:0]axi_vip_1_M_AXI_AWBURST;
  wire [3:0]axi_vip_1_M_AXI_AWCACHE;
  wire [7:0]axi_vip_1_M_AXI_AWLEN;
  wire [0:0]axi_vip_1_M_AXI_AWLOCK;
  wire [2:0]axi_vip_1_M_AXI_AWPROT;
  wire [3:0]axi_vip_1_M_AXI_AWQOS;
  wire axi_vip_1_M_AXI_AWREADY;
  wire [2:0]axi_vip_1_M_AXI_AWSIZE;
  wire axi_vip_1_M_AXI_AWVALID;
  wire axi_vip_1_M_AXI_BREADY;
  wire [1:0]axi_vip_1_M_AXI_BRESP;
  wire axi_vip_1_M_AXI_BVALID;
  wire [31:0]axi_vip_1_M_AXI_RDATA;
  wire axi_vip_1_M_AXI_RLAST;
  wire axi_vip_1_M_AXI_RREADY;
  wire [1:0]axi_vip_1_M_AXI_RRESP;
  wire axi_vip_1_M_AXI_RVALID;
  wire [31:0]axi_vip_1_M_AXI_WDATA;
  wire axi_vip_1_M_AXI_WLAST;
  wire axi_vip_1_M_AXI_WREADY;
  wire [3:0]axi_vip_1_M_AXI_WSTRB;
  wire axi_vip_1_M_AXI_WVALID;
  wire canny_accel_1_interrupt;
  wire [63:0]canny_accel_1_m_axi_gmem1_ARADDR;
  wire [1:0]canny_accel_1_m_axi_gmem1_ARBURST;
  wire [3:0]canny_accel_1_m_axi_gmem1_ARCACHE;
  wire [0:0]canny_accel_1_m_axi_gmem1_ARID;
  wire [7:0]canny_accel_1_m_axi_gmem1_ARLEN;
  wire [1:0]canny_accel_1_m_axi_gmem1_ARLOCK;
  wire [2:0]canny_accel_1_m_axi_gmem1_ARPROT;
  wire [3:0]canny_accel_1_m_axi_gmem1_ARQOS;
  wire canny_accel_1_m_axi_gmem1_ARREADY;
  wire [3:0]canny_accel_1_m_axi_gmem1_ARREGION;
  wire [2:0]canny_accel_1_m_axi_gmem1_ARSIZE;
  wire canny_accel_1_m_axi_gmem1_ARVALID;
  wire [63:0]canny_accel_1_m_axi_gmem1_RDATA;
  wire [0:0]canny_accel_1_m_axi_gmem1_RID;
  wire canny_accel_1_m_axi_gmem1_RLAST;
  wire canny_accel_1_m_axi_gmem1_RREADY;
  wire [1:0]canny_accel_1_m_axi_gmem1_RRESP;
  wire canny_accel_1_m_axi_gmem1_RVALID;
  wire [63:0]canny_accel_1_m_axi_gmem2_AWADDR;
  wire [1:0]canny_accel_1_m_axi_gmem2_AWBURST;
  wire [3:0]canny_accel_1_m_axi_gmem2_AWCACHE;
  wire [0:0]canny_accel_1_m_axi_gmem2_AWID;
  wire [7:0]canny_accel_1_m_axi_gmem2_AWLEN;
  wire [1:0]canny_accel_1_m_axi_gmem2_AWLOCK;
  wire [2:0]canny_accel_1_m_axi_gmem2_AWPROT;
  wire [3:0]canny_accel_1_m_axi_gmem2_AWQOS;
  wire canny_accel_1_m_axi_gmem2_AWREADY;
  wire [3:0]canny_accel_1_m_axi_gmem2_AWREGION;
  wire [2:0]canny_accel_1_m_axi_gmem2_AWSIZE;
  wire canny_accel_1_m_axi_gmem2_AWVALID;
  wire [0:0]canny_accel_1_m_axi_gmem2_BID;
  wire canny_accel_1_m_axi_gmem2_BREADY;
  wire [1:0]canny_accel_1_m_axi_gmem2_BRESP;
  wire canny_accel_1_m_axi_gmem2_BVALID;
  wire [63:0]canny_accel_1_m_axi_gmem2_WDATA;
  wire canny_accel_1_m_axi_gmem2_WLAST;
  wire canny_accel_1_m_axi_gmem2_WREADY;
  wire [7:0]canny_accel_1_m_axi_gmem2_WSTRB;
  wire canny_accel_1_m_axi_gmem2_WVALID;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_clk_out3;
  wire clk_wiz_0_clk_out4;
  wire clk_wiz_0_clk_out5;
  wire clk_wiz_0_clk_out6;
  wire clk_wiz_0_clk_out7;
  wire clk_wiz_0_clk_out8;
  wire clk_wiz_0_locked;
  wire fast_accel_1_interrupt;
  wire [63:0]fast_accel_1_m_axi_gmem0_ARADDR;
  wire [1:0]fast_accel_1_m_axi_gmem0_ARBURST;
  wire [3:0]fast_accel_1_m_axi_gmem0_ARCACHE;
  wire [0:0]fast_accel_1_m_axi_gmem0_ARID;
  wire [7:0]fast_accel_1_m_axi_gmem0_ARLEN;
  wire [1:0]fast_accel_1_m_axi_gmem0_ARLOCK;
  wire [2:0]fast_accel_1_m_axi_gmem0_ARPROT;
  wire [3:0]fast_accel_1_m_axi_gmem0_ARQOS;
  wire fast_accel_1_m_axi_gmem0_ARREADY;
  wire [3:0]fast_accel_1_m_axi_gmem0_ARREGION;
  wire [2:0]fast_accel_1_m_axi_gmem0_ARSIZE;
  wire fast_accel_1_m_axi_gmem0_ARVALID;
  wire [31:0]fast_accel_1_m_axi_gmem0_RDATA;
  wire [0:0]fast_accel_1_m_axi_gmem0_RID;
  wire fast_accel_1_m_axi_gmem0_RLAST;
  wire fast_accel_1_m_axi_gmem0_RREADY;
  wire [1:0]fast_accel_1_m_axi_gmem0_RRESP;
  wire fast_accel_1_m_axi_gmem0_RVALID;
  wire [63:0]fast_accel_1_m_axi_gmem1_AWADDR;
  wire [1:0]fast_accel_1_m_axi_gmem1_AWBURST;
  wire [3:0]fast_accel_1_m_axi_gmem1_AWCACHE;
  wire [0:0]fast_accel_1_m_axi_gmem1_AWID;
  wire [7:0]fast_accel_1_m_axi_gmem1_AWLEN;
  wire [1:0]fast_accel_1_m_axi_gmem1_AWLOCK;
  wire [2:0]fast_accel_1_m_axi_gmem1_AWPROT;
  wire [3:0]fast_accel_1_m_axi_gmem1_AWQOS;
  wire fast_accel_1_m_axi_gmem1_AWREADY;
  wire [3:0]fast_accel_1_m_axi_gmem1_AWREGION;
  wire [2:0]fast_accel_1_m_axi_gmem1_AWSIZE;
  wire fast_accel_1_m_axi_gmem1_AWVALID;
  wire [0:0]fast_accel_1_m_axi_gmem1_BID;
  wire fast_accel_1_m_axi_gmem1_BREADY;
  wire [1:0]fast_accel_1_m_axi_gmem1_BRESP;
  wire fast_accel_1_m_axi_gmem1_BVALID;
  wire [31:0]fast_accel_1_m_axi_gmem1_WDATA;
  wire fast_accel_1_m_axi_gmem1_WLAST;
  wire fast_accel_1_m_axi_gmem1_WREADY;
  wire [3:0]fast_accel_1_m_axi_gmem1_WSTRB;
  wire fast_accel_1_m_axi_gmem1_WVALID;
  wire gaussian_filter_accel_1_interrupt;
  wire [63:0]gaussian_filter_accel_1_m_axi_gmem1_ARADDR;
  wire [1:0]gaussian_filter_accel_1_m_axi_gmem1_ARBURST;
  wire [3:0]gaussian_filter_accel_1_m_axi_gmem1_ARCACHE;
  wire [0:0]gaussian_filter_accel_1_m_axi_gmem1_ARID;
  wire [7:0]gaussian_filter_accel_1_m_axi_gmem1_ARLEN;
  wire [1:0]gaussian_filter_accel_1_m_axi_gmem1_ARLOCK;
  wire [2:0]gaussian_filter_accel_1_m_axi_gmem1_ARPROT;
  wire [3:0]gaussian_filter_accel_1_m_axi_gmem1_ARQOS;
  wire gaussian_filter_accel_1_m_axi_gmem1_ARREADY;
  wire [3:0]gaussian_filter_accel_1_m_axi_gmem1_ARREGION;
  wire [2:0]gaussian_filter_accel_1_m_axi_gmem1_ARSIZE;
  wire gaussian_filter_accel_1_m_axi_gmem1_ARVALID;
  wire [255:0]gaussian_filter_accel_1_m_axi_gmem1_RDATA;
  wire [0:0]gaussian_filter_accel_1_m_axi_gmem1_RID;
  wire gaussian_filter_accel_1_m_axi_gmem1_RLAST;
  wire gaussian_filter_accel_1_m_axi_gmem1_RREADY;
  wire [1:0]gaussian_filter_accel_1_m_axi_gmem1_RRESP;
  wire gaussian_filter_accel_1_m_axi_gmem1_RVALID;
  wire [63:0]gaussian_filter_accel_1_m_axi_gmem2_AWADDR;
  wire [1:0]gaussian_filter_accel_1_m_axi_gmem2_AWBURST;
  wire [3:0]gaussian_filter_accel_1_m_axi_gmem2_AWCACHE;
  wire [0:0]gaussian_filter_accel_1_m_axi_gmem2_AWID;
  wire [7:0]gaussian_filter_accel_1_m_axi_gmem2_AWLEN;
  wire [1:0]gaussian_filter_accel_1_m_axi_gmem2_AWLOCK;
  wire [2:0]gaussian_filter_accel_1_m_axi_gmem2_AWPROT;
  wire [3:0]gaussian_filter_accel_1_m_axi_gmem2_AWQOS;
  wire gaussian_filter_accel_1_m_axi_gmem2_AWREADY;
  wire [3:0]gaussian_filter_accel_1_m_axi_gmem2_AWREGION;
  wire [2:0]gaussian_filter_accel_1_m_axi_gmem2_AWSIZE;
  wire gaussian_filter_accel_1_m_axi_gmem2_AWVALID;
  wire [0:0]gaussian_filter_accel_1_m_axi_gmem2_BID;
  wire gaussian_filter_accel_1_m_axi_gmem2_BREADY;
  wire [1:0]gaussian_filter_accel_1_m_axi_gmem2_BRESP;
  wire gaussian_filter_accel_1_m_axi_gmem2_BVALID;
  wire [255:0]gaussian_filter_accel_1_m_axi_gmem2_WDATA;
  wire gaussian_filter_accel_1_m_axi_gmem2_WLAST;
  wire gaussian_filter_accel_1_m_axi_gmem2_WREADY;
  wire [31:0]gaussian_filter_accel_1_m_axi_gmem2_WSTRB;
  wire gaussian_filter_accel_1_m_axi_gmem2_WVALID;
  wire image_thresholding_kernel00_1_interrupt;
  wire [63:0]image_thresholding_kernel00_1_m_axi_gmem_ARADDR;
  wire [1:0]image_thresholding_kernel00_1_m_axi_gmem_ARBURST;
  wire [3:0]image_thresholding_kernel00_1_m_axi_gmem_ARCACHE;
  wire [0:0]image_thresholding_kernel00_1_m_axi_gmem_ARID;
  wire [7:0]image_thresholding_kernel00_1_m_axi_gmem_ARLEN;
  wire [1:0]image_thresholding_kernel00_1_m_axi_gmem_ARLOCK;
  wire [2:0]image_thresholding_kernel00_1_m_axi_gmem_ARPROT;
  wire [3:0]image_thresholding_kernel00_1_m_axi_gmem_ARQOS;
  wire image_thresholding_kernel00_1_m_axi_gmem_ARREADY;
  wire [3:0]image_thresholding_kernel00_1_m_axi_gmem_ARREGION;
  wire [2:0]image_thresholding_kernel00_1_m_axi_gmem_ARSIZE;
  wire image_thresholding_kernel00_1_m_axi_gmem_ARVALID;
  wire [63:0]image_thresholding_kernel00_1_m_axi_gmem_AWADDR;
  wire [1:0]image_thresholding_kernel00_1_m_axi_gmem_AWBURST;
  wire [3:0]image_thresholding_kernel00_1_m_axi_gmem_AWCACHE;
  wire [0:0]image_thresholding_kernel00_1_m_axi_gmem_AWID;
  wire [7:0]image_thresholding_kernel00_1_m_axi_gmem_AWLEN;
  wire [1:0]image_thresholding_kernel00_1_m_axi_gmem_AWLOCK;
  wire [2:0]image_thresholding_kernel00_1_m_axi_gmem_AWPROT;
  wire [3:0]image_thresholding_kernel00_1_m_axi_gmem_AWQOS;
  wire image_thresholding_kernel00_1_m_axi_gmem_AWREADY;
  wire [3:0]image_thresholding_kernel00_1_m_axi_gmem_AWREGION;
  wire [2:0]image_thresholding_kernel00_1_m_axi_gmem_AWSIZE;
  wire image_thresholding_kernel00_1_m_axi_gmem_AWVALID;
  wire [0:0]image_thresholding_kernel00_1_m_axi_gmem_BID;
  wire image_thresholding_kernel00_1_m_axi_gmem_BREADY;
  wire [1:0]image_thresholding_kernel00_1_m_axi_gmem_BRESP;
  wire image_thresholding_kernel00_1_m_axi_gmem_BVALID;
  wire [31:0]image_thresholding_kernel00_1_m_axi_gmem_RDATA;
  wire [0:0]image_thresholding_kernel00_1_m_axi_gmem_RID;
  wire image_thresholding_kernel00_1_m_axi_gmem_RLAST;
  wire image_thresholding_kernel00_1_m_axi_gmem_RREADY;
  wire [1:0]image_thresholding_kernel00_1_m_axi_gmem_RRESP;
  wire image_thresholding_kernel00_1_m_axi_gmem_RVALID;
  wire [31:0]image_thresholding_kernel00_1_m_axi_gmem_WDATA;
  wire image_thresholding_kernel00_1_m_axi_gmem_WLAST;
  wire image_thresholding_kernel00_1_m_axi_gmem_WREADY;
  wire [3:0]image_thresholding_kernel00_1_m_axi_gmem_WSTRB;
  wire image_thresholding_kernel00_1_m_axi_gmem_WVALID;
  wire image_thresholding_kernel01_1_interrupt;
  wire [63:0]image_thresholding_kernel01_1_m_axi_gmem0_ARADDR;
  wire [1:0]image_thresholding_kernel01_1_m_axi_gmem0_ARBURST;
  wire [3:0]image_thresholding_kernel01_1_m_axi_gmem0_ARCACHE;
  wire [0:0]image_thresholding_kernel01_1_m_axi_gmem0_ARID;
  wire [7:0]image_thresholding_kernel01_1_m_axi_gmem0_ARLEN;
  wire [1:0]image_thresholding_kernel01_1_m_axi_gmem0_ARLOCK;
  wire [2:0]image_thresholding_kernel01_1_m_axi_gmem0_ARPROT;
  wire [3:0]image_thresholding_kernel01_1_m_axi_gmem0_ARQOS;
  wire image_thresholding_kernel01_1_m_axi_gmem0_ARREADY;
  wire [3:0]image_thresholding_kernel01_1_m_axi_gmem0_ARREGION;
  wire [2:0]image_thresholding_kernel01_1_m_axi_gmem0_ARSIZE;
  wire image_thresholding_kernel01_1_m_axi_gmem0_ARVALID;
  wire [31:0]image_thresholding_kernel01_1_m_axi_gmem0_RDATA;
  wire [0:0]image_thresholding_kernel01_1_m_axi_gmem0_RID;
  wire image_thresholding_kernel01_1_m_axi_gmem0_RLAST;
  wire image_thresholding_kernel01_1_m_axi_gmem0_RREADY;
  wire [1:0]image_thresholding_kernel01_1_m_axi_gmem0_RRESP;
  wire image_thresholding_kernel01_1_m_axi_gmem0_RVALID;
  wire [63:0]image_thresholding_kernel01_1_m_axi_gmem1_AWADDR;
  wire [1:0]image_thresholding_kernel01_1_m_axi_gmem1_AWBURST;
  wire [3:0]image_thresholding_kernel01_1_m_axi_gmem1_AWCACHE;
  wire [0:0]image_thresholding_kernel01_1_m_axi_gmem1_AWID;
  wire [7:0]image_thresholding_kernel01_1_m_axi_gmem1_AWLEN;
  wire [1:0]image_thresholding_kernel01_1_m_axi_gmem1_AWLOCK;
  wire [2:0]image_thresholding_kernel01_1_m_axi_gmem1_AWPROT;
  wire [3:0]image_thresholding_kernel01_1_m_axi_gmem1_AWQOS;
  wire image_thresholding_kernel01_1_m_axi_gmem1_AWREADY;
  wire [3:0]image_thresholding_kernel01_1_m_axi_gmem1_AWREGION;
  wire [2:0]image_thresholding_kernel01_1_m_axi_gmem1_AWSIZE;
  wire image_thresholding_kernel01_1_m_axi_gmem1_AWVALID;
  wire [0:0]image_thresholding_kernel01_1_m_axi_gmem1_BID;
  wire image_thresholding_kernel01_1_m_axi_gmem1_BREADY;
  wire [1:0]image_thresholding_kernel01_1_m_axi_gmem1_BRESP;
  wire image_thresholding_kernel01_1_m_axi_gmem1_BVALID;
  wire [31:0]image_thresholding_kernel01_1_m_axi_gmem1_WDATA;
  wire image_thresholding_kernel01_1_m_axi_gmem1_WLAST;
  wire image_thresholding_kernel01_1_m_axi_gmem1_WREADY;
  wire [3:0]image_thresholding_kernel01_1_m_axi_gmem1_WSTRB;
  wire image_thresholding_kernel01_1_m_axi_gmem1_WVALID;
  wire [39:0]interconnect_axihpm0fpd_M00_AXI_ARADDR;
  wire [1:0]interconnect_axihpm0fpd_M00_AXI_ARBURST;
  wire [3:0]interconnect_axihpm0fpd_M00_AXI_ARCACHE;
  wire [15:0]interconnect_axihpm0fpd_M00_AXI_ARID;
  wire [7:0]interconnect_axihpm0fpd_M00_AXI_ARLEN;
  wire interconnect_axihpm0fpd_M00_AXI_ARLOCK;
  wire [2:0]interconnect_axihpm0fpd_M00_AXI_ARPROT;
  wire [3:0]interconnect_axihpm0fpd_M00_AXI_ARQOS;
  wire interconnect_axihpm0fpd_M00_AXI_ARREADY;
  wire [2:0]interconnect_axihpm0fpd_M00_AXI_ARSIZE;
  wire [15:0]interconnect_axihpm0fpd_M00_AXI_ARUSER;
  wire interconnect_axihpm0fpd_M00_AXI_ARVALID;
  wire [39:0]interconnect_axihpm0fpd_M00_AXI_AWADDR;
  wire [1:0]interconnect_axihpm0fpd_M00_AXI_AWBURST;
  wire [3:0]interconnect_axihpm0fpd_M00_AXI_AWCACHE;
  wire [15:0]interconnect_axihpm0fpd_M00_AXI_AWID;
  wire [7:0]interconnect_axihpm0fpd_M00_AXI_AWLEN;
  wire interconnect_axihpm0fpd_M00_AXI_AWLOCK;
  wire [2:0]interconnect_axihpm0fpd_M00_AXI_AWPROT;
  wire [3:0]interconnect_axihpm0fpd_M00_AXI_AWQOS;
  wire interconnect_axihpm0fpd_M00_AXI_AWREADY;
  wire [2:0]interconnect_axihpm0fpd_M00_AXI_AWSIZE;
  wire [15:0]interconnect_axihpm0fpd_M00_AXI_AWUSER;
  wire interconnect_axihpm0fpd_M00_AXI_AWVALID;
  wire [15:0]interconnect_axihpm0fpd_M00_AXI_BID;
  wire interconnect_axihpm0fpd_M00_AXI_BREADY;
  wire [1:0]interconnect_axihpm0fpd_M00_AXI_BRESP;
  wire interconnect_axihpm0fpd_M00_AXI_BVALID;
  wire [127:0]interconnect_axihpm0fpd_M00_AXI_RDATA;
  wire [15:0]interconnect_axihpm0fpd_M00_AXI_RID;
  wire interconnect_axihpm0fpd_M00_AXI_RLAST;
  wire interconnect_axihpm0fpd_M00_AXI_RREADY;
  wire [1:0]interconnect_axihpm0fpd_M00_AXI_RRESP;
  wire interconnect_axihpm0fpd_M00_AXI_RVALID;
  wire [127:0]interconnect_axihpm0fpd_M00_AXI_WDATA;
  wire interconnect_axihpm0fpd_M00_AXI_WLAST;
  wire interconnect_axihpm0fpd_M00_AXI_WREADY;
  wire [15:0]interconnect_axihpm0fpd_M00_AXI_WSTRB;
  wire interconnect_axihpm0fpd_M00_AXI_WVALID;
  wire [6:0]interconnect_axilite_M01_AXI_ARADDR;
  wire interconnect_axilite_M01_AXI_ARREADY;
  wire interconnect_axilite_M01_AXI_ARVALID;
  wire [6:0]interconnect_axilite_M01_AXI_AWADDR;
  wire interconnect_axilite_M01_AXI_AWREADY;
  wire interconnect_axilite_M01_AXI_AWVALID;
  wire interconnect_axilite_M01_AXI_BREADY;
  wire [1:0]interconnect_axilite_M01_AXI_BRESP;
  wire interconnect_axilite_M01_AXI_BVALID;
  wire [31:0]interconnect_axilite_M01_AXI_RDATA;
  wire interconnect_axilite_M01_AXI_RREADY;
  wire [1:0]interconnect_axilite_M01_AXI_RRESP;
  wire interconnect_axilite_M01_AXI_RVALID;
  wire [31:0]interconnect_axilite_M01_AXI_WDATA;
  wire interconnect_axilite_M01_AXI_WREADY;
  wire [3:0]interconnect_axilite_M01_AXI_WSTRB;
  wire interconnect_axilite_M01_AXI_WVALID;
  wire [6:0]interconnect_axilite_M02_AXI_ARADDR;
  wire interconnect_axilite_M02_AXI_ARREADY;
  wire interconnect_axilite_M02_AXI_ARVALID;
  wire [6:0]interconnect_axilite_M02_AXI_AWADDR;
  wire interconnect_axilite_M02_AXI_AWREADY;
  wire interconnect_axilite_M02_AXI_AWVALID;
  wire interconnect_axilite_M02_AXI_BREADY;
  wire [1:0]interconnect_axilite_M02_AXI_BRESP;
  wire interconnect_axilite_M02_AXI_BVALID;
  wire [31:0]interconnect_axilite_M02_AXI_RDATA;
  wire interconnect_axilite_M02_AXI_RREADY;
  wire [1:0]interconnect_axilite_M02_AXI_RRESP;
  wire interconnect_axilite_M02_AXI_RVALID;
  wire [31:0]interconnect_axilite_M02_AXI_WDATA;
  wire interconnect_axilite_M02_AXI_WREADY;
  wire [3:0]interconnect_axilite_M02_AXI_WSTRB;
  wire interconnect_axilite_M02_AXI_WVALID;
  wire [6:0]interconnect_axilite_M03_AXI_ARADDR;
  wire interconnect_axilite_M03_AXI_ARREADY;
  wire interconnect_axilite_M03_AXI_ARVALID;
  wire [6:0]interconnect_axilite_M03_AXI_AWADDR;
  wire interconnect_axilite_M03_AXI_AWREADY;
  wire interconnect_axilite_M03_AXI_AWVALID;
  wire interconnect_axilite_M03_AXI_BREADY;
  wire [1:0]interconnect_axilite_M03_AXI_BRESP;
  wire interconnect_axilite_M03_AXI_BVALID;
  wire [31:0]interconnect_axilite_M03_AXI_RDATA;
  wire interconnect_axilite_M03_AXI_RREADY;
  wire [1:0]interconnect_axilite_M03_AXI_RRESP;
  wire interconnect_axilite_M03_AXI_RVALID;
  wire [31:0]interconnect_axilite_M03_AXI_WDATA;
  wire interconnect_axilite_M03_AXI_WREADY;
  wire [3:0]interconnect_axilite_M03_AXI_WSTRB;
  wire interconnect_axilite_M03_AXI_WVALID;
  wire [6:0]interconnect_axilite_M04_AXI_ARADDR;
  wire interconnect_axilite_M04_AXI_ARREADY;
  wire interconnect_axilite_M04_AXI_ARVALID;
  wire [6:0]interconnect_axilite_M04_AXI_AWADDR;
  wire interconnect_axilite_M04_AXI_AWREADY;
  wire interconnect_axilite_M04_AXI_AWVALID;
  wire interconnect_axilite_M04_AXI_BREADY;
  wire [1:0]interconnect_axilite_M04_AXI_BRESP;
  wire interconnect_axilite_M04_AXI_BVALID;
  wire [31:0]interconnect_axilite_M04_AXI_RDATA;
  wire interconnect_axilite_M04_AXI_RREADY;
  wire [1:0]interconnect_axilite_M04_AXI_RRESP;
  wire interconnect_axilite_M04_AXI_RVALID;
  wire [31:0]interconnect_axilite_M04_AXI_WDATA;
  wire interconnect_axilite_M04_AXI_WREADY;
  wire [3:0]interconnect_axilite_M04_AXI_WSTRB;
  wire interconnect_axilite_M04_AXI_WVALID;
  wire [5:0]interconnect_axilite_M05_AXI_ARADDR;
  wire interconnect_axilite_M05_AXI_ARREADY;
  wire interconnect_axilite_M05_AXI_ARVALID;
  wire [5:0]interconnect_axilite_M05_AXI_AWADDR;
  wire interconnect_axilite_M05_AXI_AWREADY;
  wire interconnect_axilite_M05_AXI_AWVALID;
  wire interconnect_axilite_M05_AXI_BREADY;
  wire [1:0]interconnect_axilite_M05_AXI_BRESP;
  wire interconnect_axilite_M05_AXI_BVALID;
  wire [31:0]interconnect_axilite_M05_AXI_RDATA;
  wire interconnect_axilite_M05_AXI_RREADY;
  wire [1:0]interconnect_axilite_M05_AXI_RRESP;
  wire interconnect_axilite_M05_AXI_RVALID;
  wire [31:0]interconnect_axilite_M05_AXI_WDATA;
  wire interconnect_axilite_M05_AXI_WREADY;
  wire [3:0]interconnect_axilite_M05_AXI_WSTRB;
  wire interconnect_axilite_M05_AXI_WVALID;
  wire [6:0]interconnect_axilite_M06_AXI_ARADDR;
  wire interconnect_axilite_M06_AXI_ARREADY;
  wire interconnect_axilite_M06_AXI_ARVALID;
  wire [6:0]interconnect_axilite_M06_AXI_AWADDR;
  wire interconnect_axilite_M06_AXI_AWREADY;
  wire interconnect_axilite_M06_AXI_AWVALID;
  wire interconnect_axilite_M06_AXI_BREADY;
  wire [1:0]interconnect_axilite_M06_AXI_BRESP;
  wire interconnect_axilite_M06_AXI_BVALID;
  wire [31:0]interconnect_axilite_M06_AXI_RDATA;
  wire interconnect_axilite_M06_AXI_RREADY;
  wire [1:0]interconnect_axilite_M06_AXI_RRESP;
  wire interconnect_axilite_M06_AXI_RVALID;
  wire [31:0]interconnect_axilite_M06_AXI_WDATA;
  wire interconnect_axilite_M06_AXI_WREADY;
  wire [3:0]interconnect_axilite_M06_AXI_WSTRB;
  wire interconnect_axilite_M06_AXI_WVALID;
  wire [6:0]interconnect_axilite_M07_AXI_ARADDR;
  wire interconnect_axilite_M07_AXI_ARREADY;
  wire interconnect_axilite_M07_AXI_ARVALID;
  wire [6:0]interconnect_axilite_M07_AXI_AWADDR;
  wire interconnect_axilite_M07_AXI_AWREADY;
  wire interconnect_axilite_M07_AXI_AWVALID;
  wire interconnect_axilite_M07_AXI_BREADY;
  wire [1:0]interconnect_axilite_M07_AXI_BRESP;
  wire interconnect_axilite_M07_AXI_BVALID;
  wire [31:0]interconnect_axilite_M07_AXI_RDATA;
  wire interconnect_axilite_M07_AXI_RREADY;
  wire [1:0]interconnect_axilite_M07_AXI_RRESP;
  wire interconnect_axilite_M07_AXI_RVALID;
  wire [31:0]interconnect_axilite_M07_AXI_WDATA;
  wire interconnect_axilite_M07_AXI_WREADY;
  wire [3:0]interconnect_axilite_M07_AXI_WSTRB;
  wire interconnect_axilite_M07_AXI_WVALID;
  wire [5:0]interconnect_axilite_M08_AXI_ARADDR;
  wire interconnect_axilite_M08_AXI_ARREADY;
  wire interconnect_axilite_M08_AXI_ARVALID;
  wire [5:0]interconnect_axilite_M08_AXI_AWADDR;
  wire interconnect_axilite_M08_AXI_AWREADY;
  wire interconnect_axilite_M08_AXI_AWVALID;
  wire interconnect_axilite_M08_AXI_BREADY;
  wire [1:0]interconnect_axilite_M08_AXI_BRESP;
  wire interconnect_axilite_M08_AXI_BVALID;
  wire [31:0]interconnect_axilite_M08_AXI_RDATA;
  wire interconnect_axilite_M08_AXI_RREADY;
  wire [1:0]interconnect_axilite_M08_AXI_RRESP;
  wire interconnect_axilite_M08_AXI_RVALID;
  wire [31:0]interconnect_axilite_M08_AXI_WDATA;
  wire interconnect_axilite_M08_AXI_WREADY;
  wire [3:0]interconnect_axilite_M08_AXI_WSTRB;
  wire interconnect_axilite_M08_AXI_WVALID;
  wire [0:0]irq_const_tieoff_dout;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [0:0]proc_sys_reset_2_interconnect_aresetn;
  wire [39:0]ps_e_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]ps_e_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]ps_e_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]ps_e_M_AXI_HPM0_FPD_ARID;
  wire [7:0]ps_e_M_AXI_HPM0_FPD_ARLEN;
  wire ps_e_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]ps_e_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]ps_e_M_AXI_HPM0_FPD_ARQOS;
  wire ps_e_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]ps_e_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]ps_e_M_AXI_HPM0_FPD_ARUSER;
  wire ps_e_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]ps_e_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]ps_e_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]ps_e_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]ps_e_M_AXI_HPM0_FPD_AWID;
  wire [7:0]ps_e_M_AXI_HPM0_FPD_AWLEN;
  wire ps_e_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]ps_e_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]ps_e_M_AXI_HPM0_FPD_AWQOS;
  wire ps_e_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]ps_e_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]ps_e_M_AXI_HPM0_FPD_AWUSER;
  wire ps_e_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]ps_e_M_AXI_HPM0_FPD_BID;
  wire ps_e_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]ps_e_M_AXI_HPM0_FPD_BRESP;
  wire ps_e_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]ps_e_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]ps_e_M_AXI_HPM0_FPD_RID;
  wire ps_e_M_AXI_HPM0_FPD_RLAST;
  wire ps_e_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]ps_e_M_AXI_HPM0_FPD_RRESP;
  wire ps_e_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]ps_e_M_AXI_HPM0_FPD_WDATA;
  wire ps_e_M_AXI_HPM0_FPD_WLAST;
  wire ps_e_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]ps_e_M_AXI_HPM0_FPD_WSTRB;
  wire ps_e_M_AXI_HPM0_FPD_WVALID;
  wire [39:0]ps_e_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]ps_e_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]ps_e_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]ps_e_M_AXI_HPM0_LPD_ARID;
  wire [7:0]ps_e_M_AXI_HPM0_LPD_ARLEN;
  wire ps_e_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]ps_e_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]ps_e_M_AXI_HPM0_LPD_ARQOS;
  wire ps_e_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]ps_e_M_AXI_HPM0_LPD_ARSIZE;
  wire ps_e_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]ps_e_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]ps_e_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]ps_e_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]ps_e_M_AXI_HPM0_LPD_AWID;
  wire [7:0]ps_e_M_AXI_HPM0_LPD_AWLEN;
  wire ps_e_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]ps_e_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]ps_e_M_AXI_HPM0_LPD_AWQOS;
  wire ps_e_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]ps_e_M_AXI_HPM0_LPD_AWSIZE;
  wire ps_e_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]ps_e_M_AXI_HPM0_LPD_BID;
  wire ps_e_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]ps_e_M_AXI_HPM0_LPD_BRESP;
  wire ps_e_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]ps_e_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]ps_e_M_AXI_HPM0_LPD_RID;
  wire ps_e_M_AXI_HPM0_LPD_RLAST;
  wire ps_e_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]ps_e_M_AXI_HPM0_LPD_RRESP;
  wire ps_e_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]ps_e_M_AXI_HPM0_LPD_WDATA;
  wire ps_e_M_AXI_HPM0_LPD_WLAST;
  wire ps_e_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]ps_e_M_AXI_HPM0_LPD_WSTRB;
  wire ps_e_M_AXI_HPM0_LPD_WVALID;
  wire ps_e_pl_clk0;
  wire remap_accel_1_interrupt;
  wire [63:0]remap_accel_1_m_axi_gmem0_ARADDR;
  wire [1:0]remap_accel_1_m_axi_gmem0_ARBURST;
  wire [3:0]remap_accel_1_m_axi_gmem0_ARCACHE;
  wire [0:0]remap_accel_1_m_axi_gmem0_ARID;
  wire [7:0]remap_accel_1_m_axi_gmem0_ARLEN;
  wire [1:0]remap_accel_1_m_axi_gmem0_ARLOCK;
  wire [2:0]remap_accel_1_m_axi_gmem0_ARPROT;
  wire [3:0]remap_accel_1_m_axi_gmem0_ARQOS;
  wire remap_accel_1_m_axi_gmem0_ARREADY;
  wire [3:0]remap_accel_1_m_axi_gmem0_ARREGION;
  wire [2:0]remap_accel_1_m_axi_gmem0_ARSIZE;
  wire remap_accel_1_m_axi_gmem0_ARVALID;
  wire [31:0]remap_accel_1_m_axi_gmem0_RDATA;
  wire [0:0]remap_accel_1_m_axi_gmem0_RID;
  wire remap_accel_1_m_axi_gmem0_RLAST;
  wire remap_accel_1_m_axi_gmem0_RREADY;
  wire [1:0]remap_accel_1_m_axi_gmem0_RRESP;
  wire remap_accel_1_m_axi_gmem0_RVALID;
  wire [63:0]remap_accel_1_m_axi_gmem1_ARADDR;
  wire [1:0]remap_accel_1_m_axi_gmem1_ARBURST;
  wire [3:0]remap_accel_1_m_axi_gmem1_ARCACHE;
  wire [0:0]remap_accel_1_m_axi_gmem1_ARID;
  wire [7:0]remap_accel_1_m_axi_gmem1_ARLEN;
  wire [1:0]remap_accel_1_m_axi_gmem1_ARLOCK;
  wire [2:0]remap_accel_1_m_axi_gmem1_ARPROT;
  wire [3:0]remap_accel_1_m_axi_gmem1_ARQOS;
  wire remap_accel_1_m_axi_gmem1_ARREADY;
  wire [3:0]remap_accel_1_m_axi_gmem1_ARREGION;
  wire [2:0]remap_accel_1_m_axi_gmem1_ARSIZE;
  wire remap_accel_1_m_axi_gmem1_ARVALID;
  wire [31:0]remap_accel_1_m_axi_gmem1_RDATA;
  wire [0:0]remap_accel_1_m_axi_gmem1_RID;
  wire remap_accel_1_m_axi_gmem1_RLAST;
  wire remap_accel_1_m_axi_gmem1_RREADY;
  wire [1:0]remap_accel_1_m_axi_gmem1_RRESP;
  wire remap_accel_1_m_axi_gmem1_RVALID;
  wire [63:0]remap_accel_1_m_axi_gmem2_ARADDR;
  wire [1:0]remap_accel_1_m_axi_gmem2_ARBURST;
  wire [3:0]remap_accel_1_m_axi_gmem2_ARCACHE;
  wire [0:0]remap_accel_1_m_axi_gmem2_ARID;
  wire [7:0]remap_accel_1_m_axi_gmem2_ARLEN;
  wire [1:0]remap_accel_1_m_axi_gmem2_ARLOCK;
  wire [2:0]remap_accel_1_m_axi_gmem2_ARPROT;
  wire [3:0]remap_accel_1_m_axi_gmem2_ARQOS;
  wire remap_accel_1_m_axi_gmem2_ARREADY;
  wire [3:0]remap_accel_1_m_axi_gmem2_ARREGION;
  wire [2:0]remap_accel_1_m_axi_gmem2_ARSIZE;
  wire remap_accel_1_m_axi_gmem2_ARVALID;
  wire [31:0]remap_accel_1_m_axi_gmem2_RDATA;
  wire [0:0]remap_accel_1_m_axi_gmem2_RID;
  wire remap_accel_1_m_axi_gmem2_RLAST;
  wire remap_accel_1_m_axi_gmem2_RREADY;
  wire [1:0]remap_accel_1_m_axi_gmem2_RRESP;
  wire remap_accel_1_m_axi_gmem2_RVALID;
  wire [63:0]remap_accel_1_m_axi_gmem3_AWADDR;
  wire [1:0]remap_accel_1_m_axi_gmem3_AWBURST;
  wire [3:0]remap_accel_1_m_axi_gmem3_AWCACHE;
  wire [0:0]remap_accel_1_m_axi_gmem3_AWID;
  wire [7:0]remap_accel_1_m_axi_gmem3_AWLEN;
  wire [1:0]remap_accel_1_m_axi_gmem3_AWLOCK;
  wire [2:0]remap_accel_1_m_axi_gmem3_AWPROT;
  wire [3:0]remap_accel_1_m_axi_gmem3_AWQOS;
  wire remap_accel_1_m_axi_gmem3_AWREADY;
  wire [3:0]remap_accel_1_m_axi_gmem3_AWREGION;
  wire [2:0]remap_accel_1_m_axi_gmem3_AWSIZE;
  wire remap_accel_1_m_axi_gmem3_AWVALID;
  wire [0:0]remap_accel_1_m_axi_gmem3_BID;
  wire remap_accel_1_m_axi_gmem3_BREADY;
  wire [1:0]remap_accel_1_m_axi_gmem3_BRESP;
  wire remap_accel_1_m_axi_gmem3_BVALID;
  wire [31:0]remap_accel_1_m_axi_gmem3_WDATA;
  wire remap_accel_1_m_axi_gmem3_WLAST;
  wire remap_accel_1_m_axi_gmem3_WREADY;
  wire [3:0]remap_accel_1_m_axi_gmem3_WSTRB;
  wire remap_accel_1_m_axi_gmem3_WVALID;
  wire sobel_accel_1_interrupt;
  wire [63:0]sobel_accel_1_m_axi_gmem1_ARADDR;
  wire [1:0]sobel_accel_1_m_axi_gmem1_ARBURST;
  wire [3:0]sobel_accel_1_m_axi_gmem1_ARCACHE;
  wire [0:0]sobel_accel_1_m_axi_gmem1_ARID;
  wire [7:0]sobel_accel_1_m_axi_gmem1_ARLEN;
  wire [1:0]sobel_accel_1_m_axi_gmem1_ARLOCK;
  wire [2:0]sobel_accel_1_m_axi_gmem1_ARPROT;
  wire [3:0]sobel_accel_1_m_axi_gmem1_ARQOS;
  wire sobel_accel_1_m_axi_gmem1_ARREADY;
  wire [3:0]sobel_accel_1_m_axi_gmem1_ARREGION;
  wire [2:0]sobel_accel_1_m_axi_gmem1_ARSIZE;
  wire sobel_accel_1_m_axi_gmem1_ARVALID;
  wire [255:0]sobel_accel_1_m_axi_gmem1_RDATA;
  wire [0:0]sobel_accel_1_m_axi_gmem1_RID;
  wire sobel_accel_1_m_axi_gmem1_RLAST;
  wire sobel_accel_1_m_axi_gmem1_RREADY;
  wire [1:0]sobel_accel_1_m_axi_gmem1_RRESP;
  wire sobel_accel_1_m_axi_gmem1_RVALID;
  wire [63:0]sobel_accel_1_m_axi_gmem2_AWADDR;
  wire [1:0]sobel_accel_1_m_axi_gmem2_AWBURST;
  wire [3:0]sobel_accel_1_m_axi_gmem2_AWCACHE;
  wire [0:0]sobel_accel_1_m_axi_gmem2_AWID;
  wire [7:0]sobel_accel_1_m_axi_gmem2_AWLEN;
  wire [1:0]sobel_accel_1_m_axi_gmem2_AWLOCK;
  wire [2:0]sobel_accel_1_m_axi_gmem2_AWPROT;
  wire [3:0]sobel_accel_1_m_axi_gmem2_AWQOS;
  wire sobel_accel_1_m_axi_gmem2_AWREADY;
  wire [3:0]sobel_accel_1_m_axi_gmem2_AWREGION;
  wire [2:0]sobel_accel_1_m_axi_gmem2_AWSIZE;
  wire sobel_accel_1_m_axi_gmem2_AWVALID;
  wire [0:0]sobel_accel_1_m_axi_gmem2_BID;
  wire sobel_accel_1_m_axi_gmem2_BREADY;
  wire [1:0]sobel_accel_1_m_axi_gmem2_BRESP;
  wire sobel_accel_1_m_axi_gmem2_BVALID;
  wire [255:0]sobel_accel_1_m_axi_gmem2_WDATA;
  wire sobel_accel_1_m_axi_gmem2_WLAST;
  wire sobel_accel_1_m_axi_gmem2_WREADY;
  wire [31:0]sobel_accel_1_m_axi_gmem2_WSTRB;
  wire sobel_accel_1_m_axi_gmem2_WVALID;
  wire [63:0]sobel_accel_1_m_axi_gmem3_AWADDR;
  wire [1:0]sobel_accel_1_m_axi_gmem3_AWBURST;
  wire [3:0]sobel_accel_1_m_axi_gmem3_AWCACHE;
  wire [0:0]sobel_accel_1_m_axi_gmem3_AWID;
  wire [7:0]sobel_accel_1_m_axi_gmem3_AWLEN;
  wire [1:0]sobel_accel_1_m_axi_gmem3_AWLOCK;
  wire [2:0]sobel_accel_1_m_axi_gmem3_AWPROT;
  wire [3:0]sobel_accel_1_m_axi_gmem3_AWQOS;
  wire sobel_accel_1_m_axi_gmem3_AWREADY;
  wire [3:0]sobel_accel_1_m_axi_gmem3_AWREGION;
  wire [2:0]sobel_accel_1_m_axi_gmem3_AWSIZE;
  wire sobel_accel_1_m_axi_gmem3_AWVALID;
  wire [0:0]sobel_accel_1_m_axi_gmem3_BID;
  wire sobel_accel_1_m_axi_gmem3_BREADY;
  wire [1:0]sobel_accel_1_m_axi_gmem3_BRESP;
  wire sobel_accel_1_m_axi_gmem3_BVALID;
  wire [255:0]sobel_accel_1_m_axi_gmem3_WDATA;
  wire sobel_accel_1_m_axi_gmem3_WLAST;
  wire sobel_accel_1_m_axi_gmem3_WREADY;
  wire [31:0]sobel_accel_1_m_axi_gmem3_WSTRB;
  wire sobel_accel_1_m_axi_gmem3_WVALID;
  wire threshold_accel_1_interrupt;
  wire [63:0]threshold_accel_1_m_axi_gmem1_ARADDR;
  wire [1:0]threshold_accel_1_m_axi_gmem1_ARBURST;
  wire [3:0]threshold_accel_1_m_axi_gmem1_ARCACHE;
  wire [0:0]threshold_accel_1_m_axi_gmem1_ARID;
  wire [7:0]threshold_accel_1_m_axi_gmem1_ARLEN;
  wire [1:0]threshold_accel_1_m_axi_gmem1_ARLOCK;
  wire [2:0]threshold_accel_1_m_axi_gmem1_ARPROT;
  wire [3:0]threshold_accel_1_m_axi_gmem1_ARQOS;
  wire threshold_accel_1_m_axi_gmem1_ARREADY;
  wire [3:0]threshold_accel_1_m_axi_gmem1_ARREGION;
  wire [2:0]threshold_accel_1_m_axi_gmem1_ARSIZE;
  wire threshold_accel_1_m_axi_gmem1_ARVALID;
  wire [255:0]threshold_accel_1_m_axi_gmem1_RDATA;
  wire [0:0]threshold_accel_1_m_axi_gmem1_RID;
  wire threshold_accel_1_m_axi_gmem1_RLAST;
  wire threshold_accel_1_m_axi_gmem1_RREADY;
  wire [1:0]threshold_accel_1_m_axi_gmem1_RRESP;
  wire threshold_accel_1_m_axi_gmem1_RVALID;
  wire [63:0]threshold_accel_1_m_axi_gmem2_AWADDR;
  wire [1:0]threshold_accel_1_m_axi_gmem2_AWBURST;
  wire [3:0]threshold_accel_1_m_axi_gmem2_AWCACHE;
  wire [0:0]threshold_accel_1_m_axi_gmem2_AWID;
  wire [7:0]threshold_accel_1_m_axi_gmem2_AWLEN;
  wire [1:0]threshold_accel_1_m_axi_gmem2_AWLOCK;
  wire [2:0]threshold_accel_1_m_axi_gmem2_AWPROT;
  wire [3:0]threshold_accel_1_m_axi_gmem2_AWQOS;
  wire threshold_accel_1_m_axi_gmem2_AWREADY;
  wire [3:0]threshold_accel_1_m_axi_gmem2_AWREGION;
  wire [2:0]threshold_accel_1_m_axi_gmem2_AWSIZE;
  wire threshold_accel_1_m_axi_gmem2_AWVALID;
  wire [0:0]threshold_accel_1_m_axi_gmem2_BID;
  wire threshold_accel_1_m_axi_gmem2_BREADY;
  wire [1:0]threshold_accel_1_m_axi_gmem2_BRESP;
  wire threshold_accel_1_m_axi_gmem2_BVALID;
  wire [255:0]threshold_accel_1_m_axi_gmem2_WDATA;
  wire threshold_accel_1_m_axi_gmem2_WLAST;
  wire threshold_accel_1_m_axi_gmem2_WREADY;
  wire [31:0]threshold_accel_1_m_axi_gmem2_WSTRB;
  wire threshold_accel_1_m_axi_gmem2_WVALID;

  vitis_design_axi_ic_ps_e_S_AXI_HP0_FPD_0 axi_ic_ps_e_S_AXI_HP0_FPD
       (.ACLK(clk_wiz_0_clk_out4),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out4),
        .M00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_AXI_araddr(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RLAST),
        .M00_AXI_rready(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WLAST),
        .M00_AXI_wready(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out4),
        .S00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S00_AXI_araddr(remap_accel_1_m_axi_gmem0_ARADDR),
        .S00_AXI_arburst(remap_accel_1_m_axi_gmem0_ARBURST),
        .S00_AXI_arcache(remap_accel_1_m_axi_gmem0_ARCACHE),
        .S00_AXI_arid(remap_accel_1_m_axi_gmem0_ARID),
        .S00_AXI_arlen(remap_accel_1_m_axi_gmem0_ARLEN),
        .S00_AXI_arlock(remap_accel_1_m_axi_gmem0_ARLOCK),
        .S00_AXI_arprot(remap_accel_1_m_axi_gmem0_ARPROT),
        .S00_AXI_arqos(remap_accel_1_m_axi_gmem0_ARQOS),
        .S00_AXI_arready(remap_accel_1_m_axi_gmem0_ARREADY),
        .S00_AXI_arregion(remap_accel_1_m_axi_gmem0_ARREGION),
        .S00_AXI_arsize(remap_accel_1_m_axi_gmem0_ARSIZE),
        .S00_AXI_arvalid(remap_accel_1_m_axi_gmem0_ARVALID),
        .S00_AXI_rdata(remap_accel_1_m_axi_gmem0_RDATA),
        .S00_AXI_rid(remap_accel_1_m_axi_gmem0_RID),
        .S00_AXI_rlast(remap_accel_1_m_axi_gmem0_RLAST),
        .S00_AXI_rready(remap_accel_1_m_axi_gmem0_RREADY),
        .S00_AXI_rresp(remap_accel_1_m_axi_gmem0_RRESP),
        .S00_AXI_rvalid(remap_accel_1_m_axi_gmem0_RVALID),
        .S01_ACLK(clk_wiz_0_clk_out4),
        .S01_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S01_AXI_araddr(remap_accel_1_m_axi_gmem1_ARADDR),
        .S01_AXI_arburst(remap_accel_1_m_axi_gmem1_ARBURST),
        .S01_AXI_arcache(remap_accel_1_m_axi_gmem1_ARCACHE),
        .S01_AXI_arid(remap_accel_1_m_axi_gmem1_ARID),
        .S01_AXI_arlen(remap_accel_1_m_axi_gmem1_ARLEN),
        .S01_AXI_arlock(remap_accel_1_m_axi_gmem1_ARLOCK),
        .S01_AXI_arprot(remap_accel_1_m_axi_gmem1_ARPROT),
        .S01_AXI_arqos(remap_accel_1_m_axi_gmem1_ARQOS),
        .S01_AXI_arready(remap_accel_1_m_axi_gmem1_ARREADY),
        .S01_AXI_arregion(remap_accel_1_m_axi_gmem1_ARREGION),
        .S01_AXI_arsize(remap_accel_1_m_axi_gmem1_ARSIZE),
        .S01_AXI_arvalid(remap_accel_1_m_axi_gmem1_ARVALID),
        .S01_AXI_rdata(remap_accel_1_m_axi_gmem1_RDATA),
        .S01_AXI_rid(remap_accel_1_m_axi_gmem1_RID),
        .S01_AXI_rlast(remap_accel_1_m_axi_gmem1_RLAST),
        .S01_AXI_rready(remap_accel_1_m_axi_gmem1_RREADY),
        .S01_AXI_rresp(remap_accel_1_m_axi_gmem1_RRESP),
        .S01_AXI_rvalid(remap_accel_1_m_axi_gmem1_RVALID),
        .S02_ACLK(clk_wiz_0_clk_out4),
        .S02_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S02_AXI_araddr(remap_accel_1_m_axi_gmem2_ARADDR),
        .S02_AXI_arburst(remap_accel_1_m_axi_gmem2_ARBURST),
        .S02_AXI_arcache(remap_accel_1_m_axi_gmem2_ARCACHE),
        .S02_AXI_arid(remap_accel_1_m_axi_gmem2_ARID),
        .S02_AXI_arlen(remap_accel_1_m_axi_gmem2_ARLEN),
        .S02_AXI_arlock(remap_accel_1_m_axi_gmem2_ARLOCK),
        .S02_AXI_arprot(remap_accel_1_m_axi_gmem2_ARPROT),
        .S02_AXI_arqos(remap_accel_1_m_axi_gmem2_ARQOS),
        .S02_AXI_arready(remap_accel_1_m_axi_gmem2_ARREADY),
        .S02_AXI_arregion(remap_accel_1_m_axi_gmem2_ARREGION),
        .S02_AXI_arsize(remap_accel_1_m_axi_gmem2_ARSIZE),
        .S02_AXI_arvalid(remap_accel_1_m_axi_gmem2_ARVALID),
        .S02_AXI_rdata(remap_accel_1_m_axi_gmem2_RDATA),
        .S02_AXI_rid(remap_accel_1_m_axi_gmem2_RID),
        .S02_AXI_rlast(remap_accel_1_m_axi_gmem2_RLAST),
        .S02_AXI_rready(remap_accel_1_m_axi_gmem2_RREADY),
        .S02_AXI_rresp(remap_accel_1_m_axi_gmem2_RRESP),
        .S02_AXI_rvalid(remap_accel_1_m_axi_gmem2_RVALID),
        .S03_ACLK(clk_wiz_0_clk_out4),
        .S03_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S03_AXI_awaddr(remap_accel_1_m_axi_gmem3_AWADDR),
        .S03_AXI_awburst(remap_accel_1_m_axi_gmem3_AWBURST),
        .S03_AXI_awcache(remap_accel_1_m_axi_gmem3_AWCACHE),
        .S03_AXI_awid(remap_accel_1_m_axi_gmem3_AWID),
        .S03_AXI_awlen(remap_accel_1_m_axi_gmem3_AWLEN),
        .S03_AXI_awlock(remap_accel_1_m_axi_gmem3_AWLOCK),
        .S03_AXI_awprot(remap_accel_1_m_axi_gmem3_AWPROT),
        .S03_AXI_awqos(remap_accel_1_m_axi_gmem3_AWQOS),
        .S03_AXI_awready(remap_accel_1_m_axi_gmem3_AWREADY),
        .S03_AXI_awregion(remap_accel_1_m_axi_gmem3_AWREGION),
        .S03_AXI_awsize(remap_accel_1_m_axi_gmem3_AWSIZE),
        .S03_AXI_awvalid(remap_accel_1_m_axi_gmem3_AWVALID),
        .S03_AXI_bid(remap_accel_1_m_axi_gmem3_BID),
        .S03_AXI_bready(remap_accel_1_m_axi_gmem3_BREADY),
        .S03_AXI_bresp(remap_accel_1_m_axi_gmem3_BRESP),
        .S03_AXI_bvalid(remap_accel_1_m_axi_gmem3_BVALID),
        .S03_AXI_wdata(remap_accel_1_m_axi_gmem3_WDATA),
        .S03_AXI_wlast(remap_accel_1_m_axi_gmem3_WLAST),
        .S03_AXI_wready(remap_accel_1_m_axi_gmem3_WREADY),
        .S03_AXI_wstrb(remap_accel_1_m_axi_gmem3_WSTRB),
        .S03_AXI_wvalid(remap_accel_1_m_axi_gmem3_WVALID),
        .S04_ACLK(clk_wiz_0_clk_out4),
        .S04_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S04_AXI_araddr(canny_accel_1_m_axi_gmem1_ARADDR),
        .S04_AXI_arburst(canny_accel_1_m_axi_gmem1_ARBURST),
        .S04_AXI_arcache(canny_accel_1_m_axi_gmem1_ARCACHE),
        .S04_AXI_arid(canny_accel_1_m_axi_gmem1_ARID),
        .S04_AXI_arlen(canny_accel_1_m_axi_gmem1_ARLEN),
        .S04_AXI_arlock(canny_accel_1_m_axi_gmem1_ARLOCK),
        .S04_AXI_arprot(canny_accel_1_m_axi_gmem1_ARPROT),
        .S04_AXI_arqos(canny_accel_1_m_axi_gmem1_ARQOS),
        .S04_AXI_arready(canny_accel_1_m_axi_gmem1_ARREADY),
        .S04_AXI_arregion(canny_accel_1_m_axi_gmem1_ARREGION),
        .S04_AXI_arsize(canny_accel_1_m_axi_gmem1_ARSIZE),
        .S04_AXI_arvalid(canny_accel_1_m_axi_gmem1_ARVALID),
        .S04_AXI_rdata(canny_accel_1_m_axi_gmem1_RDATA),
        .S04_AXI_rid(canny_accel_1_m_axi_gmem1_RID),
        .S04_AXI_rlast(canny_accel_1_m_axi_gmem1_RLAST),
        .S04_AXI_rready(canny_accel_1_m_axi_gmem1_RREADY),
        .S04_AXI_rresp(canny_accel_1_m_axi_gmem1_RRESP),
        .S04_AXI_rvalid(canny_accel_1_m_axi_gmem1_RVALID),
        .S05_ACLK(clk_wiz_0_clk_out4),
        .S05_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S05_AXI_awaddr(canny_accel_1_m_axi_gmem2_AWADDR),
        .S05_AXI_awburst(canny_accel_1_m_axi_gmem2_AWBURST),
        .S05_AXI_awcache(canny_accel_1_m_axi_gmem2_AWCACHE),
        .S05_AXI_awid(canny_accel_1_m_axi_gmem2_AWID),
        .S05_AXI_awlen(canny_accel_1_m_axi_gmem2_AWLEN),
        .S05_AXI_awlock(canny_accel_1_m_axi_gmem2_AWLOCK),
        .S05_AXI_awprot(canny_accel_1_m_axi_gmem2_AWPROT),
        .S05_AXI_awqos(canny_accel_1_m_axi_gmem2_AWQOS),
        .S05_AXI_awready(canny_accel_1_m_axi_gmem2_AWREADY),
        .S05_AXI_awregion(canny_accel_1_m_axi_gmem2_AWREGION),
        .S05_AXI_awsize(canny_accel_1_m_axi_gmem2_AWSIZE),
        .S05_AXI_awvalid(canny_accel_1_m_axi_gmem2_AWVALID),
        .S05_AXI_bid(canny_accel_1_m_axi_gmem2_BID),
        .S05_AXI_bready(canny_accel_1_m_axi_gmem2_BREADY),
        .S05_AXI_bresp(canny_accel_1_m_axi_gmem2_BRESP),
        .S05_AXI_bvalid(canny_accel_1_m_axi_gmem2_BVALID),
        .S05_AXI_wdata(canny_accel_1_m_axi_gmem2_WDATA),
        .S05_AXI_wlast(canny_accel_1_m_axi_gmem2_WLAST),
        .S05_AXI_wready(canny_accel_1_m_axi_gmem2_WREADY),
        .S05_AXI_wstrb(canny_accel_1_m_axi_gmem2_WSTRB),
        .S05_AXI_wvalid(canny_accel_1_m_axi_gmem2_WVALID),
        .S06_ACLK(clk_wiz_0_clk_out4),
        .S06_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S06_AXI_araddr(sobel_accel_1_m_axi_gmem1_ARADDR),
        .S06_AXI_arburst(sobel_accel_1_m_axi_gmem1_ARBURST),
        .S06_AXI_arcache(sobel_accel_1_m_axi_gmem1_ARCACHE),
        .S06_AXI_arid(sobel_accel_1_m_axi_gmem1_ARID),
        .S06_AXI_arlen(sobel_accel_1_m_axi_gmem1_ARLEN),
        .S06_AXI_arlock(sobel_accel_1_m_axi_gmem1_ARLOCK),
        .S06_AXI_arprot(sobel_accel_1_m_axi_gmem1_ARPROT),
        .S06_AXI_arqos(sobel_accel_1_m_axi_gmem1_ARQOS),
        .S06_AXI_arready(sobel_accel_1_m_axi_gmem1_ARREADY),
        .S06_AXI_arregion(sobel_accel_1_m_axi_gmem1_ARREGION),
        .S06_AXI_arsize(sobel_accel_1_m_axi_gmem1_ARSIZE),
        .S06_AXI_arvalid(sobel_accel_1_m_axi_gmem1_ARVALID),
        .S06_AXI_rdata(sobel_accel_1_m_axi_gmem1_RDATA),
        .S06_AXI_rid(sobel_accel_1_m_axi_gmem1_RID),
        .S06_AXI_rlast(sobel_accel_1_m_axi_gmem1_RLAST),
        .S06_AXI_rready(sobel_accel_1_m_axi_gmem1_RREADY),
        .S06_AXI_rresp(sobel_accel_1_m_axi_gmem1_RRESP),
        .S06_AXI_rvalid(sobel_accel_1_m_axi_gmem1_RVALID),
        .S07_ACLK(clk_wiz_0_clk_out4),
        .S07_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S07_AXI_awaddr(sobel_accel_1_m_axi_gmem2_AWADDR),
        .S07_AXI_awburst(sobel_accel_1_m_axi_gmem2_AWBURST),
        .S07_AXI_awcache(sobel_accel_1_m_axi_gmem2_AWCACHE),
        .S07_AXI_awid(sobel_accel_1_m_axi_gmem2_AWID),
        .S07_AXI_awlen(sobel_accel_1_m_axi_gmem2_AWLEN),
        .S07_AXI_awlock(sobel_accel_1_m_axi_gmem2_AWLOCK),
        .S07_AXI_awprot(sobel_accel_1_m_axi_gmem2_AWPROT),
        .S07_AXI_awqos(sobel_accel_1_m_axi_gmem2_AWQOS),
        .S07_AXI_awready(sobel_accel_1_m_axi_gmem2_AWREADY),
        .S07_AXI_awregion(sobel_accel_1_m_axi_gmem2_AWREGION),
        .S07_AXI_awsize(sobel_accel_1_m_axi_gmem2_AWSIZE),
        .S07_AXI_awvalid(sobel_accel_1_m_axi_gmem2_AWVALID),
        .S07_AXI_bid(sobel_accel_1_m_axi_gmem2_BID),
        .S07_AXI_bready(sobel_accel_1_m_axi_gmem2_BREADY),
        .S07_AXI_bresp(sobel_accel_1_m_axi_gmem2_BRESP),
        .S07_AXI_bvalid(sobel_accel_1_m_axi_gmem2_BVALID),
        .S07_AXI_wdata(sobel_accel_1_m_axi_gmem2_WDATA),
        .S07_AXI_wlast(sobel_accel_1_m_axi_gmem2_WLAST),
        .S07_AXI_wready(sobel_accel_1_m_axi_gmem2_WREADY),
        .S07_AXI_wstrb(sobel_accel_1_m_axi_gmem2_WSTRB),
        .S07_AXI_wvalid(sobel_accel_1_m_axi_gmem2_WVALID),
        .S08_ACLK(clk_wiz_0_clk_out4),
        .S08_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S08_AXI_awaddr(sobel_accel_1_m_axi_gmem3_AWADDR),
        .S08_AXI_awburst(sobel_accel_1_m_axi_gmem3_AWBURST),
        .S08_AXI_awcache(sobel_accel_1_m_axi_gmem3_AWCACHE),
        .S08_AXI_awid(sobel_accel_1_m_axi_gmem3_AWID),
        .S08_AXI_awlen(sobel_accel_1_m_axi_gmem3_AWLEN),
        .S08_AXI_awlock(sobel_accel_1_m_axi_gmem3_AWLOCK),
        .S08_AXI_awprot(sobel_accel_1_m_axi_gmem3_AWPROT),
        .S08_AXI_awqos(sobel_accel_1_m_axi_gmem3_AWQOS),
        .S08_AXI_awready(sobel_accel_1_m_axi_gmem3_AWREADY),
        .S08_AXI_awregion(sobel_accel_1_m_axi_gmem3_AWREGION),
        .S08_AXI_awsize(sobel_accel_1_m_axi_gmem3_AWSIZE),
        .S08_AXI_awvalid(sobel_accel_1_m_axi_gmem3_AWVALID),
        .S08_AXI_bid(sobel_accel_1_m_axi_gmem3_BID),
        .S08_AXI_bready(sobel_accel_1_m_axi_gmem3_BREADY),
        .S08_AXI_bresp(sobel_accel_1_m_axi_gmem3_BRESP),
        .S08_AXI_bvalid(sobel_accel_1_m_axi_gmem3_BVALID),
        .S08_AXI_wdata(sobel_accel_1_m_axi_gmem3_WDATA),
        .S08_AXI_wlast(sobel_accel_1_m_axi_gmem3_WLAST),
        .S08_AXI_wready(sobel_accel_1_m_axi_gmem3_WREADY),
        .S08_AXI_wstrb(sobel_accel_1_m_axi_gmem3_WSTRB),
        .S08_AXI_wvalid(sobel_accel_1_m_axi_gmem3_WVALID),
        .S09_ACLK(clk_wiz_0_clk_out4),
        .S09_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S09_AXI_araddr(threshold_accel_1_m_axi_gmem1_ARADDR),
        .S09_AXI_arburst(threshold_accel_1_m_axi_gmem1_ARBURST),
        .S09_AXI_arcache(threshold_accel_1_m_axi_gmem1_ARCACHE),
        .S09_AXI_arid(threshold_accel_1_m_axi_gmem1_ARID),
        .S09_AXI_arlen(threshold_accel_1_m_axi_gmem1_ARLEN),
        .S09_AXI_arlock(threshold_accel_1_m_axi_gmem1_ARLOCK),
        .S09_AXI_arprot(threshold_accel_1_m_axi_gmem1_ARPROT),
        .S09_AXI_arqos(threshold_accel_1_m_axi_gmem1_ARQOS),
        .S09_AXI_arready(threshold_accel_1_m_axi_gmem1_ARREADY),
        .S09_AXI_arregion(threshold_accel_1_m_axi_gmem1_ARREGION),
        .S09_AXI_arsize(threshold_accel_1_m_axi_gmem1_ARSIZE),
        .S09_AXI_arvalid(threshold_accel_1_m_axi_gmem1_ARVALID),
        .S09_AXI_rdata(threshold_accel_1_m_axi_gmem1_RDATA),
        .S09_AXI_rid(threshold_accel_1_m_axi_gmem1_RID),
        .S09_AXI_rlast(threshold_accel_1_m_axi_gmem1_RLAST),
        .S09_AXI_rready(threshold_accel_1_m_axi_gmem1_RREADY),
        .S09_AXI_rresp(threshold_accel_1_m_axi_gmem1_RRESP),
        .S09_AXI_rvalid(threshold_accel_1_m_axi_gmem1_RVALID),
        .S10_ACLK(clk_wiz_0_clk_out4),
        .S10_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S10_AXI_awaddr(threshold_accel_1_m_axi_gmem2_AWADDR),
        .S10_AXI_awburst(threshold_accel_1_m_axi_gmem2_AWBURST),
        .S10_AXI_awcache(threshold_accel_1_m_axi_gmem2_AWCACHE),
        .S10_AXI_awid(threshold_accel_1_m_axi_gmem2_AWID),
        .S10_AXI_awlen(threshold_accel_1_m_axi_gmem2_AWLEN),
        .S10_AXI_awlock(threshold_accel_1_m_axi_gmem2_AWLOCK),
        .S10_AXI_awprot(threshold_accel_1_m_axi_gmem2_AWPROT),
        .S10_AXI_awqos(threshold_accel_1_m_axi_gmem2_AWQOS),
        .S10_AXI_awready(threshold_accel_1_m_axi_gmem2_AWREADY),
        .S10_AXI_awregion(threshold_accel_1_m_axi_gmem2_AWREGION),
        .S10_AXI_awsize(threshold_accel_1_m_axi_gmem2_AWSIZE),
        .S10_AXI_awvalid(threshold_accel_1_m_axi_gmem2_AWVALID),
        .S10_AXI_bid(threshold_accel_1_m_axi_gmem2_BID),
        .S10_AXI_bready(threshold_accel_1_m_axi_gmem2_BREADY),
        .S10_AXI_bresp(threshold_accel_1_m_axi_gmem2_BRESP),
        .S10_AXI_bvalid(threshold_accel_1_m_axi_gmem2_BVALID),
        .S10_AXI_wdata(threshold_accel_1_m_axi_gmem2_WDATA),
        .S10_AXI_wlast(threshold_accel_1_m_axi_gmem2_WLAST),
        .S10_AXI_wready(threshold_accel_1_m_axi_gmem2_WREADY),
        .S10_AXI_wstrb(threshold_accel_1_m_axi_gmem2_WSTRB),
        .S10_AXI_wvalid(threshold_accel_1_m_axi_gmem2_WVALID),
        .S11_ACLK(clk_wiz_0_clk_out4),
        .S11_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S11_AXI_araddr(gaussian_filter_accel_1_m_axi_gmem1_ARADDR),
        .S11_AXI_arburst(gaussian_filter_accel_1_m_axi_gmem1_ARBURST),
        .S11_AXI_arcache(gaussian_filter_accel_1_m_axi_gmem1_ARCACHE),
        .S11_AXI_arid(gaussian_filter_accel_1_m_axi_gmem1_ARID),
        .S11_AXI_arlen(gaussian_filter_accel_1_m_axi_gmem1_ARLEN),
        .S11_AXI_arlock(gaussian_filter_accel_1_m_axi_gmem1_ARLOCK),
        .S11_AXI_arprot(gaussian_filter_accel_1_m_axi_gmem1_ARPROT),
        .S11_AXI_arqos(gaussian_filter_accel_1_m_axi_gmem1_ARQOS),
        .S11_AXI_arready(gaussian_filter_accel_1_m_axi_gmem1_ARREADY),
        .S11_AXI_arregion(gaussian_filter_accel_1_m_axi_gmem1_ARREGION),
        .S11_AXI_arsize(gaussian_filter_accel_1_m_axi_gmem1_ARSIZE),
        .S11_AXI_arvalid(gaussian_filter_accel_1_m_axi_gmem1_ARVALID),
        .S11_AXI_rdata(gaussian_filter_accel_1_m_axi_gmem1_RDATA),
        .S11_AXI_rid(gaussian_filter_accel_1_m_axi_gmem1_RID),
        .S11_AXI_rlast(gaussian_filter_accel_1_m_axi_gmem1_RLAST),
        .S11_AXI_rready(gaussian_filter_accel_1_m_axi_gmem1_RREADY),
        .S11_AXI_rresp(gaussian_filter_accel_1_m_axi_gmem1_RRESP),
        .S11_AXI_rvalid(gaussian_filter_accel_1_m_axi_gmem1_RVALID),
        .S12_ACLK(clk_wiz_0_clk_out4),
        .S12_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S12_AXI_awaddr(gaussian_filter_accel_1_m_axi_gmem2_AWADDR),
        .S12_AXI_awburst(gaussian_filter_accel_1_m_axi_gmem2_AWBURST),
        .S12_AXI_awcache(gaussian_filter_accel_1_m_axi_gmem2_AWCACHE),
        .S12_AXI_awid(gaussian_filter_accel_1_m_axi_gmem2_AWID),
        .S12_AXI_awlen(gaussian_filter_accel_1_m_axi_gmem2_AWLEN),
        .S12_AXI_awlock(gaussian_filter_accel_1_m_axi_gmem2_AWLOCK),
        .S12_AXI_awprot(gaussian_filter_accel_1_m_axi_gmem2_AWPROT),
        .S12_AXI_awqos(gaussian_filter_accel_1_m_axi_gmem2_AWQOS),
        .S12_AXI_awready(gaussian_filter_accel_1_m_axi_gmem2_AWREADY),
        .S12_AXI_awregion(gaussian_filter_accel_1_m_axi_gmem2_AWREGION),
        .S12_AXI_awsize(gaussian_filter_accel_1_m_axi_gmem2_AWSIZE),
        .S12_AXI_awvalid(gaussian_filter_accel_1_m_axi_gmem2_AWVALID),
        .S12_AXI_bid(gaussian_filter_accel_1_m_axi_gmem2_BID),
        .S12_AXI_bready(gaussian_filter_accel_1_m_axi_gmem2_BREADY),
        .S12_AXI_bresp(gaussian_filter_accel_1_m_axi_gmem2_BRESP),
        .S12_AXI_bvalid(gaussian_filter_accel_1_m_axi_gmem2_BVALID),
        .S12_AXI_wdata(gaussian_filter_accel_1_m_axi_gmem2_WDATA),
        .S12_AXI_wlast(gaussian_filter_accel_1_m_axi_gmem2_WLAST),
        .S12_AXI_wready(gaussian_filter_accel_1_m_axi_gmem2_WREADY),
        .S12_AXI_wstrb(gaussian_filter_accel_1_m_axi_gmem2_WSTRB),
        .S12_AXI_wvalid(gaussian_filter_accel_1_m_axi_gmem2_WVALID),
        .S13_ACLK(clk_wiz_0_clk_out4),
        .S13_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S13_AXI_araddr(image_thresholding_kernel00_1_m_axi_gmem_ARADDR),
        .S13_AXI_arburst(image_thresholding_kernel00_1_m_axi_gmem_ARBURST),
        .S13_AXI_arcache(image_thresholding_kernel00_1_m_axi_gmem_ARCACHE),
        .S13_AXI_arid(image_thresholding_kernel00_1_m_axi_gmem_ARID),
        .S13_AXI_arlen(image_thresholding_kernel00_1_m_axi_gmem_ARLEN),
        .S13_AXI_arlock(image_thresholding_kernel00_1_m_axi_gmem_ARLOCK),
        .S13_AXI_arprot(image_thresholding_kernel00_1_m_axi_gmem_ARPROT),
        .S13_AXI_arqos(image_thresholding_kernel00_1_m_axi_gmem_ARQOS),
        .S13_AXI_arready(image_thresholding_kernel00_1_m_axi_gmem_ARREADY),
        .S13_AXI_arregion(image_thresholding_kernel00_1_m_axi_gmem_ARREGION),
        .S13_AXI_arsize(image_thresholding_kernel00_1_m_axi_gmem_ARSIZE),
        .S13_AXI_arvalid(image_thresholding_kernel00_1_m_axi_gmem_ARVALID),
        .S13_AXI_awaddr(image_thresholding_kernel00_1_m_axi_gmem_AWADDR),
        .S13_AXI_awburst(image_thresholding_kernel00_1_m_axi_gmem_AWBURST),
        .S13_AXI_awcache(image_thresholding_kernel00_1_m_axi_gmem_AWCACHE),
        .S13_AXI_awid(image_thresholding_kernel00_1_m_axi_gmem_AWID),
        .S13_AXI_awlen(image_thresholding_kernel00_1_m_axi_gmem_AWLEN),
        .S13_AXI_awlock(image_thresholding_kernel00_1_m_axi_gmem_AWLOCK),
        .S13_AXI_awprot(image_thresholding_kernel00_1_m_axi_gmem_AWPROT),
        .S13_AXI_awqos(image_thresholding_kernel00_1_m_axi_gmem_AWQOS),
        .S13_AXI_awready(image_thresholding_kernel00_1_m_axi_gmem_AWREADY),
        .S13_AXI_awregion(image_thresholding_kernel00_1_m_axi_gmem_AWREGION),
        .S13_AXI_awsize(image_thresholding_kernel00_1_m_axi_gmem_AWSIZE),
        .S13_AXI_awvalid(image_thresholding_kernel00_1_m_axi_gmem_AWVALID),
        .S13_AXI_bid(image_thresholding_kernel00_1_m_axi_gmem_BID),
        .S13_AXI_bready(image_thresholding_kernel00_1_m_axi_gmem_BREADY),
        .S13_AXI_bresp(image_thresholding_kernel00_1_m_axi_gmem_BRESP),
        .S13_AXI_bvalid(image_thresholding_kernel00_1_m_axi_gmem_BVALID),
        .S13_AXI_rdata(image_thresholding_kernel00_1_m_axi_gmem_RDATA),
        .S13_AXI_rid(image_thresholding_kernel00_1_m_axi_gmem_RID),
        .S13_AXI_rlast(image_thresholding_kernel00_1_m_axi_gmem_RLAST),
        .S13_AXI_rready(image_thresholding_kernel00_1_m_axi_gmem_RREADY),
        .S13_AXI_rresp(image_thresholding_kernel00_1_m_axi_gmem_RRESP),
        .S13_AXI_rvalid(image_thresholding_kernel00_1_m_axi_gmem_RVALID),
        .S13_AXI_wdata(image_thresholding_kernel00_1_m_axi_gmem_WDATA),
        .S13_AXI_wlast(image_thresholding_kernel00_1_m_axi_gmem_WLAST),
        .S13_AXI_wready(image_thresholding_kernel00_1_m_axi_gmem_WREADY),
        .S13_AXI_wstrb(image_thresholding_kernel00_1_m_axi_gmem_WSTRB),
        .S13_AXI_wvalid(image_thresholding_kernel00_1_m_axi_gmem_WVALID),
        .S14_ACLK(clk_wiz_0_clk_out4),
        .S14_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S14_AXI_araddr(image_thresholding_kernel01_1_m_axi_gmem0_ARADDR),
        .S14_AXI_arburst(image_thresholding_kernel01_1_m_axi_gmem0_ARBURST),
        .S14_AXI_arcache(image_thresholding_kernel01_1_m_axi_gmem0_ARCACHE),
        .S14_AXI_arid(image_thresholding_kernel01_1_m_axi_gmem0_ARID),
        .S14_AXI_arlen(image_thresholding_kernel01_1_m_axi_gmem0_ARLEN),
        .S14_AXI_arlock(image_thresholding_kernel01_1_m_axi_gmem0_ARLOCK),
        .S14_AXI_arprot(image_thresholding_kernel01_1_m_axi_gmem0_ARPROT),
        .S14_AXI_arqos(image_thresholding_kernel01_1_m_axi_gmem0_ARQOS),
        .S14_AXI_arready(image_thresholding_kernel01_1_m_axi_gmem0_ARREADY),
        .S14_AXI_arregion(image_thresholding_kernel01_1_m_axi_gmem0_ARREGION),
        .S14_AXI_arsize(image_thresholding_kernel01_1_m_axi_gmem0_ARSIZE),
        .S14_AXI_arvalid(image_thresholding_kernel01_1_m_axi_gmem0_ARVALID),
        .S14_AXI_rdata(image_thresholding_kernel01_1_m_axi_gmem0_RDATA),
        .S14_AXI_rid(image_thresholding_kernel01_1_m_axi_gmem0_RID),
        .S14_AXI_rlast(image_thresholding_kernel01_1_m_axi_gmem0_RLAST),
        .S14_AXI_rready(image_thresholding_kernel01_1_m_axi_gmem0_RREADY),
        .S14_AXI_rresp(image_thresholding_kernel01_1_m_axi_gmem0_RRESP),
        .S14_AXI_rvalid(image_thresholding_kernel01_1_m_axi_gmem0_RVALID),
        .S15_ACLK(clk_wiz_0_clk_out4),
        .S15_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S15_AXI_awaddr(image_thresholding_kernel01_1_m_axi_gmem1_AWADDR),
        .S15_AXI_awburst(image_thresholding_kernel01_1_m_axi_gmem1_AWBURST),
        .S15_AXI_awcache(image_thresholding_kernel01_1_m_axi_gmem1_AWCACHE),
        .S15_AXI_awid(image_thresholding_kernel01_1_m_axi_gmem1_AWID),
        .S15_AXI_awlen(image_thresholding_kernel01_1_m_axi_gmem1_AWLEN),
        .S15_AXI_awlock(image_thresholding_kernel01_1_m_axi_gmem1_AWLOCK),
        .S15_AXI_awprot(image_thresholding_kernel01_1_m_axi_gmem1_AWPROT),
        .S15_AXI_awqos(image_thresholding_kernel01_1_m_axi_gmem1_AWQOS),
        .S15_AXI_awready(image_thresholding_kernel01_1_m_axi_gmem1_AWREADY),
        .S15_AXI_awregion(image_thresholding_kernel01_1_m_axi_gmem1_AWREGION),
        .S15_AXI_awsize(image_thresholding_kernel01_1_m_axi_gmem1_AWSIZE),
        .S15_AXI_awvalid(image_thresholding_kernel01_1_m_axi_gmem1_AWVALID),
        .S15_AXI_bid(image_thresholding_kernel01_1_m_axi_gmem1_BID),
        .S15_AXI_bready(image_thresholding_kernel01_1_m_axi_gmem1_BREADY),
        .S15_AXI_bresp(image_thresholding_kernel01_1_m_axi_gmem1_BRESP),
        .S15_AXI_bvalid(image_thresholding_kernel01_1_m_axi_gmem1_BVALID),
        .S15_AXI_wdata(image_thresholding_kernel01_1_m_axi_gmem1_WDATA),
        .S15_AXI_wlast(image_thresholding_kernel01_1_m_axi_gmem1_WLAST),
        .S15_AXI_wready(image_thresholding_kernel01_1_m_axi_gmem1_WREADY),
        .S15_AXI_wstrb(image_thresholding_kernel01_1_m_axi_gmem1_WSTRB),
        .S15_AXI_wvalid(image_thresholding_kernel01_1_m_axi_gmem1_WVALID));
  vitis_design_axi_ic_ps_e_S_AXI_HP1_FPD_0 axi_ic_ps_e_S_AXI_HP1_FPD
       (.ACLK(clk_wiz_0_clk_out4),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out4),
        .M00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_AXI_araddr(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARID),
        .M00_AXI_arlen(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWID),
        .M00_AXI_awlen(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_BID),
        .M00_AXI_bready(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RDATA),
        .M00_AXI_rid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RID),
        .M00_AXI_rlast(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RLAST),
        .M00_AXI_rready(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WLAST),
        .M00_AXI_wready(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out4),
        .S00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S00_AXI_araddr(fast_accel_1_m_axi_gmem0_ARADDR),
        .S00_AXI_arburst(fast_accel_1_m_axi_gmem0_ARBURST),
        .S00_AXI_arcache(fast_accel_1_m_axi_gmem0_ARCACHE),
        .S00_AXI_arid(fast_accel_1_m_axi_gmem0_ARID),
        .S00_AXI_arlen(fast_accel_1_m_axi_gmem0_ARLEN),
        .S00_AXI_arlock(fast_accel_1_m_axi_gmem0_ARLOCK),
        .S00_AXI_arprot(fast_accel_1_m_axi_gmem0_ARPROT),
        .S00_AXI_arqos(fast_accel_1_m_axi_gmem0_ARQOS),
        .S00_AXI_arready(fast_accel_1_m_axi_gmem0_ARREADY),
        .S00_AXI_arregion(fast_accel_1_m_axi_gmem0_ARREGION),
        .S00_AXI_arsize(fast_accel_1_m_axi_gmem0_ARSIZE),
        .S00_AXI_arvalid(fast_accel_1_m_axi_gmem0_ARVALID),
        .S00_AXI_rdata(fast_accel_1_m_axi_gmem0_RDATA),
        .S00_AXI_rid(fast_accel_1_m_axi_gmem0_RID),
        .S00_AXI_rlast(fast_accel_1_m_axi_gmem0_RLAST),
        .S00_AXI_rready(fast_accel_1_m_axi_gmem0_RREADY),
        .S00_AXI_rresp(fast_accel_1_m_axi_gmem0_RRESP),
        .S00_AXI_rvalid(fast_accel_1_m_axi_gmem0_RVALID),
        .S01_ACLK(clk_wiz_0_clk_out4),
        .S01_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S01_AXI_awaddr(fast_accel_1_m_axi_gmem1_AWADDR),
        .S01_AXI_awburst(fast_accel_1_m_axi_gmem1_AWBURST),
        .S01_AXI_awcache(fast_accel_1_m_axi_gmem1_AWCACHE),
        .S01_AXI_awid(fast_accel_1_m_axi_gmem1_AWID),
        .S01_AXI_awlen(fast_accel_1_m_axi_gmem1_AWLEN),
        .S01_AXI_awlock(fast_accel_1_m_axi_gmem1_AWLOCK),
        .S01_AXI_awprot(fast_accel_1_m_axi_gmem1_AWPROT),
        .S01_AXI_awqos(fast_accel_1_m_axi_gmem1_AWQOS),
        .S01_AXI_awready(fast_accel_1_m_axi_gmem1_AWREADY),
        .S01_AXI_awregion(fast_accel_1_m_axi_gmem1_AWREGION),
        .S01_AXI_awsize(fast_accel_1_m_axi_gmem1_AWSIZE),
        .S01_AXI_awvalid(fast_accel_1_m_axi_gmem1_AWVALID),
        .S01_AXI_bid(fast_accel_1_m_axi_gmem1_BID),
        .S01_AXI_bready(fast_accel_1_m_axi_gmem1_BREADY),
        .S01_AXI_bresp(fast_accel_1_m_axi_gmem1_BRESP),
        .S01_AXI_bvalid(fast_accel_1_m_axi_gmem1_BVALID),
        .S01_AXI_wdata(fast_accel_1_m_axi_gmem1_WDATA),
        .S01_AXI_wlast(fast_accel_1_m_axi_gmem1_WLAST),
        .S01_AXI_wready(fast_accel_1_m_axi_gmem1_WREADY),
        .S01_AXI_wstrb(fast_accel_1_m_axi_gmem1_WSTRB),
        .S01_AXI_wvalid(fast_accel_1_m_axi_gmem1_WVALID));
  vitis_design_axi_intc_0_0 axi_intc_0
       (.intr(axi_intc_0_intr_1_interrupt_concat_dout),
        .irq(axi_intc_0_irq),
        .s_axi_aclk(clk_wiz_0_clk_out3),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_2_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  vitis_design_axi_intc_0_intr_1_interrupt_concat_0 axi_intc_0_intr_1_interrupt_concat
       (.In0(canny_accel_1_interrupt),
        .In1(remap_accel_1_interrupt),
        .In10(irq_const_tieoff_dout),
        .In11(irq_const_tieoff_dout),
        .In12(irq_const_tieoff_dout),
        .In13(irq_const_tieoff_dout),
        .In14(irq_const_tieoff_dout),
        .In15(irq_const_tieoff_dout),
        .In16(irq_const_tieoff_dout),
        .In17(irq_const_tieoff_dout),
        .In18(irq_const_tieoff_dout),
        .In19(irq_const_tieoff_dout),
        .In2(sobel_accel_1_interrupt),
        .In20(irq_const_tieoff_dout),
        .In21(irq_const_tieoff_dout),
        .In22(irq_const_tieoff_dout),
        .In23(irq_const_tieoff_dout),
        .In24(irq_const_tieoff_dout),
        .In25(irq_const_tieoff_dout),
        .In26(irq_const_tieoff_dout),
        .In27(irq_const_tieoff_dout),
        .In28(irq_const_tieoff_dout),
        .In29(irq_const_tieoff_dout),
        .In3(threshold_accel_1_interrupt),
        .In30(irq_const_tieoff_dout),
        .In31(irq_const_tieoff_dout),
        .In4(gaussian_filter_accel_1_interrupt),
        .In5(image_thresholding_kernel00_1_interrupt),
        .In6(image_thresholding_kernel01_1_interrupt),
        .In7(fast_accel_1_interrupt),
        .In8(irq_const_tieoff_dout),
        .In9(irq_const_tieoff_dout),
        .dout(axi_intc_0_intr_1_interrupt_concat_dout));
  vitis_design_axi_interconnect_lpd_0 axi_interconnect_lpd
       (.ACLK(clk_wiz_0_clk_out2),
        .ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out2),
        .M00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI1_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI1_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI1_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI1_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI1_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI1_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI1_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI1_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI1_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI1_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI1_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI1_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI1_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI1_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI1_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI1_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI1_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI1_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI1_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI1_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI1_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI1_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI1_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI1_RDATA),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI1_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI1_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI1_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI1_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI1_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI1_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI1_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI1_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI1_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out2),
        .S00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .S00_AXI_araddr(axi_vip_1_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_vip_1_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_vip_1_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_vip_1_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_vip_1_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_vip_1_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_vip_1_M_AXI_ARQOS),
        .S00_AXI_arready(axi_vip_1_M_AXI_ARREADY),
        .S00_AXI_arsize(axi_vip_1_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_vip_1_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_1_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_vip_1_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_vip_1_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_vip_1_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_vip_1_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_vip_1_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_vip_1_M_AXI_AWQOS),
        .S00_AXI_awready(axi_vip_1_M_AXI_AWREADY),
        .S00_AXI_awsize(axi_vip_1_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_vip_1_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_1_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_1_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_1_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_1_M_AXI_RDATA),
        .S00_AXI_rlast(axi_vip_1_M_AXI_RLAST),
        .S00_AXI_rready(axi_vip_1_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_1_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_1_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_1_M_AXI_WDATA),
        .S00_AXI_wlast(axi_vip_1_M_AXI_WLAST),
        .S00_AXI_wready(axi_vip_1_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_1_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_1_M_AXI_WVALID));
  vitis_design_axi_register_slice_0_0 axi_register_slice_0
       (.aclk(clk_wiz_0_clk_out2),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axi_arready(1'b0),
        .m_axi_awready(1'b0),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wready(1'b0),
        .s_axi_araddr(interconnect_axihpm0fpd_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_axihpm0fpd_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_axihpm0fpd_M00_AXI_ARCACHE),
        .s_axi_arid(interconnect_axihpm0fpd_M00_AXI_ARID),
        .s_axi_arlen(interconnect_axihpm0fpd_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_axihpm0fpd_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_axihpm0fpd_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect_axihpm0fpd_M00_AXI_ARQOS),
        .s_axi_arready(interconnect_axihpm0fpd_M00_AXI_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(interconnect_axihpm0fpd_M00_AXI_ARSIZE),
        .s_axi_aruser(interconnect_axihpm0fpd_M00_AXI_ARUSER),
        .s_axi_arvalid(interconnect_axihpm0fpd_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_axihpm0fpd_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_axihpm0fpd_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_axihpm0fpd_M00_AXI_AWCACHE),
        .s_axi_awid(interconnect_axihpm0fpd_M00_AXI_AWID),
        .s_axi_awlen(interconnect_axihpm0fpd_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_axihpm0fpd_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_axihpm0fpd_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect_axihpm0fpd_M00_AXI_AWQOS),
        .s_axi_awready(interconnect_axihpm0fpd_M00_AXI_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(interconnect_axihpm0fpd_M00_AXI_AWSIZE),
        .s_axi_awuser(interconnect_axihpm0fpd_M00_AXI_AWUSER),
        .s_axi_awvalid(interconnect_axihpm0fpd_M00_AXI_AWVALID),
        .s_axi_bid(interconnect_axihpm0fpd_M00_AXI_BID),
        .s_axi_bready(interconnect_axihpm0fpd_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_axihpm0fpd_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_axihpm0fpd_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_axihpm0fpd_M00_AXI_RDATA),
        .s_axi_rid(interconnect_axihpm0fpd_M00_AXI_RID),
        .s_axi_rlast(interconnect_axihpm0fpd_M00_AXI_RLAST),
        .s_axi_rready(interconnect_axihpm0fpd_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_axihpm0fpd_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_axihpm0fpd_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_axihpm0fpd_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_axihpm0fpd_M00_AXI_WLAST),
        .s_axi_wready(interconnect_axihpm0fpd_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_axihpm0fpd_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_axihpm0fpd_M00_AXI_WVALID));
  vitis_design_axi_vip_0_0 axi_vip_0
       (.aclk(clk_wiz_0_clk_out2),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_vip_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_0_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_0_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_vip_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_0_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_0_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rlast(axi_vip_0_M_AXI_RLAST),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_0_M_AXI_WLAST),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  vitis_design_axi_vip_1_0 axi_vip_1
       (.aclk(clk_wiz_0_clk_out2),
        .aresetn(proc_sys_reset_1_interconnect_aresetn),
        .m_axi_araddr(axi_vip_1_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_1_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_1_M_AXI_ARCACHE),
        .m_axi_arlen(axi_vip_1_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_1_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_1_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_1_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_1_M_AXI_ARREADY),
        .m_axi_arsize(axi_vip_1_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_vip_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_1_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_1_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_1_M_AXI_AWCACHE),
        .m_axi_awlen(axi_vip_1_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_1_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_1_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_1_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_1_M_AXI_AWREADY),
        .m_axi_awsize(axi_vip_1_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_vip_1_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_1_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_1_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_1_M_AXI_RDATA),
        .m_axi_rlast(axi_vip_1_M_AXI_RLAST),
        .m_axi_rready(axi_vip_1_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_1_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_1_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_1_M_AXI_WLAST),
        .m_axi_wready(axi_vip_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_1_M_AXI_WVALID));
  vitis_design_canny_accel_1_0 canny_accel_1
       (.ap_clk(clk_wiz_0_clk_out4),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .interrupt(canny_accel_1_interrupt),
        .m_axi_gmem1_ARADDR(canny_accel_1_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(canny_accel_1_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(canny_accel_1_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARID(canny_accel_1_m_axi_gmem1_ARID),
        .m_axi_gmem1_ARLEN(canny_accel_1_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(canny_accel_1_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(canny_accel_1_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(canny_accel_1_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(canny_accel_1_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARREGION(canny_accel_1_m_axi_gmem1_ARREGION),
        .m_axi_gmem1_ARSIZE(canny_accel_1_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(canny_accel_1_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWREADY(1'b0),
        .m_axi_gmem1_BID(1'b0),
        .m_axi_gmem1_BRESP({1'b0,1'b0}),
        .m_axi_gmem1_BVALID(1'b0),
        .m_axi_gmem1_RDATA(canny_accel_1_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RID(canny_accel_1_m_axi_gmem1_RID),
        .m_axi_gmem1_RLAST(canny_accel_1_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(canny_accel_1_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(canny_accel_1_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(canny_accel_1_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WREADY(1'b0),
        .m_axi_gmem2_ARREADY(1'b0),
        .m_axi_gmem2_AWADDR(canny_accel_1_m_axi_gmem2_AWADDR),
        .m_axi_gmem2_AWBURST(canny_accel_1_m_axi_gmem2_AWBURST),
        .m_axi_gmem2_AWCACHE(canny_accel_1_m_axi_gmem2_AWCACHE),
        .m_axi_gmem2_AWID(canny_accel_1_m_axi_gmem2_AWID),
        .m_axi_gmem2_AWLEN(canny_accel_1_m_axi_gmem2_AWLEN),
        .m_axi_gmem2_AWLOCK(canny_accel_1_m_axi_gmem2_AWLOCK),
        .m_axi_gmem2_AWPROT(canny_accel_1_m_axi_gmem2_AWPROT),
        .m_axi_gmem2_AWQOS(canny_accel_1_m_axi_gmem2_AWQOS),
        .m_axi_gmem2_AWREADY(canny_accel_1_m_axi_gmem2_AWREADY),
        .m_axi_gmem2_AWREGION(canny_accel_1_m_axi_gmem2_AWREGION),
        .m_axi_gmem2_AWSIZE(canny_accel_1_m_axi_gmem2_AWSIZE),
        .m_axi_gmem2_AWVALID(canny_accel_1_m_axi_gmem2_AWVALID),
        .m_axi_gmem2_BID(canny_accel_1_m_axi_gmem2_BID),
        .m_axi_gmem2_BREADY(canny_accel_1_m_axi_gmem2_BREADY),
        .m_axi_gmem2_BRESP(canny_accel_1_m_axi_gmem2_BRESP),
        .m_axi_gmem2_BVALID(canny_accel_1_m_axi_gmem2_BVALID),
        .m_axi_gmem2_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem2_RID(1'b0),
        .m_axi_gmem2_RLAST(1'b0),
        .m_axi_gmem2_RRESP({1'b0,1'b0}),
        .m_axi_gmem2_RVALID(1'b0),
        .m_axi_gmem2_WDATA(canny_accel_1_m_axi_gmem2_WDATA),
        .m_axi_gmem2_WLAST(canny_accel_1_m_axi_gmem2_WLAST),
        .m_axi_gmem2_WREADY(canny_accel_1_m_axi_gmem2_WREADY),
        .m_axi_gmem2_WSTRB(canny_accel_1_m_axi_gmem2_WSTRB),
        .m_axi_gmem2_WVALID(canny_accel_1_m_axi_gmem2_WVALID),
        .s_axi_control_ARADDR(interconnect_axilite_M02_AXI_ARADDR),
        .s_axi_control_ARREADY(interconnect_axilite_M02_AXI_ARREADY),
        .s_axi_control_ARVALID(interconnect_axilite_M02_AXI_ARVALID),
        .s_axi_control_AWADDR(interconnect_axilite_M02_AXI_AWADDR),
        .s_axi_control_AWREADY(interconnect_axilite_M02_AXI_AWREADY),
        .s_axi_control_AWVALID(interconnect_axilite_M02_AXI_AWVALID),
        .s_axi_control_BREADY(interconnect_axilite_M02_AXI_BREADY),
        .s_axi_control_BRESP(interconnect_axilite_M02_AXI_BRESP),
        .s_axi_control_BVALID(interconnect_axilite_M02_AXI_BVALID),
        .s_axi_control_RDATA(interconnect_axilite_M02_AXI_RDATA),
        .s_axi_control_RREADY(interconnect_axilite_M02_AXI_RREADY),
        .s_axi_control_RRESP(interconnect_axilite_M02_AXI_RRESP),
        .s_axi_control_RVALID(interconnect_axilite_M02_AXI_RVALID),
        .s_axi_control_WDATA(interconnect_axilite_M02_AXI_WDATA),
        .s_axi_control_WREADY(interconnect_axilite_M02_AXI_WREADY),
        .s_axi_control_WSTRB(interconnect_axilite_M02_AXI_WSTRB),
        .s_axi_control_WVALID(interconnect_axilite_M02_AXI_WVALID));
  vitis_design_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(ps_e_pl_clk0),
        .clk_out1(clk_wiz_0_clk_out4),
        .clk_out2(clk_wiz_0_clk_out2),
        .clk_out3(clk_wiz_0_clk_out3),
        .clk_out4(clk_wiz_0_clk_out5),
        .clk_out5(clk_wiz_0_clk_out6),
        .clk_out6(clk_wiz_0_clk_out7),
        .clk_out7(clk_wiz_0_clk_out8),
        .locked(clk_wiz_0_locked),
        .resetn(Net));
  vitis_design_fast_accel_1_0 fast_accel_1
       (.ap_clk(clk_wiz_0_clk_out4),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .interrupt(fast_accel_1_interrupt),
        .m_axi_gmem0_ARADDR(fast_accel_1_m_axi_gmem0_ARADDR),
        .m_axi_gmem0_ARBURST(fast_accel_1_m_axi_gmem0_ARBURST),
        .m_axi_gmem0_ARCACHE(fast_accel_1_m_axi_gmem0_ARCACHE),
        .m_axi_gmem0_ARID(fast_accel_1_m_axi_gmem0_ARID),
        .m_axi_gmem0_ARLEN(fast_accel_1_m_axi_gmem0_ARLEN),
        .m_axi_gmem0_ARLOCK(fast_accel_1_m_axi_gmem0_ARLOCK),
        .m_axi_gmem0_ARPROT(fast_accel_1_m_axi_gmem0_ARPROT),
        .m_axi_gmem0_ARQOS(fast_accel_1_m_axi_gmem0_ARQOS),
        .m_axi_gmem0_ARREADY(fast_accel_1_m_axi_gmem0_ARREADY),
        .m_axi_gmem0_ARREGION(fast_accel_1_m_axi_gmem0_ARREGION),
        .m_axi_gmem0_ARSIZE(fast_accel_1_m_axi_gmem0_ARSIZE),
        .m_axi_gmem0_ARVALID(fast_accel_1_m_axi_gmem0_ARVALID),
        .m_axi_gmem0_AWREADY(1'b0),
        .m_axi_gmem0_BID(1'b0),
        .m_axi_gmem0_BRESP({1'b0,1'b0}),
        .m_axi_gmem0_BVALID(1'b0),
        .m_axi_gmem0_RDATA(fast_accel_1_m_axi_gmem0_RDATA),
        .m_axi_gmem0_RID(fast_accel_1_m_axi_gmem0_RID),
        .m_axi_gmem0_RLAST(fast_accel_1_m_axi_gmem0_RLAST),
        .m_axi_gmem0_RREADY(fast_accel_1_m_axi_gmem0_RREADY),
        .m_axi_gmem0_RRESP(fast_accel_1_m_axi_gmem0_RRESP),
        .m_axi_gmem0_RVALID(fast_accel_1_m_axi_gmem0_RVALID),
        .m_axi_gmem0_WREADY(1'b0),
        .m_axi_gmem1_ARREADY(1'b0),
        .m_axi_gmem1_AWADDR(fast_accel_1_m_axi_gmem1_AWADDR),
        .m_axi_gmem1_AWBURST(fast_accel_1_m_axi_gmem1_AWBURST),
        .m_axi_gmem1_AWCACHE(fast_accel_1_m_axi_gmem1_AWCACHE),
        .m_axi_gmem1_AWID(fast_accel_1_m_axi_gmem1_AWID),
        .m_axi_gmem1_AWLEN(fast_accel_1_m_axi_gmem1_AWLEN),
        .m_axi_gmem1_AWLOCK(fast_accel_1_m_axi_gmem1_AWLOCK),
        .m_axi_gmem1_AWPROT(fast_accel_1_m_axi_gmem1_AWPROT),
        .m_axi_gmem1_AWQOS(fast_accel_1_m_axi_gmem1_AWQOS),
        .m_axi_gmem1_AWREADY(fast_accel_1_m_axi_gmem1_AWREADY),
        .m_axi_gmem1_AWREGION(fast_accel_1_m_axi_gmem1_AWREGION),
        .m_axi_gmem1_AWSIZE(fast_accel_1_m_axi_gmem1_AWSIZE),
        .m_axi_gmem1_AWVALID(fast_accel_1_m_axi_gmem1_AWVALID),
        .m_axi_gmem1_BID(fast_accel_1_m_axi_gmem1_BID),
        .m_axi_gmem1_BREADY(fast_accel_1_m_axi_gmem1_BREADY),
        .m_axi_gmem1_BRESP(fast_accel_1_m_axi_gmem1_BRESP),
        .m_axi_gmem1_BVALID(fast_accel_1_m_axi_gmem1_BVALID),
        .m_axi_gmem1_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem1_RID(1'b0),
        .m_axi_gmem1_RLAST(1'b0),
        .m_axi_gmem1_RRESP({1'b0,1'b0}),
        .m_axi_gmem1_RVALID(1'b0),
        .m_axi_gmem1_WDATA(fast_accel_1_m_axi_gmem1_WDATA),
        .m_axi_gmem1_WLAST(fast_accel_1_m_axi_gmem1_WLAST),
        .m_axi_gmem1_WREADY(fast_accel_1_m_axi_gmem1_WREADY),
        .m_axi_gmem1_WSTRB(fast_accel_1_m_axi_gmem1_WSTRB),
        .m_axi_gmem1_WVALID(fast_accel_1_m_axi_gmem1_WVALID),
        .s_axi_control_ARADDR(interconnect_axilite_M08_AXI_ARADDR),
        .s_axi_control_ARREADY(interconnect_axilite_M08_AXI_ARREADY),
        .s_axi_control_ARVALID(interconnect_axilite_M08_AXI_ARVALID),
        .s_axi_control_AWADDR(interconnect_axilite_M08_AXI_AWADDR),
        .s_axi_control_AWREADY(interconnect_axilite_M08_AXI_AWREADY),
        .s_axi_control_AWVALID(interconnect_axilite_M08_AXI_AWVALID),
        .s_axi_control_BREADY(interconnect_axilite_M08_AXI_BREADY),
        .s_axi_control_BRESP(interconnect_axilite_M08_AXI_BRESP),
        .s_axi_control_BVALID(interconnect_axilite_M08_AXI_BVALID),
        .s_axi_control_RDATA(interconnect_axilite_M08_AXI_RDATA),
        .s_axi_control_RREADY(interconnect_axilite_M08_AXI_RREADY),
        .s_axi_control_RRESP(interconnect_axilite_M08_AXI_RRESP),
        .s_axi_control_RVALID(interconnect_axilite_M08_AXI_RVALID),
        .s_axi_control_WDATA(interconnect_axilite_M08_AXI_WDATA),
        .s_axi_control_WREADY(interconnect_axilite_M08_AXI_WREADY),
        .s_axi_control_WSTRB(interconnect_axilite_M08_AXI_WSTRB),
        .s_axi_control_WVALID(interconnect_axilite_M08_AXI_WVALID));
  vitis_design_gaussian_filter_accel_1_0 gaussian_filter_accel_1
       (.ap_clk(clk_wiz_0_clk_out4),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .interrupt(gaussian_filter_accel_1_interrupt),
        .m_axi_gmem1_ARADDR(gaussian_filter_accel_1_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(gaussian_filter_accel_1_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(gaussian_filter_accel_1_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARID(gaussian_filter_accel_1_m_axi_gmem1_ARID),
        .m_axi_gmem1_ARLEN(gaussian_filter_accel_1_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(gaussian_filter_accel_1_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(gaussian_filter_accel_1_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(gaussian_filter_accel_1_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(gaussian_filter_accel_1_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARREGION(gaussian_filter_accel_1_m_axi_gmem1_ARREGION),
        .m_axi_gmem1_ARSIZE(gaussian_filter_accel_1_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(gaussian_filter_accel_1_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWREADY(1'b0),
        .m_axi_gmem1_BID(1'b0),
        .m_axi_gmem1_BRESP({1'b0,1'b0}),
        .m_axi_gmem1_BVALID(1'b0),
        .m_axi_gmem1_RDATA(gaussian_filter_accel_1_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RID(gaussian_filter_accel_1_m_axi_gmem1_RID),
        .m_axi_gmem1_RLAST(gaussian_filter_accel_1_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(gaussian_filter_accel_1_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(gaussian_filter_accel_1_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(gaussian_filter_accel_1_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WREADY(1'b0),
        .m_axi_gmem2_ARREADY(1'b0),
        .m_axi_gmem2_AWADDR(gaussian_filter_accel_1_m_axi_gmem2_AWADDR),
        .m_axi_gmem2_AWBURST(gaussian_filter_accel_1_m_axi_gmem2_AWBURST),
        .m_axi_gmem2_AWCACHE(gaussian_filter_accel_1_m_axi_gmem2_AWCACHE),
        .m_axi_gmem2_AWID(gaussian_filter_accel_1_m_axi_gmem2_AWID),
        .m_axi_gmem2_AWLEN(gaussian_filter_accel_1_m_axi_gmem2_AWLEN),
        .m_axi_gmem2_AWLOCK(gaussian_filter_accel_1_m_axi_gmem2_AWLOCK),
        .m_axi_gmem2_AWPROT(gaussian_filter_accel_1_m_axi_gmem2_AWPROT),
        .m_axi_gmem2_AWQOS(gaussian_filter_accel_1_m_axi_gmem2_AWQOS),
        .m_axi_gmem2_AWREADY(gaussian_filter_accel_1_m_axi_gmem2_AWREADY),
        .m_axi_gmem2_AWREGION(gaussian_filter_accel_1_m_axi_gmem2_AWREGION),
        .m_axi_gmem2_AWSIZE(gaussian_filter_accel_1_m_axi_gmem2_AWSIZE),
        .m_axi_gmem2_AWVALID(gaussian_filter_accel_1_m_axi_gmem2_AWVALID),
        .m_axi_gmem2_BID(gaussian_filter_accel_1_m_axi_gmem2_BID),
        .m_axi_gmem2_BREADY(gaussian_filter_accel_1_m_axi_gmem2_BREADY),
        .m_axi_gmem2_BRESP(gaussian_filter_accel_1_m_axi_gmem2_BRESP),
        .m_axi_gmem2_BVALID(gaussian_filter_accel_1_m_axi_gmem2_BVALID),
        .m_axi_gmem2_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem2_RID(1'b0),
        .m_axi_gmem2_RLAST(1'b0),
        .m_axi_gmem2_RRESP({1'b0,1'b0}),
        .m_axi_gmem2_RVALID(1'b0),
        .m_axi_gmem2_WDATA(gaussian_filter_accel_1_m_axi_gmem2_WDATA),
        .m_axi_gmem2_WLAST(gaussian_filter_accel_1_m_axi_gmem2_WLAST),
        .m_axi_gmem2_WREADY(gaussian_filter_accel_1_m_axi_gmem2_WREADY),
        .m_axi_gmem2_WSTRB(gaussian_filter_accel_1_m_axi_gmem2_WSTRB),
        .m_axi_gmem2_WVALID(gaussian_filter_accel_1_m_axi_gmem2_WVALID),
        .s_axi_control_ARADDR(interconnect_axilite_M05_AXI_ARADDR),
        .s_axi_control_ARREADY(interconnect_axilite_M05_AXI_ARREADY),
        .s_axi_control_ARVALID(interconnect_axilite_M05_AXI_ARVALID),
        .s_axi_control_AWADDR(interconnect_axilite_M05_AXI_AWADDR),
        .s_axi_control_AWREADY(interconnect_axilite_M05_AXI_AWREADY),
        .s_axi_control_AWVALID(interconnect_axilite_M05_AXI_AWVALID),
        .s_axi_control_BREADY(interconnect_axilite_M05_AXI_BREADY),
        .s_axi_control_BRESP(interconnect_axilite_M05_AXI_BRESP),
        .s_axi_control_BVALID(interconnect_axilite_M05_AXI_BVALID),
        .s_axi_control_RDATA(interconnect_axilite_M05_AXI_RDATA),
        .s_axi_control_RREADY(interconnect_axilite_M05_AXI_RREADY),
        .s_axi_control_RRESP(interconnect_axilite_M05_AXI_RRESP),
        .s_axi_control_RVALID(interconnect_axilite_M05_AXI_RVALID),
        .s_axi_control_WDATA(interconnect_axilite_M05_AXI_WDATA),
        .s_axi_control_WREADY(interconnect_axilite_M05_AXI_WREADY),
        .s_axi_control_WSTRB(interconnect_axilite_M05_AXI_WSTRB),
        .s_axi_control_WVALID(interconnect_axilite_M05_AXI_WVALID));
  vitis_design_image_thresholding_kernel00_1_0 image_thresholding_kernel00_1
       (.ap_clk(clk_wiz_0_clk_out4),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .interrupt(image_thresholding_kernel00_1_interrupt),
        .m_axi_gmem_ARADDR(image_thresholding_kernel00_1_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(image_thresholding_kernel00_1_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(image_thresholding_kernel00_1_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARID(image_thresholding_kernel00_1_m_axi_gmem_ARID),
        .m_axi_gmem_ARLEN(image_thresholding_kernel00_1_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(image_thresholding_kernel00_1_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(image_thresholding_kernel00_1_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(image_thresholding_kernel00_1_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(image_thresholding_kernel00_1_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(image_thresholding_kernel00_1_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(image_thresholding_kernel00_1_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(image_thresholding_kernel00_1_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(image_thresholding_kernel00_1_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(image_thresholding_kernel00_1_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(image_thresholding_kernel00_1_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWID(image_thresholding_kernel00_1_m_axi_gmem_AWID),
        .m_axi_gmem_AWLEN(image_thresholding_kernel00_1_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(image_thresholding_kernel00_1_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(image_thresholding_kernel00_1_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(image_thresholding_kernel00_1_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(image_thresholding_kernel00_1_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(image_thresholding_kernel00_1_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(image_thresholding_kernel00_1_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(image_thresholding_kernel00_1_m_axi_gmem_AWVALID),
        .m_axi_gmem_BID(image_thresholding_kernel00_1_m_axi_gmem_BID),
        .m_axi_gmem_BREADY(image_thresholding_kernel00_1_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(image_thresholding_kernel00_1_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(image_thresholding_kernel00_1_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(image_thresholding_kernel00_1_m_axi_gmem_RDATA),
        .m_axi_gmem_RID(image_thresholding_kernel00_1_m_axi_gmem_RID),
        .m_axi_gmem_RLAST(image_thresholding_kernel00_1_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(image_thresholding_kernel00_1_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(image_thresholding_kernel00_1_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(image_thresholding_kernel00_1_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(image_thresholding_kernel00_1_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(image_thresholding_kernel00_1_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(image_thresholding_kernel00_1_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(image_thresholding_kernel00_1_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(image_thresholding_kernel00_1_m_axi_gmem_WVALID),
        .s_axi_control_ARADDR(interconnect_axilite_M06_AXI_ARADDR),
        .s_axi_control_ARREADY(interconnect_axilite_M06_AXI_ARREADY),
        .s_axi_control_ARVALID(interconnect_axilite_M06_AXI_ARVALID),
        .s_axi_control_AWADDR(interconnect_axilite_M06_AXI_AWADDR),
        .s_axi_control_AWREADY(interconnect_axilite_M06_AXI_AWREADY),
        .s_axi_control_AWVALID(interconnect_axilite_M06_AXI_AWVALID),
        .s_axi_control_BREADY(interconnect_axilite_M06_AXI_BREADY),
        .s_axi_control_BRESP(interconnect_axilite_M06_AXI_BRESP),
        .s_axi_control_BVALID(interconnect_axilite_M06_AXI_BVALID),
        .s_axi_control_RDATA(interconnect_axilite_M06_AXI_RDATA),
        .s_axi_control_RREADY(interconnect_axilite_M06_AXI_RREADY),
        .s_axi_control_RRESP(interconnect_axilite_M06_AXI_RRESP),
        .s_axi_control_RVALID(interconnect_axilite_M06_AXI_RVALID),
        .s_axi_control_WDATA(interconnect_axilite_M06_AXI_WDATA),
        .s_axi_control_WREADY(interconnect_axilite_M06_AXI_WREADY),
        .s_axi_control_WSTRB(interconnect_axilite_M06_AXI_WSTRB),
        .s_axi_control_WVALID(interconnect_axilite_M06_AXI_WVALID));
  vitis_design_image_thresholding_kernel01_1_0 image_thresholding_kernel01_1
       (.ap_clk(clk_wiz_0_clk_out4),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .interrupt(image_thresholding_kernel01_1_interrupt),
        .m_axi_gmem0_ARADDR(image_thresholding_kernel01_1_m_axi_gmem0_ARADDR),
        .m_axi_gmem0_ARBURST(image_thresholding_kernel01_1_m_axi_gmem0_ARBURST),
        .m_axi_gmem0_ARCACHE(image_thresholding_kernel01_1_m_axi_gmem0_ARCACHE),
        .m_axi_gmem0_ARID(image_thresholding_kernel01_1_m_axi_gmem0_ARID),
        .m_axi_gmem0_ARLEN(image_thresholding_kernel01_1_m_axi_gmem0_ARLEN),
        .m_axi_gmem0_ARLOCK(image_thresholding_kernel01_1_m_axi_gmem0_ARLOCK),
        .m_axi_gmem0_ARPROT(image_thresholding_kernel01_1_m_axi_gmem0_ARPROT),
        .m_axi_gmem0_ARQOS(image_thresholding_kernel01_1_m_axi_gmem0_ARQOS),
        .m_axi_gmem0_ARREADY(image_thresholding_kernel01_1_m_axi_gmem0_ARREADY),
        .m_axi_gmem0_ARREGION(image_thresholding_kernel01_1_m_axi_gmem0_ARREGION),
        .m_axi_gmem0_ARSIZE(image_thresholding_kernel01_1_m_axi_gmem0_ARSIZE),
        .m_axi_gmem0_ARVALID(image_thresholding_kernel01_1_m_axi_gmem0_ARVALID),
        .m_axi_gmem0_AWREADY(1'b0),
        .m_axi_gmem0_BID(1'b0),
        .m_axi_gmem0_BRESP({1'b0,1'b0}),
        .m_axi_gmem0_BVALID(1'b0),
        .m_axi_gmem0_RDATA(image_thresholding_kernel01_1_m_axi_gmem0_RDATA),
        .m_axi_gmem0_RID(image_thresholding_kernel01_1_m_axi_gmem0_RID),
        .m_axi_gmem0_RLAST(image_thresholding_kernel01_1_m_axi_gmem0_RLAST),
        .m_axi_gmem0_RREADY(image_thresholding_kernel01_1_m_axi_gmem0_RREADY),
        .m_axi_gmem0_RRESP(image_thresholding_kernel01_1_m_axi_gmem0_RRESP),
        .m_axi_gmem0_RVALID(image_thresholding_kernel01_1_m_axi_gmem0_RVALID),
        .m_axi_gmem0_WREADY(1'b0),
        .m_axi_gmem1_ARREADY(1'b0),
        .m_axi_gmem1_AWADDR(image_thresholding_kernel01_1_m_axi_gmem1_AWADDR),
        .m_axi_gmem1_AWBURST(image_thresholding_kernel01_1_m_axi_gmem1_AWBURST),
        .m_axi_gmem1_AWCACHE(image_thresholding_kernel01_1_m_axi_gmem1_AWCACHE),
        .m_axi_gmem1_AWID(image_thresholding_kernel01_1_m_axi_gmem1_AWID),
        .m_axi_gmem1_AWLEN(image_thresholding_kernel01_1_m_axi_gmem1_AWLEN),
        .m_axi_gmem1_AWLOCK(image_thresholding_kernel01_1_m_axi_gmem1_AWLOCK),
        .m_axi_gmem1_AWPROT(image_thresholding_kernel01_1_m_axi_gmem1_AWPROT),
        .m_axi_gmem1_AWQOS(image_thresholding_kernel01_1_m_axi_gmem1_AWQOS),
        .m_axi_gmem1_AWREADY(image_thresholding_kernel01_1_m_axi_gmem1_AWREADY),
        .m_axi_gmem1_AWREGION(image_thresholding_kernel01_1_m_axi_gmem1_AWREGION),
        .m_axi_gmem1_AWSIZE(image_thresholding_kernel01_1_m_axi_gmem1_AWSIZE),
        .m_axi_gmem1_AWVALID(image_thresholding_kernel01_1_m_axi_gmem1_AWVALID),
        .m_axi_gmem1_BID(image_thresholding_kernel01_1_m_axi_gmem1_BID),
        .m_axi_gmem1_BREADY(image_thresholding_kernel01_1_m_axi_gmem1_BREADY),
        .m_axi_gmem1_BRESP(image_thresholding_kernel01_1_m_axi_gmem1_BRESP),
        .m_axi_gmem1_BVALID(image_thresholding_kernel01_1_m_axi_gmem1_BVALID),
        .m_axi_gmem1_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem1_RID(1'b0),
        .m_axi_gmem1_RLAST(1'b0),
        .m_axi_gmem1_RRESP({1'b0,1'b0}),
        .m_axi_gmem1_RVALID(1'b0),
        .m_axi_gmem1_WDATA(image_thresholding_kernel01_1_m_axi_gmem1_WDATA),
        .m_axi_gmem1_WLAST(image_thresholding_kernel01_1_m_axi_gmem1_WLAST),
        .m_axi_gmem1_WREADY(image_thresholding_kernel01_1_m_axi_gmem1_WREADY),
        .m_axi_gmem1_WSTRB(image_thresholding_kernel01_1_m_axi_gmem1_WSTRB),
        .m_axi_gmem1_WVALID(image_thresholding_kernel01_1_m_axi_gmem1_WVALID),
        .s_axi_control_ARADDR(interconnect_axilite_M07_AXI_ARADDR),
        .s_axi_control_ARREADY(interconnect_axilite_M07_AXI_ARREADY),
        .s_axi_control_ARVALID(interconnect_axilite_M07_AXI_ARVALID),
        .s_axi_control_AWADDR(interconnect_axilite_M07_AXI_AWADDR),
        .s_axi_control_AWREADY(interconnect_axilite_M07_AXI_AWREADY),
        .s_axi_control_AWVALID(interconnect_axilite_M07_AXI_AWVALID),
        .s_axi_control_BREADY(interconnect_axilite_M07_AXI_BREADY),
        .s_axi_control_BRESP(interconnect_axilite_M07_AXI_BRESP),
        .s_axi_control_BVALID(interconnect_axilite_M07_AXI_BVALID),
        .s_axi_control_RDATA(interconnect_axilite_M07_AXI_RDATA),
        .s_axi_control_RREADY(interconnect_axilite_M07_AXI_RREADY),
        .s_axi_control_RRESP(interconnect_axilite_M07_AXI_RRESP),
        .s_axi_control_RVALID(interconnect_axilite_M07_AXI_RVALID),
        .s_axi_control_WDATA(interconnect_axilite_M07_AXI_WDATA),
        .s_axi_control_WREADY(interconnect_axilite_M07_AXI_WREADY),
        .s_axi_control_WSTRB(interconnect_axilite_M07_AXI_WSTRB),
        .s_axi_control_WVALID(interconnect_axilite_M07_AXI_WVALID));
  (* DPA_TRACE_SLAVE = "true" *) 
  vitis_design_interconnect_axifull_0 interconnect_axifull
       (.ACLK(clk_wiz_0_clk_out2),
        .ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out2),
        .M00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out2),
        .S00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .S00_AXI_araddr(axi_vip_0_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_vip_0_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_vip_0_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_vip_0_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_vip_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_vip_0_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_vip_0_M_AXI_ARQOS),
        .S00_AXI_arready(axi_vip_0_M_AXI_ARREADY),
        .S00_AXI_arregion(axi_vip_0_M_AXI_ARREGION),
        .S00_AXI_arsize(axi_vip_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_vip_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_0_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_vip_0_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_vip_0_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_vip_0_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_vip_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_vip_0_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_vip_0_M_AXI_AWQOS),
        .S00_AXI_awready(axi_vip_0_M_AXI_AWREADY),
        .S00_AXI_awregion(axi_vip_0_M_AXI_AWREGION),
        .S00_AXI_awsize(axi_vip_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_vip_0_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_0_M_AXI_RDATA),
        .S00_AXI_rlast(axi_vip_0_M_AXI_RLAST),
        .S00_AXI_rready(axi_vip_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_0_M_AXI_WDATA),
        .S00_AXI_wlast(axi_vip_0_M_AXI_WLAST),
        .S00_AXI_wready(axi_vip_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_0_M_AXI_WVALID));
  (* DPA_TRACE_MASTER = "true" *) 
  vitis_design_interconnect_axihpm0fpd_0 interconnect_axihpm0fpd
       (.ACLK(clk_wiz_0_clk_out2),
        .ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out2),
        .M00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .M00_AXI_araddr(interconnect_axihpm0fpd_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_axihpm0fpd_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_axihpm0fpd_M00_AXI_ARCACHE),
        .M00_AXI_arid(interconnect_axihpm0fpd_M00_AXI_ARID),
        .M00_AXI_arlen(interconnect_axihpm0fpd_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_axihpm0fpd_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_axihpm0fpd_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_axihpm0fpd_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_axihpm0fpd_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect_axihpm0fpd_M00_AXI_ARSIZE),
        .M00_AXI_aruser(interconnect_axihpm0fpd_M00_AXI_ARUSER),
        .M00_AXI_arvalid(interconnect_axihpm0fpd_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_axihpm0fpd_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_axihpm0fpd_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_axihpm0fpd_M00_AXI_AWCACHE),
        .M00_AXI_awid(interconnect_axihpm0fpd_M00_AXI_AWID),
        .M00_AXI_awlen(interconnect_axihpm0fpd_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_axihpm0fpd_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_axihpm0fpd_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_axihpm0fpd_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_axihpm0fpd_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect_axihpm0fpd_M00_AXI_AWSIZE),
        .M00_AXI_awuser(interconnect_axihpm0fpd_M00_AXI_AWUSER),
        .M00_AXI_awvalid(interconnect_axihpm0fpd_M00_AXI_AWVALID),
        .M00_AXI_bid(interconnect_axihpm0fpd_M00_AXI_BID),
        .M00_AXI_bready(interconnect_axihpm0fpd_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_axihpm0fpd_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_axihpm0fpd_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_axihpm0fpd_M00_AXI_RDATA),
        .M00_AXI_rid(interconnect_axihpm0fpd_M00_AXI_RID),
        .M00_AXI_rlast(interconnect_axihpm0fpd_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_axihpm0fpd_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_axihpm0fpd_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_axihpm0fpd_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_axihpm0fpd_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_axihpm0fpd_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_axihpm0fpd_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_axihpm0fpd_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_axihpm0fpd_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out2),
        .S00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .S00_AXI_araddr(ps_e_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(ps_e_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(ps_e_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(ps_e_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(ps_e_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(ps_e_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(ps_e_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(ps_e_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(ps_e_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(ps_e_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_aruser(ps_e_M_AXI_HPM0_FPD_ARUSER),
        .S00_AXI_arvalid(ps_e_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(ps_e_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(ps_e_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(ps_e_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(ps_e_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(ps_e_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(ps_e_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(ps_e_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(ps_e_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(ps_e_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(ps_e_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awuser(ps_e_M_AXI_HPM0_FPD_AWUSER),
        .S00_AXI_awvalid(ps_e_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(ps_e_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(ps_e_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(ps_e_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(ps_e_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(ps_e_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(ps_e_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(ps_e_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(ps_e_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(ps_e_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(ps_e_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(ps_e_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(ps_e_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(ps_e_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(ps_e_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(ps_e_M_AXI_HPM0_FPD_WVALID));
  (* DPA_AXILITE_MASTER = "fallback" *) 
  vitis_design_interconnect_axilite_0 interconnect_axilite
       (.ACLK(clk_wiz_0_clk_out3),
        .ARESETN(proc_sys_reset_2_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out3),
        .M00_ARESETN(proc_sys_reset_2_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_0_clk_out4),
        .M01_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M01_AXI_araddr(interconnect_axilite_M01_AXI_ARADDR),
        .M01_AXI_arready(interconnect_axilite_M01_AXI_ARREADY),
        .M01_AXI_arvalid(interconnect_axilite_M01_AXI_ARVALID),
        .M01_AXI_awaddr(interconnect_axilite_M01_AXI_AWADDR),
        .M01_AXI_awready(interconnect_axilite_M01_AXI_AWREADY),
        .M01_AXI_awvalid(interconnect_axilite_M01_AXI_AWVALID),
        .M01_AXI_bready(interconnect_axilite_M01_AXI_BREADY),
        .M01_AXI_bresp(interconnect_axilite_M01_AXI_BRESP),
        .M01_AXI_bvalid(interconnect_axilite_M01_AXI_BVALID),
        .M01_AXI_rdata(interconnect_axilite_M01_AXI_RDATA),
        .M01_AXI_rready(interconnect_axilite_M01_AXI_RREADY),
        .M01_AXI_rresp(interconnect_axilite_M01_AXI_RRESP),
        .M01_AXI_rvalid(interconnect_axilite_M01_AXI_RVALID),
        .M01_AXI_wdata(interconnect_axilite_M01_AXI_WDATA),
        .M01_AXI_wready(interconnect_axilite_M01_AXI_WREADY),
        .M01_AXI_wstrb(interconnect_axilite_M01_AXI_WSTRB),
        .M01_AXI_wvalid(interconnect_axilite_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_0_clk_out4),
        .M02_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M02_AXI_araddr(interconnect_axilite_M02_AXI_ARADDR),
        .M02_AXI_arready(interconnect_axilite_M02_AXI_ARREADY),
        .M02_AXI_arvalid(interconnect_axilite_M02_AXI_ARVALID),
        .M02_AXI_awaddr(interconnect_axilite_M02_AXI_AWADDR),
        .M02_AXI_awready(interconnect_axilite_M02_AXI_AWREADY),
        .M02_AXI_awvalid(interconnect_axilite_M02_AXI_AWVALID),
        .M02_AXI_bready(interconnect_axilite_M02_AXI_BREADY),
        .M02_AXI_bresp(interconnect_axilite_M02_AXI_BRESP),
        .M02_AXI_bvalid(interconnect_axilite_M02_AXI_BVALID),
        .M02_AXI_rdata(interconnect_axilite_M02_AXI_RDATA),
        .M02_AXI_rready(interconnect_axilite_M02_AXI_RREADY),
        .M02_AXI_rresp(interconnect_axilite_M02_AXI_RRESP),
        .M02_AXI_rvalid(interconnect_axilite_M02_AXI_RVALID),
        .M02_AXI_wdata(interconnect_axilite_M02_AXI_WDATA),
        .M02_AXI_wready(interconnect_axilite_M02_AXI_WREADY),
        .M02_AXI_wstrb(interconnect_axilite_M02_AXI_WSTRB),
        .M02_AXI_wvalid(interconnect_axilite_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_0_clk_out4),
        .M03_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M03_AXI_araddr(interconnect_axilite_M03_AXI_ARADDR),
        .M03_AXI_arready(interconnect_axilite_M03_AXI_ARREADY),
        .M03_AXI_arvalid(interconnect_axilite_M03_AXI_ARVALID),
        .M03_AXI_awaddr(interconnect_axilite_M03_AXI_AWADDR),
        .M03_AXI_awready(interconnect_axilite_M03_AXI_AWREADY),
        .M03_AXI_awvalid(interconnect_axilite_M03_AXI_AWVALID),
        .M03_AXI_bready(interconnect_axilite_M03_AXI_BREADY),
        .M03_AXI_bresp(interconnect_axilite_M03_AXI_BRESP),
        .M03_AXI_bvalid(interconnect_axilite_M03_AXI_BVALID),
        .M03_AXI_rdata(interconnect_axilite_M03_AXI_RDATA),
        .M03_AXI_rready(interconnect_axilite_M03_AXI_RREADY),
        .M03_AXI_rresp(interconnect_axilite_M03_AXI_RRESP),
        .M03_AXI_rvalid(interconnect_axilite_M03_AXI_RVALID),
        .M03_AXI_wdata(interconnect_axilite_M03_AXI_WDATA),
        .M03_AXI_wready(interconnect_axilite_M03_AXI_WREADY),
        .M03_AXI_wstrb(interconnect_axilite_M03_AXI_WSTRB),
        .M03_AXI_wvalid(interconnect_axilite_M03_AXI_WVALID),
        .M04_ACLK(clk_wiz_0_clk_out4),
        .M04_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M04_AXI_araddr(interconnect_axilite_M04_AXI_ARADDR),
        .M04_AXI_arready(interconnect_axilite_M04_AXI_ARREADY),
        .M04_AXI_arvalid(interconnect_axilite_M04_AXI_ARVALID),
        .M04_AXI_awaddr(interconnect_axilite_M04_AXI_AWADDR),
        .M04_AXI_awready(interconnect_axilite_M04_AXI_AWREADY),
        .M04_AXI_awvalid(interconnect_axilite_M04_AXI_AWVALID),
        .M04_AXI_bready(interconnect_axilite_M04_AXI_BREADY),
        .M04_AXI_bresp(interconnect_axilite_M04_AXI_BRESP),
        .M04_AXI_bvalid(interconnect_axilite_M04_AXI_BVALID),
        .M04_AXI_rdata(interconnect_axilite_M04_AXI_RDATA),
        .M04_AXI_rready(interconnect_axilite_M04_AXI_RREADY),
        .M04_AXI_rresp(interconnect_axilite_M04_AXI_RRESP),
        .M04_AXI_rvalid(interconnect_axilite_M04_AXI_RVALID),
        .M04_AXI_wdata(interconnect_axilite_M04_AXI_WDATA),
        .M04_AXI_wready(interconnect_axilite_M04_AXI_WREADY),
        .M04_AXI_wstrb(interconnect_axilite_M04_AXI_WSTRB),
        .M04_AXI_wvalid(interconnect_axilite_M04_AXI_WVALID),
        .M05_ACLK(clk_wiz_0_clk_out4),
        .M05_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M05_AXI_araddr(interconnect_axilite_M05_AXI_ARADDR),
        .M05_AXI_arready(interconnect_axilite_M05_AXI_ARREADY),
        .M05_AXI_arvalid(interconnect_axilite_M05_AXI_ARVALID),
        .M05_AXI_awaddr(interconnect_axilite_M05_AXI_AWADDR),
        .M05_AXI_awready(interconnect_axilite_M05_AXI_AWREADY),
        .M05_AXI_awvalid(interconnect_axilite_M05_AXI_AWVALID),
        .M05_AXI_bready(interconnect_axilite_M05_AXI_BREADY),
        .M05_AXI_bresp(interconnect_axilite_M05_AXI_BRESP),
        .M05_AXI_bvalid(interconnect_axilite_M05_AXI_BVALID),
        .M05_AXI_rdata(interconnect_axilite_M05_AXI_RDATA),
        .M05_AXI_rready(interconnect_axilite_M05_AXI_RREADY),
        .M05_AXI_rresp(interconnect_axilite_M05_AXI_RRESP),
        .M05_AXI_rvalid(interconnect_axilite_M05_AXI_RVALID),
        .M05_AXI_wdata(interconnect_axilite_M05_AXI_WDATA),
        .M05_AXI_wready(interconnect_axilite_M05_AXI_WREADY),
        .M05_AXI_wstrb(interconnect_axilite_M05_AXI_WSTRB),
        .M05_AXI_wvalid(interconnect_axilite_M05_AXI_WVALID),
        .M06_ACLK(clk_wiz_0_clk_out4),
        .M06_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M06_AXI_araddr(interconnect_axilite_M06_AXI_ARADDR),
        .M06_AXI_arready(interconnect_axilite_M06_AXI_ARREADY),
        .M06_AXI_arvalid(interconnect_axilite_M06_AXI_ARVALID),
        .M06_AXI_awaddr(interconnect_axilite_M06_AXI_AWADDR),
        .M06_AXI_awready(interconnect_axilite_M06_AXI_AWREADY),
        .M06_AXI_awvalid(interconnect_axilite_M06_AXI_AWVALID),
        .M06_AXI_bready(interconnect_axilite_M06_AXI_BREADY),
        .M06_AXI_bresp(interconnect_axilite_M06_AXI_BRESP),
        .M06_AXI_bvalid(interconnect_axilite_M06_AXI_BVALID),
        .M06_AXI_rdata(interconnect_axilite_M06_AXI_RDATA),
        .M06_AXI_rready(interconnect_axilite_M06_AXI_RREADY),
        .M06_AXI_rresp(interconnect_axilite_M06_AXI_RRESP),
        .M06_AXI_rvalid(interconnect_axilite_M06_AXI_RVALID),
        .M06_AXI_wdata(interconnect_axilite_M06_AXI_WDATA),
        .M06_AXI_wready(interconnect_axilite_M06_AXI_WREADY),
        .M06_AXI_wstrb(interconnect_axilite_M06_AXI_WSTRB),
        .M06_AXI_wvalid(interconnect_axilite_M06_AXI_WVALID),
        .M07_ACLK(clk_wiz_0_clk_out4),
        .M07_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M07_AXI_araddr(interconnect_axilite_M07_AXI_ARADDR),
        .M07_AXI_arready(interconnect_axilite_M07_AXI_ARREADY),
        .M07_AXI_arvalid(interconnect_axilite_M07_AXI_ARVALID),
        .M07_AXI_awaddr(interconnect_axilite_M07_AXI_AWADDR),
        .M07_AXI_awready(interconnect_axilite_M07_AXI_AWREADY),
        .M07_AXI_awvalid(interconnect_axilite_M07_AXI_AWVALID),
        .M07_AXI_bready(interconnect_axilite_M07_AXI_BREADY),
        .M07_AXI_bresp(interconnect_axilite_M07_AXI_BRESP),
        .M07_AXI_bvalid(interconnect_axilite_M07_AXI_BVALID),
        .M07_AXI_rdata(interconnect_axilite_M07_AXI_RDATA),
        .M07_AXI_rready(interconnect_axilite_M07_AXI_RREADY),
        .M07_AXI_rresp(interconnect_axilite_M07_AXI_RRESP),
        .M07_AXI_rvalid(interconnect_axilite_M07_AXI_RVALID),
        .M07_AXI_wdata(interconnect_axilite_M07_AXI_WDATA),
        .M07_AXI_wready(interconnect_axilite_M07_AXI_WREADY),
        .M07_AXI_wstrb(interconnect_axilite_M07_AXI_WSTRB),
        .M07_AXI_wvalid(interconnect_axilite_M07_AXI_WVALID),
        .M08_ACLK(clk_wiz_0_clk_out4),
        .M08_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M08_AXI_araddr(interconnect_axilite_M08_AXI_ARADDR),
        .M08_AXI_arready(interconnect_axilite_M08_AXI_ARREADY),
        .M08_AXI_arvalid(interconnect_axilite_M08_AXI_ARVALID),
        .M08_AXI_awaddr(interconnect_axilite_M08_AXI_AWADDR),
        .M08_AXI_awready(interconnect_axilite_M08_AXI_AWREADY),
        .M08_AXI_awvalid(interconnect_axilite_M08_AXI_AWVALID),
        .M08_AXI_bready(interconnect_axilite_M08_AXI_BREADY),
        .M08_AXI_bresp(interconnect_axilite_M08_AXI_BRESP),
        .M08_AXI_bvalid(interconnect_axilite_M08_AXI_BVALID),
        .M08_AXI_rdata(interconnect_axilite_M08_AXI_RDATA),
        .M08_AXI_rready(interconnect_axilite_M08_AXI_RREADY),
        .M08_AXI_rresp(interconnect_axilite_M08_AXI_RRESP),
        .M08_AXI_rvalid(interconnect_axilite_M08_AXI_RVALID),
        .M08_AXI_wdata(interconnect_axilite_M08_AXI_WDATA),
        .M08_AXI_wready(interconnect_axilite_M08_AXI_WREADY),
        .M08_AXI_wstrb(interconnect_axilite_M08_AXI_WSTRB),
        .M08_AXI_wvalid(interconnect_axilite_M08_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out3),
        .S00_ARESETN(proc_sys_reset_2_interconnect_aresetn),
        .S00_AXI_araddr(ps_e_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(ps_e_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(ps_e_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(ps_e_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(ps_e_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(ps_e_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(ps_e_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(ps_e_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(ps_e_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(ps_e_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_arvalid(ps_e_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(ps_e_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(ps_e_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(ps_e_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(ps_e_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(ps_e_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(ps_e_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(ps_e_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(ps_e_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(ps_e_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(ps_e_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awvalid(ps_e_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(ps_e_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(ps_e_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(ps_e_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(ps_e_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(ps_e_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(ps_e_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(ps_e_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(ps_e_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(ps_e_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(ps_e_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(ps_e_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(ps_e_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(ps_e_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(ps_e_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(ps_e_M_AXI_HPM0_LPD_WVALID));
  vitis_design_irq_const_tieoff_0 irq_const_tieoff
       (.dout(irq_const_tieoff_dout));
  vitis_design_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(Net),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out4));
  vitis_design_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(Net),
        .interconnect_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out2));
  vitis_design_proc_sys_reset_2_0 proc_sys_reset_2
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(Net),
        .interconnect_aresetn(proc_sys_reset_2_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out3));
  vitis_design_proc_sys_reset_3_0 proc_sys_reset_3
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(Net),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out5));
  vitis_design_proc_sys_reset_4_0 proc_sys_reset_4
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(Net),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out6));
  vitis_design_proc_sys_reset_5_0 proc_sys_reset_5
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(Net),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out7));
  vitis_design_proc_sys_reset_6_0 proc_sys_reset_6
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(Net),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out8));
  vitis_design_ps_e_0 ps_e
       (.maxigp0_araddr(ps_e_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(ps_e_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(ps_e_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(ps_e_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(ps_e_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(ps_e_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(ps_e_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(ps_e_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(ps_e_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(ps_e_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(ps_e_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(ps_e_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(ps_e_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(ps_e_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(ps_e_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(ps_e_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(ps_e_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(ps_e_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(ps_e_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(ps_e_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(ps_e_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(ps_e_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(ps_e_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(ps_e_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(ps_e_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(ps_e_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(ps_e_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(ps_e_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(ps_e_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(ps_e_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(ps_e_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(ps_e_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(ps_e_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(ps_e_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(ps_e_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(ps_e_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(ps_e_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(ps_e_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(ps_e_M_AXI_HPM0_FPD_WVALID),
        .maxigp2_araddr(ps_e_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(ps_e_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(ps_e_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(ps_e_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(ps_e_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(ps_e_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(ps_e_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(ps_e_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(ps_e_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(ps_e_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_arvalid(ps_e_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(ps_e_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(ps_e_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(ps_e_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(ps_e_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(ps_e_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(ps_e_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(ps_e_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(ps_e_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(ps_e_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(ps_e_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awvalid(ps_e_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(ps_e_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(ps_e_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(ps_e_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(ps_e_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(ps_e_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(ps_e_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(ps_e_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(ps_e_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(ps_e_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(ps_e_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(ps_e_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(ps_e_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(ps_e_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(ps_e_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(ps_e_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_fpd_aclk(clk_wiz_0_clk_out2),
        .maxihpm0_lpd_aclk(clk_wiz_0_clk_out3),
        .pl_clk0(ps_e_pl_clk0),
        .pl_ps_irq0(axi_intc_0_irq),
        .pl_resetn0(Net),
        .saxi_lpd_aclk(clk_wiz_0_clk_out2),
        .saxigp2_araddr(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARADDR),
        .saxigp2_arburst(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARBURST),
        .saxigp2_arcache(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlen(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARLEN),
        .saxigp2_arlock(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARLOCK),
        .saxigp2_arprot(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARPROT),
        .saxigp2_arqos(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARQOS),
        .saxigp2_arready(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARREADY),
        .saxigp2_arsize(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARSIZE),
        .saxigp2_aruser(1'b0),
        .saxigp2_arvalid(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_ARVALID),
        .saxigp2_awaddr(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWADDR),
        .saxigp2_awburst(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWBURST),
        .saxigp2_awcache(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlen(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWLEN),
        .saxigp2_awlock(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWLOCK),
        .saxigp2_awprot(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWPROT),
        .saxigp2_awqos(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWQOS),
        .saxigp2_awready(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWREADY),
        .saxigp2_awsize(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWSIZE),
        .saxigp2_awuser(1'b0),
        .saxigp2_awvalid(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_AWVALID),
        .saxigp2_bready(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_BREADY),
        .saxigp2_bresp(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_BRESP),
        .saxigp2_bvalid(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_BVALID),
        .saxigp2_rdata(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RDATA),
        .saxigp2_rlast(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RLAST),
        .saxigp2_rready(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RREADY),
        .saxigp2_rresp(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RRESP),
        .saxigp2_rvalid(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_RVALID),
        .saxigp2_wdata(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WDATA),
        .saxigp2_wlast(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WLAST),
        .saxigp2_wready(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WREADY),
        .saxigp2_wstrb(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WSTRB),
        .saxigp2_wvalid(axi_ic_ps_e_S_AXI_HP0_FPD_M00_AXI_WVALID),
        .saxigp3_araddr(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARADDR),
        .saxigp3_arburst(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARBURST),
        .saxigp3_arcache(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARID}),
        .saxigp3_arlen(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARLEN),
        .saxigp3_arlock(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARLOCK),
        .saxigp3_arprot(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARPROT),
        .saxigp3_arqos(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARQOS),
        .saxigp3_arready(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARREADY),
        .saxigp3_arsize(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARSIZE),
        .saxigp3_aruser(1'b0),
        .saxigp3_arvalid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_ARVALID),
        .saxigp3_awaddr(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWADDR),
        .saxigp3_awburst(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWBURST),
        .saxigp3_awcache(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWID}),
        .saxigp3_awlen(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWLEN),
        .saxigp3_awlock(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWLOCK),
        .saxigp3_awprot(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWPROT),
        .saxigp3_awqos(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWQOS),
        .saxigp3_awready(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWREADY),
        .saxigp3_awsize(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWSIZE),
        .saxigp3_awuser(1'b0),
        .saxigp3_awvalid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_AWVALID),
        .saxigp3_bid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_BID),
        .saxigp3_bready(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_BREADY),
        .saxigp3_bresp(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_BRESP),
        .saxigp3_bvalid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_BVALID),
        .saxigp3_rdata(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RDATA),
        .saxigp3_rid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RID),
        .saxigp3_rlast(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RLAST),
        .saxigp3_rready(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RREADY),
        .saxigp3_rresp(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RRESP),
        .saxigp3_rvalid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_RVALID),
        .saxigp3_wdata(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WDATA),
        .saxigp3_wlast(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WLAST),
        .saxigp3_wready(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WREADY),
        .saxigp3_wstrb(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WSTRB),
        .saxigp3_wvalid(axi_ic_ps_e_S_AXI_HP1_FPD_M00_AXI_WVALID),
        .saxigp5_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_interconnect_1_M00_AXI_ARADDR}),
        .saxigp5_arburst(axi_interconnect_1_M00_AXI_ARBURST),
        .saxigp5_arcache(axi_interconnect_1_M00_AXI_ARCACHE),
        .saxigp5_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp5_arlen(axi_interconnect_1_M00_AXI_ARLEN),
        .saxigp5_arlock(axi_interconnect_1_M00_AXI_ARLOCK),
        .saxigp5_arprot(axi_interconnect_1_M00_AXI_ARPROT),
        .saxigp5_arqos(axi_interconnect_1_M00_AXI_ARQOS),
        .saxigp5_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .saxigp5_arsize(axi_interconnect_1_M00_AXI_ARSIZE),
        .saxigp5_aruser(1'b0),
        .saxigp5_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .saxigp5_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_interconnect_1_M00_AXI_AWADDR}),
        .saxigp5_awburst(axi_interconnect_1_M00_AXI_AWBURST),
        .saxigp5_awcache(axi_interconnect_1_M00_AXI_AWCACHE),
        .saxigp5_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp5_awlen(axi_interconnect_1_M00_AXI_AWLEN),
        .saxigp5_awlock(axi_interconnect_1_M00_AXI_AWLOCK),
        .saxigp5_awprot(axi_interconnect_1_M00_AXI_AWPROT),
        .saxigp5_awqos(axi_interconnect_1_M00_AXI_AWQOS),
        .saxigp5_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .saxigp5_awsize(axi_interconnect_1_M00_AXI_AWSIZE),
        .saxigp5_awuser(1'b0),
        .saxigp5_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .saxigp5_bready(axi_interconnect_1_M00_AXI_BREADY),
        .saxigp5_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .saxigp5_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .saxigp5_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .saxigp5_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .saxigp5_rready(axi_interconnect_1_M00_AXI_RREADY),
        .saxigp5_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .saxigp5_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .saxigp5_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .saxigp5_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .saxigp5_wready(axi_interconnect_1_M00_AXI_WREADY),
        .saxigp5_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .saxigp5_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .saxigp6_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_interconnect_0_M00_AXI1_ARADDR}),
        .saxigp6_arburst(axi_interconnect_0_M00_AXI1_ARBURST),
        .saxigp6_arcache(axi_interconnect_0_M00_AXI1_ARCACHE),
        .saxigp6_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp6_arlen(axi_interconnect_0_M00_AXI1_ARLEN),
        .saxigp6_arlock(axi_interconnect_0_M00_AXI1_ARLOCK),
        .saxigp6_arprot(axi_interconnect_0_M00_AXI1_ARPROT),
        .saxigp6_arqos(axi_interconnect_0_M00_AXI1_ARQOS),
        .saxigp6_arready(axi_interconnect_0_M00_AXI1_ARREADY),
        .saxigp6_arsize(axi_interconnect_0_M00_AXI1_ARSIZE),
        .saxigp6_aruser(1'b0),
        .saxigp6_arvalid(axi_interconnect_0_M00_AXI1_ARVALID),
        .saxigp6_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_interconnect_0_M00_AXI1_AWADDR}),
        .saxigp6_awburst(axi_interconnect_0_M00_AXI1_AWBURST),
        .saxigp6_awcache(axi_interconnect_0_M00_AXI1_AWCACHE),
        .saxigp6_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp6_awlen(axi_interconnect_0_M00_AXI1_AWLEN),
        .saxigp6_awlock(axi_interconnect_0_M00_AXI1_AWLOCK),
        .saxigp6_awprot(axi_interconnect_0_M00_AXI1_AWPROT),
        .saxigp6_awqos(axi_interconnect_0_M00_AXI1_AWQOS),
        .saxigp6_awready(axi_interconnect_0_M00_AXI1_AWREADY),
        .saxigp6_awsize(axi_interconnect_0_M00_AXI1_AWSIZE),
        .saxigp6_awuser(1'b0),
        .saxigp6_awvalid(axi_interconnect_0_M00_AXI1_AWVALID),
        .saxigp6_bready(axi_interconnect_0_M00_AXI1_BREADY),
        .saxigp6_bresp(axi_interconnect_0_M00_AXI1_BRESP),
        .saxigp6_bvalid(axi_interconnect_0_M00_AXI1_BVALID),
        .saxigp6_rdata(axi_interconnect_0_M00_AXI1_RDATA),
        .saxigp6_rlast(axi_interconnect_0_M00_AXI1_RLAST),
        .saxigp6_rready(axi_interconnect_0_M00_AXI1_RREADY),
        .saxigp6_rresp(axi_interconnect_0_M00_AXI1_RRESP),
        .saxigp6_rvalid(axi_interconnect_0_M00_AXI1_RVALID),
        .saxigp6_wdata(axi_interconnect_0_M00_AXI1_WDATA),
        .saxigp6_wlast(axi_interconnect_0_M00_AXI1_WLAST),
        .saxigp6_wready(axi_interconnect_0_M00_AXI1_WREADY),
        .saxigp6_wstrb(axi_interconnect_0_M00_AXI1_WSTRB),
        .saxigp6_wvalid(axi_interconnect_0_M00_AXI1_WVALID),
        .saxihp0_fpd_aclk(clk_wiz_0_clk_out4),
        .saxihp1_fpd_aclk(clk_wiz_0_clk_out4),
        .saxihp3_fpd_aclk(clk_wiz_0_clk_out2));
  vitis_design_remap_accel_1_0 remap_accel_1
       (.ap_clk(clk_wiz_0_clk_out4),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .interrupt(remap_accel_1_interrupt),
        .m_axi_gmem0_ARADDR(remap_accel_1_m_axi_gmem0_ARADDR),
        .m_axi_gmem0_ARBURST(remap_accel_1_m_axi_gmem0_ARBURST),
        .m_axi_gmem0_ARCACHE(remap_accel_1_m_axi_gmem0_ARCACHE),
        .m_axi_gmem0_ARID(remap_accel_1_m_axi_gmem0_ARID),
        .m_axi_gmem0_ARLEN(remap_accel_1_m_axi_gmem0_ARLEN),
        .m_axi_gmem0_ARLOCK(remap_accel_1_m_axi_gmem0_ARLOCK),
        .m_axi_gmem0_ARPROT(remap_accel_1_m_axi_gmem0_ARPROT),
        .m_axi_gmem0_ARQOS(remap_accel_1_m_axi_gmem0_ARQOS),
        .m_axi_gmem0_ARREADY(remap_accel_1_m_axi_gmem0_ARREADY),
        .m_axi_gmem0_ARREGION(remap_accel_1_m_axi_gmem0_ARREGION),
        .m_axi_gmem0_ARSIZE(remap_accel_1_m_axi_gmem0_ARSIZE),
        .m_axi_gmem0_ARVALID(remap_accel_1_m_axi_gmem0_ARVALID),
        .m_axi_gmem0_AWREADY(1'b0),
        .m_axi_gmem0_BID(1'b0),
        .m_axi_gmem0_BRESP({1'b0,1'b0}),
        .m_axi_gmem0_BVALID(1'b0),
        .m_axi_gmem0_RDATA(remap_accel_1_m_axi_gmem0_RDATA),
        .m_axi_gmem0_RID(remap_accel_1_m_axi_gmem0_RID),
        .m_axi_gmem0_RLAST(remap_accel_1_m_axi_gmem0_RLAST),
        .m_axi_gmem0_RREADY(remap_accel_1_m_axi_gmem0_RREADY),
        .m_axi_gmem0_RRESP(remap_accel_1_m_axi_gmem0_RRESP),
        .m_axi_gmem0_RVALID(remap_accel_1_m_axi_gmem0_RVALID),
        .m_axi_gmem0_WREADY(1'b0),
        .m_axi_gmem1_ARADDR(remap_accel_1_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(remap_accel_1_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(remap_accel_1_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARID(remap_accel_1_m_axi_gmem1_ARID),
        .m_axi_gmem1_ARLEN(remap_accel_1_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(remap_accel_1_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(remap_accel_1_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(remap_accel_1_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(remap_accel_1_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARREGION(remap_accel_1_m_axi_gmem1_ARREGION),
        .m_axi_gmem1_ARSIZE(remap_accel_1_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(remap_accel_1_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWREADY(1'b0),
        .m_axi_gmem1_BID(1'b0),
        .m_axi_gmem1_BRESP({1'b0,1'b0}),
        .m_axi_gmem1_BVALID(1'b0),
        .m_axi_gmem1_RDATA(remap_accel_1_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RID(remap_accel_1_m_axi_gmem1_RID),
        .m_axi_gmem1_RLAST(remap_accel_1_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(remap_accel_1_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(remap_accel_1_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(remap_accel_1_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WREADY(1'b0),
        .m_axi_gmem2_ARADDR(remap_accel_1_m_axi_gmem2_ARADDR),
        .m_axi_gmem2_ARBURST(remap_accel_1_m_axi_gmem2_ARBURST),
        .m_axi_gmem2_ARCACHE(remap_accel_1_m_axi_gmem2_ARCACHE),
        .m_axi_gmem2_ARID(remap_accel_1_m_axi_gmem2_ARID),
        .m_axi_gmem2_ARLEN(remap_accel_1_m_axi_gmem2_ARLEN),
        .m_axi_gmem2_ARLOCK(remap_accel_1_m_axi_gmem2_ARLOCK),
        .m_axi_gmem2_ARPROT(remap_accel_1_m_axi_gmem2_ARPROT),
        .m_axi_gmem2_ARQOS(remap_accel_1_m_axi_gmem2_ARQOS),
        .m_axi_gmem2_ARREADY(remap_accel_1_m_axi_gmem2_ARREADY),
        .m_axi_gmem2_ARREGION(remap_accel_1_m_axi_gmem2_ARREGION),
        .m_axi_gmem2_ARSIZE(remap_accel_1_m_axi_gmem2_ARSIZE),
        .m_axi_gmem2_ARVALID(remap_accel_1_m_axi_gmem2_ARVALID),
        .m_axi_gmem2_AWREADY(1'b0),
        .m_axi_gmem2_BID(1'b0),
        .m_axi_gmem2_BRESP({1'b0,1'b0}),
        .m_axi_gmem2_BVALID(1'b0),
        .m_axi_gmem2_RDATA(remap_accel_1_m_axi_gmem2_RDATA),
        .m_axi_gmem2_RID(remap_accel_1_m_axi_gmem2_RID),
        .m_axi_gmem2_RLAST(remap_accel_1_m_axi_gmem2_RLAST),
        .m_axi_gmem2_RREADY(remap_accel_1_m_axi_gmem2_RREADY),
        .m_axi_gmem2_RRESP(remap_accel_1_m_axi_gmem2_RRESP),
        .m_axi_gmem2_RVALID(remap_accel_1_m_axi_gmem2_RVALID),
        .m_axi_gmem2_WREADY(1'b0),
        .m_axi_gmem3_ARREADY(1'b0),
        .m_axi_gmem3_AWADDR(remap_accel_1_m_axi_gmem3_AWADDR),
        .m_axi_gmem3_AWBURST(remap_accel_1_m_axi_gmem3_AWBURST),
        .m_axi_gmem3_AWCACHE(remap_accel_1_m_axi_gmem3_AWCACHE),
        .m_axi_gmem3_AWID(remap_accel_1_m_axi_gmem3_AWID),
        .m_axi_gmem3_AWLEN(remap_accel_1_m_axi_gmem3_AWLEN),
        .m_axi_gmem3_AWLOCK(remap_accel_1_m_axi_gmem3_AWLOCK),
        .m_axi_gmem3_AWPROT(remap_accel_1_m_axi_gmem3_AWPROT),
        .m_axi_gmem3_AWQOS(remap_accel_1_m_axi_gmem3_AWQOS),
        .m_axi_gmem3_AWREADY(remap_accel_1_m_axi_gmem3_AWREADY),
        .m_axi_gmem3_AWREGION(remap_accel_1_m_axi_gmem3_AWREGION),
        .m_axi_gmem3_AWSIZE(remap_accel_1_m_axi_gmem3_AWSIZE),
        .m_axi_gmem3_AWVALID(remap_accel_1_m_axi_gmem3_AWVALID),
        .m_axi_gmem3_BID(remap_accel_1_m_axi_gmem3_BID),
        .m_axi_gmem3_BREADY(remap_accel_1_m_axi_gmem3_BREADY),
        .m_axi_gmem3_BRESP(remap_accel_1_m_axi_gmem3_BRESP),
        .m_axi_gmem3_BVALID(remap_accel_1_m_axi_gmem3_BVALID),
        .m_axi_gmem3_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem3_RID(1'b0),
        .m_axi_gmem3_RLAST(1'b0),
        .m_axi_gmem3_RRESP({1'b0,1'b0}),
        .m_axi_gmem3_RVALID(1'b0),
        .m_axi_gmem3_WDATA(remap_accel_1_m_axi_gmem3_WDATA),
        .m_axi_gmem3_WLAST(remap_accel_1_m_axi_gmem3_WLAST),
        .m_axi_gmem3_WREADY(remap_accel_1_m_axi_gmem3_WREADY),
        .m_axi_gmem3_WSTRB(remap_accel_1_m_axi_gmem3_WSTRB),
        .m_axi_gmem3_WVALID(remap_accel_1_m_axi_gmem3_WVALID),
        .s_axi_control_ARADDR(interconnect_axilite_M01_AXI_ARADDR),
        .s_axi_control_ARREADY(interconnect_axilite_M01_AXI_ARREADY),
        .s_axi_control_ARVALID(interconnect_axilite_M01_AXI_ARVALID),
        .s_axi_control_AWADDR(interconnect_axilite_M01_AXI_AWADDR),
        .s_axi_control_AWREADY(interconnect_axilite_M01_AXI_AWREADY),
        .s_axi_control_AWVALID(interconnect_axilite_M01_AXI_AWVALID),
        .s_axi_control_BREADY(interconnect_axilite_M01_AXI_BREADY),
        .s_axi_control_BRESP(interconnect_axilite_M01_AXI_BRESP),
        .s_axi_control_BVALID(interconnect_axilite_M01_AXI_BVALID),
        .s_axi_control_RDATA(interconnect_axilite_M01_AXI_RDATA),
        .s_axi_control_RREADY(interconnect_axilite_M01_AXI_RREADY),
        .s_axi_control_RRESP(interconnect_axilite_M01_AXI_RRESP),
        .s_axi_control_RVALID(interconnect_axilite_M01_AXI_RVALID),
        .s_axi_control_WDATA(interconnect_axilite_M01_AXI_WDATA),
        .s_axi_control_WREADY(interconnect_axilite_M01_AXI_WREADY),
        .s_axi_control_WSTRB(interconnect_axilite_M01_AXI_WSTRB),
        .s_axi_control_WVALID(interconnect_axilite_M01_AXI_WVALID));
  vitis_design_sobel_accel_1_0 sobel_accel_1
       (.ap_clk(clk_wiz_0_clk_out4),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .interrupt(sobel_accel_1_interrupt),
        .m_axi_gmem1_ARADDR(sobel_accel_1_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(sobel_accel_1_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(sobel_accel_1_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARID(sobel_accel_1_m_axi_gmem1_ARID),
        .m_axi_gmem1_ARLEN(sobel_accel_1_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(sobel_accel_1_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(sobel_accel_1_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(sobel_accel_1_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(sobel_accel_1_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARREGION(sobel_accel_1_m_axi_gmem1_ARREGION),
        .m_axi_gmem1_ARSIZE(sobel_accel_1_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(sobel_accel_1_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWREADY(1'b0),
        .m_axi_gmem1_BID(1'b0),
        .m_axi_gmem1_BRESP({1'b0,1'b0}),
        .m_axi_gmem1_BVALID(1'b0),
        .m_axi_gmem1_RDATA(sobel_accel_1_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RID(sobel_accel_1_m_axi_gmem1_RID),
        .m_axi_gmem1_RLAST(sobel_accel_1_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(sobel_accel_1_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(sobel_accel_1_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(sobel_accel_1_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WREADY(1'b0),
        .m_axi_gmem2_ARREADY(1'b0),
        .m_axi_gmem2_AWADDR(sobel_accel_1_m_axi_gmem2_AWADDR),
        .m_axi_gmem2_AWBURST(sobel_accel_1_m_axi_gmem2_AWBURST),
        .m_axi_gmem2_AWCACHE(sobel_accel_1_m_axi_gmem2_AWCACHE),
        .m_axi_gmem2_AWID(sobel_accel_1_m_axi_gmem2_AWID),
        .m_axi_gmem2_AWLEN(sobel_accel_1_m_axi_gmem2_AWLEN),
        .m_axi_gmem2_AWLOCK(sobel_accel_1_m_axi_gmem2_AWLOCK),
        .m_axi_gmem2_AWPROT(sobel_accel_1_m_axi_gmem2_AWPROT),
        .m_axi_gmem2_AWQOS(sobel_accel_1_m_axi_gmem2_AWQOS),
        .m_axi_gmem2_AWREADY(sobel_accel_1_m_axi_gmem2_AWREADY),
        .m_axi_gmem2_AWREGION(sobel_accel_1_m_axi_gmem2_AWREGION),
        .m_axi_gmem2_AWSIZE(sobel_accel_1_m_axi_gmem2_AWSIZE),
        .m_axi_gmem2_AWVALID(sobel_accel_1_m_axi_gmem2_AWVALID),
        .m_axi_gmem2_BID(sobel_accel_1_m_axi_gmem2_BID),
        .m_axi_gmem2_BREADY(sobel_accel_1_m_axi_gmem2_BREADY),
        .m_axi_gmem2_BRESP(sobel_accel_1_m_axi_gmem2_BRESP),
        .m_axi_gmem2_BVALID(sobel_accel_1_m_axi_gmem2_BVALID),
        .m_axi_gmem2_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem2_RID(1'b0),
        .m_axi_gmem2_RLAST(1'b0),
        .m_axi_gmem2_RRESP({1'b0,1'b0}),
        .m_axi_gmem2_RVALID(1'b0),
        .m_axi_gmem2_WDATA(sobel_accel_1_m_axi_gmem2_WDATA),
        .m_axi_gmem2_WLAST(sobel_accel_1_m_axi_gmem2_WLAST),
        .m_axi_gmem2_WREADY(sobel_accel_1_m_axi_gmem2_WREADY),
        .m_axi_gmem2_WSTRB(sobel_accel_1_m_axi_gmem2_WSTRB),
        .m_axi_gmem2_WVALID(sobel_accel_1_m_axi_gmem2_WVALID),
        .m_axi_gmem3_ARREADY(1'b0),
        .m_axi_gmem3_AWADDR(sobel_accel_1_m_axi_gmem3_AWADDR),
        .m_axi_gmem3_AWBURST(sobel_accel_1_m_axi_gmem3_AWBURST),
        .m_axi_gmem3_AWCACHE(sobel_accel_1_m_axi_gmem3_AWCACHE),
        .m_axi_gmem3_AWID(sobel_accel_1_m_axi_gmem3_AWID),
        .m_axi_gmem3_AWLEN(sobel_accel_1_m_axi_gmem3_AWLEN),
        .m_axi_gmem3_AWLOCK(sobel_accel_1_m_axi_gmem3_AWLOCK),
        .m_axi_gmem3_AWPROT(sobel_accel_1_m_axi_gmem3_AWPROT),
        .m_axi_gmem3_AWQOS(sobel_accel_1_m_axi_gmem3_AWQOS),
        .m_axi_gmem3_AWREADY(sobel_accel_1_m_axi_gmem3_AWREADY),
        .m_axi_gmem3_AWREGION(sobel_accel_1_m_axi_gmem3_AWREGION),
        .m_axi_gmem3_AWSIZE(sobel_accel_1_m_axi_gmem3_AWSIZE),
        .m_axi_gmem3_AWVALID(sobel_accel_1_m_axi_gmem3_AWVALID),
        .m_axi_gmem3_BID(sobel_accel_1_m_axi_gmem3_BID),
        .m_axi_gmem3_BREADY(sobel_accel_1_m_axi_gmem3_BREADY),
        .m_axi_gmem3_BRESP(sobel_accel_1_m_axi_gmem3_BRESP),
        .m_axi_gmem3_BVALID(sobel_accel_1_m_axi_gmem3_BVALID),
        .m_axi_gmem3_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem3_RID(1'b0),
        .m_axi_gmem3_RLAST(1'b0),
        .m_axi_gmem3_RRESP({1'b0,1'b0}),
        .m_axi_gmem3_RVALID(1'b0),
        .m_axi_gmem3_WDATA(sobel_accel_1_m_axi_gmem3_WDATA),
        .m_axi_gmem3_WLAST(sobel_accel_1_m_axi_gmem3_WLAST),
        .m_axi_gmem3_WREADY(sobel_accel_1_m_axi_gmem3_WREADY),
        .m_axi_gmem3_WSTRB(sobel_accel_1_m_axi_gmem3_WSTRB),
        .m_axi_gmem3_WVALID(sobel_accel_1_m_axi_gmem3_WVALID),
        .s_axi_control_ARADDR(interconnect_axilite_M03_AXI_ARADDR),
        .s_axi_control_ARREADY(interconnect_axilite_M03_AXI_ARREADY),
        .s_axi_control_ARVALID(interconnect_axilite_M03_AXI_ARVALID),
        .s_axi_control_AWADDR(interconnect_axilite_M03_AXI_AWADDR),
        .s_axi_control_AWREADY(interconnect_axilite_M03_AXI_AWREADY),
        .s_axi_control_AWVALID(interconnect_axilite_M03_AXI_AWVALID),
        .s_axi_control_BREADY(interconnect_axilite_M03_AXI_BREADY),
        .s_axi_control_BRESP(interconnect_axilite_M03_AXI_BRESP),
        .s_axi_control_BVALID(interconnect_axilite_M03_AXI_BVALID),
        .s_axi_control_RDATA(interconnect_axilite_M03_AXI_RDATA),
        .s_axi_control_RREADY(interconnect_axilite_M03_AXI_RREADY),
        .s_axi_control_RRESP(interconnect_axilite_M03_AXI_RRESP),
        .s_axi_control_RVALID(interconnect_axilite_M03_AXI_RVALID),
        .s_axi_control_WDATA(interconnect_axilite_M03_AXI_WDATA),
        .s_axi_control_WREADY(interconnect_axilite_M03_AXI_WREADY),
        .s_axi_control_WSTRB(interconnect_axilite_M03_AXI_WSTRB),
        .s_axi_control_WVALID(interconnect_axilite_M03_AXI_WVALID));
  vitis_design_threshold_accel_1_0 threshold_accel_1
       (.ap_clk(clk_wiz_0_clk_out4),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .interrupt(threshold_accel_1_interrupt),
        .m_axi_gmem1_ARADDR(threshold_accel_1_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(threshold_accel_1_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(threshold_accel_1_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARID(threshold_accel_1_m_axi_gmem1_ARID),
        .m_axi_gmem1_ARLEN(threshold_accel_1_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(threshold_accel_1_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(threshold_accel_1_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(threshold_accel_1_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(threshold_accel_1_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARREGION(threshold_accel_1_m_axi_gmem1_ARREGION),
        .m_axi_gmem1_ARSIZE(threshold_accel_1_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(threshold_accel_1_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWREADY(1'b0),
        .m_axi_gmem1_BID(1'b0),
        .m_axi_gmem1_BRESP({1'b0,1'b0}),
        .m_axi_gmem1_BVALID(1'b0),
        .m_axi_gmem1_RDATA(threshold_accel_1_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RID(threshold_accel_1_m_axi_gmem1_RID),
        .m_axi_gmem1_RLAST(threshold_accel_1_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(threshold_accel_1_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(threshold_accel_1_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(threshold_accel_1_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WREADY(1'b0),
        .m_axi_gmem2_ARREADY(1'b0),
        .m_axi_gmem2_AWADDR(threshold_accel_1_m_axi_gmem2_AWADDR),
        .m_axi_gmem2_AWBURST(threshold_accel_1_m_axi_gmem2_AWBURST),
        .m_axi_gmem2_AWCACHE(threshold_accel_1_m_axi_gmem2_AWCACHE),
        .m_axi_gmem2_AWID(threshold_accel_1_m_axi_gmem2_AWID),
        .m_axi_gmem2_AWLEN(threshold_accel_1_m_axi_gmem2_AWLEN),
        .m_axi_gmem2_AWLOCK(threshold_accel_1_m_axi_gmem2_AWLOCK),
        .m_axi_gmem2_AWPROT(threshold_accel_1_m_axi_gmem2_AWPROT),
        .m_axi_gmem2_AWQOS(threshold_accel_1_m_axi_gmem2_AWQOS),
        .m_axi_gmem2_AWREADY(threshold_accel_1_m_axi_gmem2_AWREADY),
        .m_axi_gmem2_AWREGION(threshold_accel_1_m_axi_gmem2_AWREGION),
        .m_axi_gmem2_AWSIZE(threshold_accel_1_m_axi_gmem2_AWSIZE),
        .m_axi_gmem2_AWVALID(threshold_accel_1_m_axi_gmem2_AWVALID),
        .m_axi_gmem2_BID(threshold_accel_1_m_axi_gmem2_BID),
        .m_axi_gmem2_BREADY(threshold_accel_1_m_axi_gmem2_BREADY),
        .m_axi_gmem2_BRESP(threshold_accel_1_m_axi_gmem2_BRESP),
        .m_axi_gmem2_BVALID(threshold_accel_1_m_axi_gmem2_BVALID),
        .m_axi_gmem2_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem2_RID(1'b0),
        .m_axi_gmem2_RLAST(1'b0),
        .m_axi_gmem2_RRESP({1'b0,1'b0}),
        .m_axi_gmem2_RVALID(1'b0),
        .m_axi_gmem2_WDATA(threshold_accel_1_m_axi_gmem2_WDATA),
        .m_axi_gmem2_WLAST(threshold_accel_1_m_axi_gmem2_WLAST),
        .m_axi_gmem2_WREADY(threshold_accel_1_m_axi_gmem2_WREADY),
        .m_axi_gmem2_WSTRB(threshold_accel_1_m_axi_gmem2_WSTRB),
        .m_axi_gmem2_WVALID(threshold_accel_1_m_axi_gmem2_WVALID),
        .s_axi_control_ARADDR(interconnect_axilite_M04_AXI_ARADDR),
        .s_axi_control_ARREADY(interconnect_axilite_M04_AXI_ARREADY),
        .s_axi_control_ARVALID(interconnect_axilite_M04_AXI_ARVALID),
        .s_axi_control_AWADDR(interconnect_axilite_M04_AXI_AWADDR),
        .s_axi_control_AWREADY(interconnect_axilite_M04_AXI_AWREADY),
        .s_axi_control_AWVALID(interconnect_axilite_M04_AXI_AWVALID),
        .s_axi_control_BREADY(interconnect_axilite_M04_AXI_BREADY),
        .s_axi_control_BRESP(interconnect_axilite_M04_AXI_BRESP),
        .s_axi_control_BVALID(interconnect_axilite_M04_AXI_BVALID),
        .s_axi_control_RDATA(interconnect_axilite_M04_AXI_RDATA),
        .s_axi_control_RREADY(interconnect_axilite_M04_AXI_RREADY),
        .s_axi_control_RRESP(interconnect_axilite_M04_AXI_RRESP),
        .s_axi_control_RVALID(interconnect_axilite_M04_AXI_RVALID),
        .s_axi_control_WDATA(interconnect_axilite_M04_AXI_WDATA),
        .s_axi_control_WREADY(interconnect_axilite_M04_AXI_WREADY),
        .s_axi_control_WSTRB(interconnect_axilite_M04_AXI_WSTRB),
        .s_axi_control_WVALID(interconnect_axilite_M04_AXI_WVALID));
endmodule

module vitis_design_axi_ic_ps_e_S_AXI_HP0_FPD_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awid,
    S03_AXI_awlen,
    S03_AXI_awlock,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awready,
    S03_AXI_awregion,
    S03_AXI_awsize,
    S03_AXI_awvalid,
    S03_AXI_bid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid,
    S04_ACLK,
    S04_ARESETN,
    S04_AXI_araddr,
    S04_AXI_arburst,
    S04_AXI_arcache,
    S04_AXI_arid,
    S04_AXI_arlen,
    S04_AXI_arlock,
    S04_AXI_arprot,
    S04_AXI_arqos,
    S04_AXI_arready,
    S04_AXI_arregion,
    S04_AXI_arsize,
    S04_AXI_arvalid,
    S04_AXI_rdata,
    S04_AXI_rid,
    S04_AXI_rlast,
    S04_AXI_rready,
    S04_AXI_rresp,
    S04_AXI_rvalid,
    S05_ACLK,
    S05_ARESETN,
    S05_AXI_awaddr,
    S05_AXI_awburst,
    S05_AXI_awcache,
    S05_AXI_awid,
    S05_AXI_awlen,
    S05_AXI_awlock,
    S05_AXI_awprot,
    S05_AXI_awqos,
    S05_AXI_awready,
    S05_AXI_awregion,
    S05_AXI_awsize,
    S05_AXI_awvalid,
    S05_AXI_bid,
    S05_AXI_bready,
    S05_AXI_bresp,
    S05_AXI_bvalid,
    S05_AXI_wdata,
    S05_AXI_wlast,
    S05_AXI_wready,
    S05_AXI_wstrb,
    S05_AXI_wvalid,
    S06_ACLK,
    S06_ARESETN,
    S06_AXI_araddr,
    S06_AXI_arburst,
    S06_AXI_arcache,
    S06_AXI_arid,
    S06_AXI_arlen,
    S06_AXI_arlock,
    S06_AXI_arprot,
    S06_AXI_arqos,
    S06_AXI_arready,
    S06_AXI_arregion,
    S06_AXI_arsize,
    S06_AXI_arvalid,
    S06_AXI_rdata,
    S06_AXI_rid,
    S06_AXI_rlast,
    S06_AXI_rready,
    S06_AXI_rresp,
    S06_AXI_rvalid,
    S07_ACLK,
    S07_ARESETN,
    S07_AXI_awaddr,
    S07_AXI_awburst,
    S07_AXI_awcache,
    S07_AXI_awid,
    S07_AXI_awlen,
    S07_AXI_awlock,
    S07_AXI_awprot,
    S07_AXI_awqos,
    S07_AXI_awready,
    S07_AXI_awregion,
    S07_AXI_awsize,
    S07_AXI_awvalid,
    S07_AXI_bid,
    S07_AXI_bready,
    S07_AXI_bresp,
    S07_AXI_bvalid,
    S07_AXI_wdata,
    S07_AXI_wlast,
    S07_AXI_wready,
    S07_AXI_wstrb,
    S07_AXI_wvalid,
    S08_ACLK,
    S08_ARESETN,
    S08_AXI_awaddr,
    S08_AXI_awburst,
    S08_AXI_awcache,
    S08_AXI_awid,
    S08_AXI_awlen,
    S08_AXI_awlock,
    S08_AXI_awprot,
    S08_AXI_awqos,
    S08_AXI_awready,
    S08_AXI_awregion,
    S08_AXI_awsize,
    S08_AXI_awvalid,
    S08_AXI_bid,
    S08_AXI_bready,
    S08_AXI_bresp,
    S08_AXI_bvalid,
    S08_AXI_wdata,
    S08_AXI_wlast,
    S08_AXI_wready,
    S08_AXI_wstrb,
    S08_AXI_wvalid,
    S09_ACLK,
    S09_ARESETN,
    S09_AXI_araddr,
    S09_AXI_arburst,
    S09_AXI_arcache,
    S09_AXI_arid,
    S09_AXI_arlen,
    S09_AXI_arlock,
    S09_AXI_arprot,
    S09_AXI_arqos,
    S09_AXI_arready,
    S09_AXI_arregion,
    S09_AXI_arsize,
    S09_AXI_arvalid,
    S09_AXI_rdata,
    S09_AXI_rid,
    S09_AXI_rlast,
    S09_AXI_rready,
    S09_AXI_rresp,
    S09_AXI_rvalid,
    S10_ACLK,
    S10_ARESETN,
    S10_AXI_awaddr,
    S10_AXI_awburst,
    S10_AXI_awcache,
    S10_AXI_awid,
    S10_AXI_awlen,
    S10_AXI_awlock,
    S10_AXI_awprot,
    S10_AXI_awqos,
    S10_AXI_awready,
    S10_AXI_awregion,
    S10_AXI_awsize,
    S10_AXI_awvalid,
    S10_AXI_bid,
    S10_AXI_bready,
    S10_AXI_bresp,
    S10_AXI_bvalid,
    S10_AXI_wdata,
    S10_AXI_wlast,
    S10_AXI_wready,
    S10_AXI_wstrb,
    S10_AXI_wvalid,
    S11_ACLK,
    S11_ARESETN,
    S11_AXI_araddr,
    S11_AXI_arburst,
    S11_AXI_arcache,
    S11_AXI_arid,
    S11_AXI_arlen,
    S11_AXI_arlock,
    S11_AXI_arprot,
    S11_AXI_arqos,
    S11_AXI_arready,
    S11_AXI_arregion,
    S11_AXI_arsize,
    S11_AXI_arvalid,
    S11_AXI_rdata,
    S11_AXI_rid,
    S11_AXI_rlast,
    S11_AXI_rready,
    S11_AXI_rresp,
    S11_AXI_rvalid,
    S12_ACLK,
    S12_ARESETN,
    S12_AXI_awaddr,
    S12_AXI_awburst,
    S12_AXI_awcache,
    S12_AXI_awid,
    S12_AXI_awlen,
    S12_AXI_awlock,
    S12_AXI_awprot,
    S12_AXI_awqos,
    S12_AXI_awready,
    S12_AXI_awregion,
    S12_AXI_awsize,
    S12_AXI_awvalid,
    S12_AXI_bid,
    S12_AXI_bready,
    S12_AXI_bresp,
    S12_AXI_bvalid,
    S12_AXI_wdata,
    S12_AXI_wlast,
    S12_AXI_wready,
    S12_AXI_wstrb,
    S12_AXI_wvalid,
    S13_ACLK,
    S13_ARESETN,
    S13_AXI_araddr,
    S13_AXI_arburst,
    S13_AXI_arcache,
    S13_AXI_arid,
    S13_AXI_arlen,
    S13_AXI_arlock,
    S13_AXI_arprot,
    S13_AXI_arqos,
    S13_AXI_arready,
    S13_AXI_arregion,
    S13_AXI_arsize,
    S13_AXI_arvalid,
    S13_AXI_awaddr,
    S13_AXI_awburst,
    S13_AXI_awcache,
    S13_AXI_awid,
    S13_AXI_awlen,
    S13_AXI_awlock,
    S13_AXI_awprot,
    S13_AXI_awqos,
    S13_AXI_awready,
    S13_AXI_awregion,
    S13_AXI_awsize,
    S13_AXI_awvalid,
    S13_AXI_bid,
    S13_AXI_bready,
    S13_AXI_bresp,
    S13_AXI_bvalid,
    S13_AXI_rdata,
    S13_AXI_rid,
    S13_AXI_rlast,
    S13_AXI_rready,
    S13_AXI_rresp,
    S13_AXI_rvalid,
    S13_AXI_wdata,
    S13_AXI_wlast,
    S13_AXI_wready,
    S13_AXI_wstrb,
    S13_AXI_wvalid,
    S14_ACLK,
    S14_ARESETN,
    S14_AXI_araddr,
    S14_AXI_arburst,
    S14_AXI_arcache,
    S14_AXI_arid,
    S14_AXI_arlen,
    S14_AXI_arlock,
    S14_AXI_arprot,
    S14_AXI_arqos,
    S14_AXI_arready,
    S14_AXI_arregion,
    S14_AXI_arsize,
    S14_AXI_arvalid,
    S14_AXI_rdata,
    S14_AXI_rid,
    S14_AXI_rlast,
    S14_AXI_rready,
    S14_AXI_rresp,
    S14_AXI_rvalid,
    S15_ACLK,
    S15_ARESETN,
    S15_AXI_awaddr,
    S15_AXI_awburst,
    S15_AXI_awcache,
    S15_AXI_awid,
    S15_AXI_awlen,
    S15_AXI_awlock,
    S15_AXI_awprot,
    S15_AXI_awqos,
    S15_AXI_awready,
    S15_AXI_awregion,
    S15_AXI_awsize,
    S15_AXI_awvalid,
    S15_AXI_bid,
    S15_AXI_bready,
    S15_AXI_bresp,
    S15_AXI_bvalid,
    S15_AXI_wdata,
    S15_AXI_wlast,
    S15_AXI_wready,
    S15_AXI_wstrb,
    S15_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [48:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [48:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [63:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [0:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [3:0]S01_AXI_arregion;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output [0:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [63:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [0:0]S02_AXI_arid;
  input [7:0]S02_AXI_arlen;
  input [1:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [3:0]S02_AXI_arregion;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  output [31:0]S02_AXI_rdata;
  output [0:0]S02_AXI_rid;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [63:0]S03_AXI_awaddr;
  input [1:0]S03_AXI_awburst;
  input [3:0]S03_AXI_awcache;
  input [0:0]S03_AXI_awid;
  input [7:0]S03_AXI_awlen;
  input [1:0]S03_AXI_awlock;
  input [2:0]S03_AXI_awprot;
  input [3:0]S03_AXI_awqos;
  output S03_AXI_awready;
  input [3:0]S03_AXI_awregion;
  input [2:0]S03_AXI_awsize;
  input S03_AXI_awvalid;
  output [0:0]S03_AXI_bid;
  input S03_AXI_bready;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  input [31:0]S03_AXI_wdata;
  input S03_AXI_wlast;
  output S03_AXI_wready;
  input [3:0]S03_AXI_wstrb;
  input S03_AXI_wvalid;
  input S04_ACLK;
  input S04_ARESETN;
  input [63:0]S04_AXI_araddr;
  input [1:0]S04_AXI_arburst;
  input [3:0]S04_AXI_arcache;
  input [0:0]S04_AXI_arid;
  input [7:0]S04_AXI_arlen;
  input [1:0]S04_AXI_arlock;
  input [2:0]S04_AXI_arprot;
  input [3:0]S04_AXI_arqos;
  output S04_AXI_arready;
  input [3:0]S04_AXI_arregion;
  input [2:0]S04_AXI_arsize;
  input S04_AXI_arvalid;
  output [63:0]S04_AXI_rdata;
  output [0:0]S04_AXI_rid;
  output S04_AXI_rlast;
  input S04_AXI_rready;
  output [1:0]S04_AXI_rresp;
  output S04_AXI_rvalid;
  input S05_ACLK;
  input S05_ARESETN;
  input [63:0]S05_AXI_awaddr;
  input [1:0]S05_AXI_awburst;
  input [3:0]S05_AXI_awcache;
  input [0:0]S05_AXI_awid;
  input [7:0]S05_AXI_awlen;
  input [1:0]S05_AXI_awlock;
  input [2:0]S05_AXI_awprot;
  input [3:0]S05_AXI_awqos;
  output S05_AXI_awready;
  input [3:0]S05_AXI_awregion;
  input [2:0]S05_AXI_awsize;
  input S05_AXI_awvalid;
  output [0:0]S05_AXI_bid;
  input S05_AXI_bready;
  output [1:0]S05_AXI_bresp;
  output S05_AXI_bvalid;
  input [63:0]S05_AXI_wdata;
  input S05_AXI_wlast;
  output S05_AXI_wready;
  input [7:0]S05_AXI_wstrb;
  input S05_AXI_wvalid;
  input S06_ACLK;
  input S06_ARESETN;
  input [63:0]S06_AXI_araddr;
  input [1:0]S06_AXI_arburst;
  input [3:0]S06_AXI_arcache;
  input [0:0]S06_AXI_arid;
  input [7:0]S06_AXI_arlen;
  input [1:0]S06_AXI_arlock;
  input [2:0]S06_AXI_arprot;
  input [3:0]S06_AXI_arqos;
  output S06_AXI_arready;
  input [3:0]S06_AXI_arregion;
  input [2:0]S06_AXI_arsize;
  input S06_AXI_arvalid;
  output [255:0]S06_AXI_rdata;
  output [0:0]S06_AXI_rid;
  output S06_AXI_rlast;
  input S06_AXI_rready;
  output [1:0]S06_AXI_rresp;
  output S06_AXI_rvalid;
  input S07_ACLK;
  input S07_ARESETN;
  input [63:0]S07_AXI_awaddr;
  input [1:0]S07_AXI_awburst;
  input [3:0]S07_AXI_awcache;
  input [0:0]S07_AXI_awid;
  input [7:0]S07_AXI_awlen;
  input [1:0]S07_AXI_awlock;
  input [2:0]S07_AXI_awprot;
  input [3:0]S07_AXI_awqos;
  output S07_AXI_awready;
  input [3:0]S07_AXI_awregion;
  input [2:0]S07_AXI_awsize;
  input S07_AXI_awvalid;
  output [0:0]S07_AXI_bid;
  input S07_AXI_bready;
  output [1:0]S07_AXI_bresp;
  output S07_AXI_bvalid;
  input [255:0]S07_AXI_wdata;
  input S07_AXI_wlast;
  output S07_AXI_wready;
  input [31:0]S07_AXI_wstrb;
  input S07_AXI_wvalid;
  input S08_ACLK;
  input S08_ARESETN;
  input [63:0]S08_AXI_awaddr;
  input [1:0]S08_AXI_awburst;
  input [3:0]S08_AXI_awcache;
  input [0:0]S08_AXI_awid;
  input [7:0]S08_AXI_awlen;
  input [1:0]S08_AXI_awlock;
  input [2:0]S08_AXI_awprot;
  input [3:0]S08_AXI_awqos;
  output S08_AXI_awready;
  input [3:0]S08_AXI_awregion;
  input [2:0]S08_AXI_awsize;
  input S08_AXI_awvalid;
  output [0:0]S08_AXI_bid;
  input S08_AXI_bready;
  output [1:0]S08_AXI_bresp;
  output S08_AXI_bvalid;
  input [255:0]S08_AXI_wdata;
  input S08_AXI_wlast;
  output S08_AXI_wready;
  input [31:0]S08_AXI_wstrb;
  input S08_AXI_wvalid;
  input S09_ACLK;
  input S09_ARESETN;
  input [63:0]S09_AXI_araddr;
  input [1:0]S09_AXI_arburst;
  input [3:0]S09_AXI_arcache;
  input [0:0]S09_AXI_arid;
  input [7:0]S09_AXI_arlen;
  input [1:0]S09_AXI_arlock;
  input [2:0]S09_AXI_arprot;
  input [3:0]S09_AXI_arqos;
  output S09_AXI_arready;
  input [3:0]S09_AXI_arregion;
  input [2:0]S09_AXI_arsize;
  input S09_AXI_arvalid;
  output [255:0]S09_AXI_rdata;
  output [0:0]S09_AXI_rid;
  output S09_AXI_rlast;
  input S09_AXI_rready;
  output [1:0]S09_AXI_rresp;
  output S09_AXI_rvalid;
  input S10_ACLK;
  input S10_ARESETN;
  input [63:0]S10_AXI_awaddr;
  input [1:0]S10_AXI_awburst;
  input [3:0]S10_AXI_awcache;
  input [0:0]S10_AXI_awid;
  input [7:0]S10_AXI_awlen;
  input [1:0]S10_AXI_awlock;
  input [2:0]S10_AXI_awprot;
  input [3:0]S10_AXI_awqos;
  output S10_AXI_awready;
  input [3:0]S10_AXI_awregion;
  input [2:0]S10_AXI_awsize;
  input S10_AXI_awvalid;
  output [0:0]S10_AXI_bid;
  input S10_AXI_bready;
  output [1:0]S10_AXI_bresp;
  output S10_AXI_bvalid;
  input [255:0]S10_AXI_wdata;
  input S10_AXI_wlast;
  output S10_AXI_wready;
  input [31:0]S10_AXI_wstrb;
  input S10_AXI_wvalid;
  input S11_ACLK;
  input S11_ARESETN;
  input [63:0]S11_AXI_araddr;
  input [1:0]S11_AXI_arburst;
  input [3:0]S11_AXI_arcache;
  input [0:0]S11_AXI_arid;
  input [7:0]S11_AXI_arlen;
  input [1:0]S11_AXI_arlock;
  input [2:0]S11_AXI_arprot;
  input [3:0]S11_AXI_arqos;
  output S11_AXI_arready;
  input [3:0]S11_AXI_arregion;
  input [2:0]S11_AXI_arsize;
  input S11_AXI_arvalid;
  output [255:0]S11_AXI_rdata;
  output [0:0]S11_AXI_rid;
  output S11_AXI_rlast;
  input S11_AXI_rready;
  output [1:0]S11_AXI_rresp;
  output S11_AXI_rvalid;
  input S12_ACLK;
  input S12_ARESETN;
  input [63:0]S12_AXI_awaddr;
  input [1:0]S12_AXI_awburst;
  input [3:0]S12_AXI_awcache;
  input [0:0]S12_AXI_awid;
  input [7:0]S12_AXI_awlen;
  input [1:0]S12_AXI_awlock;
  input [2:0]S12_AXI_awprot;
  input [3:0]S12_AXI_awqos;
  output S12_AXI_awready;
  input [3:0]S12_AXI_awregion;
  input [2:0]S12_AXI_awsize;
  input S12_AXI_awvalid;
  output [0:0]S12_AXI_bid;
  input S12_AXI_bready;
  output [1:0]S12_AXI_bresp;
  output S12_AXI_bvalid;
  input [255:0]S12_AXI_wdata;
  input S12_AXI_wlast;
  output S12_AXI_wready;
  input [31:0]S12_AXI_wstrb;
  input S12_AXI_wvalid;
  input S13_ACLK;
  input S13_ARESETN;
  input [63:0]S13_AXI_araddr;
  input [1:0]S13_AXI_arburst;
  input [3:0]S13_AXI_arcache;
  input [0:0]S13_AXI_arid;
  input [7:0]S13_AXI_arlen;
  input [1:0]S13_AXI_arlock;
  input [2:0]S13_AXI_arprot;
  input [3:0]S13_AXI_arqos;
  output S13_AXI_arready;
  input [3:0]S13_AXI_arregion;
  input [2:0]S13_AXI_arsize;
  input S13_AXI_arvalid;
  input [63:0]S13_AXI_awaddr;
  input [1:0]S13_AXI_awburst;
  input [3:0]S13_AXI_awcache;
  input [0:0]S13_AXI_awid;
  input [7:0]S13_AXI_awlen;
  input [1:0]S13_AXI_awlock;
  input [2:0]S13_AXI_awprot;
  input [3:0]S13_AXI_awqos;
  output S13_AXI_awready;
  input [3:0]S13_AXI_awregion;
  input [2:0]S13_AXI_awsize;
  input S13_AXI_awvalid;
  output [0:0]S13_AXI_bid;
  input S13_AXI_bready;
  output [1:0]S13_AXI_bresp;
  output S13_AXI_bvalid;
  output [31:0]S13_AXI_rdata;
  output [0:0]S13_AXI_rid;
  output S13_AXI_rlast;
  input S13_AXI_rready;
  output [1:0]S13_AXI_rresp;
  output S13_AXI_rvalid;
  input [31:0]S13_AXI_wdata;
  input S13_AXI_wlast;
  output S13_AXI_wready;
  input [3:0]S13_AXI_wstrb;
  input S13_AXI_wvalid;
  input S14_ACLK;
  input S14_ARESETN;
  input [63:0]S14_AXI_araddr;
  input [1:0]S14_AXI_arburst;
  input [3:0]S14_AXI_arcache;
  input [0:0]S14_AXI_arid;
  input [7:0]S14_AXI_arlen;
  input [1:0]S14_AXI_arlock;
  input [2:0]S14_AXI_arprot;
  input [3:0]S14_AXI_arqos;
  output S14_AXI_arready;
  input [3:0]S14_AXI_arregion;
  input [2:0]S14_AXI_arsize;
  input S14_AXI_arvalid;
  output [31:0]S14_AXI_rdata;
  output [0:0]S14_AXI_rid;
  output S14_AXI_rlast;
  input S14_AXI_rready;
  output [1:0]S14_AXI_rresp;
  output S14_AXI_rvalid;
  input S15_ACLK;
  input S15_ARESETN;
  input [63:0]S15_AXI_awaddr;
  input [1:0]S15_AXI_awburst;
  input [3:0]S15_AXI_awcache;
  input [0:0]S15_AXI_awid;
  input [7:0]S15_AXI_awlen;
  input [1:0]S15_AXI_awlock;
  input [2:0]S15_AXI_awprot;
  input [3:0]S15_AXI_awqos;
  output S15_AXI_awready;
  input [3:0]S15_AXI_awregion;
  input [2:0]S15_AXI_awsize;
  input S15_AXI_awvalid;
  output [0:0]S15_AXI_bid;
  input S15_AXI_bready;
  output [1:0]S15_AXI_bresp;
  output S15_AXI_bvalid;
  input [31:0]S15_AXI_wdata;
  input S15_AXI_wlast;
  output S15_AXI_wready;
  input [3:0]S15_AXI_wstrb;
  input S15_AXI_wvalid;

  wire axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARVALID;
  wire [31:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RDATA;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARVALID;
  wire [31:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RDATA;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARVALID;
  wire [31:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RDATA;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWVALID;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_BID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_BREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_BRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_BVALID;
  wire [31:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WDATA;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WSTRB;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RDATA;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWVALID;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_BID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_BREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_BRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_BVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WDATA;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WREADY;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WSTRB;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARVALID;
  wire [255:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RDATA;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWVALID;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_BID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_BREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_BRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_BVALID;
  wire [255:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WDATA;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WREADY;
  wire [31:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WSTRB;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWVALID;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_BID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_BREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_BRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_BVALID;
  wire [255:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WDATA;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WREADY;
  wire [31:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WSTRB;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARVALID;
  wire [255:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RDATA;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWVALID;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_BID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_BREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_BRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_BVALID;
  wire [255:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WDATA;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WREADY;
  wire [31:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WSTRB;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARVALID;
  wire [255:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RDATA;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWVALID;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_BID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_BREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_BRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_BVALID;
  wire [255:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WDATA;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WREADY;
  wire [31:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WSTRB;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWVALID;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_BID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_BREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_BRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_BVALID;
  wire [31:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RDATA;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RVALID;
  wire [31:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WDATA;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WSTRB;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARVALID;
  wire [31:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RDATA;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWQOS;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWSIZE;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWVALID;
  wire [0:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_BID;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_BREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_BRESP;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_BVALID;
  wire [31:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WDATA;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WLAST;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WSTRB;
  wire axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WVALID;
  wire [48:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARADDR;
  wire [1:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARBURST;
  wire [3:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARCACHE;
  wire [7:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARLEN;
  wire [0:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARLOCK;
  wire [2:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARPROT;
  wire [3:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARQOS;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARREADY;
  wire [2:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARSIZE;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARVALID;
  wire [48:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWADDR;
  wire [1:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWBURST;
  wire [3:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWCACHE;
  wire [7:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWLEN;
  wire [0:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWLOCK;
  wire [2:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWPROT;
  wire [3:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWQOS;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWREADY;
  wire [2:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWSIZE;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWVALID;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_BREADY;
  wire [1:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_BRESP;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_BVALID;
  wire [127:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RDATA;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RLAST;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RREADY;
  wire [1:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RRESP;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RVALID;
  wire [127:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WDATA;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WLAST;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WREADY;
  wire [15:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WSTRB;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [255:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [511:256]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [63:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [767:512]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [63:0]s03_couplers_to_xbar_AWADDR;
  wire [1:0]s03_couplers_to_xbar_AWBURST;
  wire [3:0]s03_couplers_to_xbar_AWCACHE;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire [0:0]s03_couplers_to_xbar_AWLOCK;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:0]s03_couplers_to_xbar_AWQOS;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire [2:0]s03_couplers_to_xbar_AWSIZE;
  wire s03_couplers_to_xbar_AWVALID;
  wire s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [255:0]s03_couplers_to_xbar_WDATA;
  wire s03_couplers_to_xbar_WLAST;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [31:0]s03_couplers_to_xbar_WSTRB;
  wire s03_couplers_to_xbar_WVALID;
  wire [63:0]s04_couplers_to_xbar_ARADDR;
  wire [1:0]s04_couplers_to_xbar_ARBURST;
  wire [3:0]s04_couplers_to_xbar_ARCACHE;
  wire [7:0]s04_couplers_to_xbar_ARLEN;
  wire [0:0]s04_couplers_to_xbar_ARLOCK;
  wire [2:0]s04_couplers_to_xbar_ARPROT;
  wire [3:0]s04_couplers_to_xbar_ARQOS;
  wire [4:4]s04_couplers_to_xbar_ARREADY;
  wire [2:0]s04_couplers_to_xbar_ARSIZE;
  wire s04_couplers_to_xbar_ARVALID;
  wire [1279:1024]s04_couplers_to_xbar_RDATA;
  wire [4:4]s04_couplers_to_xbar_RLAST;
  wire s04_couplers_to_xbar_RREADY;
  wire [9:8]s04_couplers_to_xbar_RRESP;
  wire [4:4]s04_couplers_to_xbar_RVALID;
  wire [63:0]s05_couplers_to_xbar_AWADDR;
  wire [1:0]s05_couplers_to_xbar_AWBURST;
  wire [3:0]s05_couplers_to_xbar_AWCACHE;
  wire [7:0]s05_couplers_to_xbar_AWLEN;
  wire [0:0]s05_couplers_to_xbar_AWLOCK;
  wire [2:0]s05_couplers_to_xbar_AWPROT;
  wire [3:0]s05_couplers_to_xbar_AWQOS;
  wire [5:5]s05_couplers_to_xbar_AWREADY;
  wire [2:0]s05_couplers_to_xbar_AWSIZE;
  wire s05_couplers_to_xbar_AWVALID;
  wire s05_couplers_to_xbar_BREADY;
  wire [11:10]s05_couplers_to_xbar_BRESP;
  wire [5:5]s05_couplers_to_xbar_BVALID;
  wire [255:0]s05_couplers_to_xbar_WDATA;
  wire s05_couplers_to_xbar_WLAST;
  wire [5:5]s05_couplers_to_xbar_WREADY;
  wire [31:0]s05_couplers_to_xbar_WSTRB;
  wire s05_couplers_to_xbar_WVALID;
  wire [63:0]s06_couplers_to_xbar_ARADDR;
  wire [1:0]s06_couplers_to_xbar_ARBURST;
  wire [3:0]s06_couplers_to_xbar_ARCACHE;
  wire [0:0]s06_couplers_to_xbar_ARID;
  wire [7:0]s06_couplers_to_xbar_ARLEN;
  wire [0:0]s06_couplers_to_xbar_ARLOCK;
  wire [2:0]s06_couplers_to_xbar_ARPROT;
  wire [3:0]s06_couplers_to_xbar_ARQOS;
  wire [6:6]s06_couplers_to_xbar_ARREADY;
  wire [2:0]s06_couplers_to_xbar_ARSIZE;
  wire s06_couplers_to_xbar_ARVALID;
  wire [1791:1536]s06_couplers_to_xbar_RDATA;
  wire [34:30]s06_couplers_to_xbar_RID;
  wire [6:6]s06_couplers_to_xbar_RLAST;
  wire s06_couplers_to_xbar_RREADY;
  wire [13:12]s06_couplers_to_xbar_RRESP;
  wire [6:6]s06_couplers_to_xbar_RVALID;
  wire [63:0]s07_couplers_to_xbar_AWADDR;
  wire [1:0]s07_couplers_to_xbar_AWBURST;
  wire [3:0]s07_couplers_to_xbar_AWCACHE;
  wire [0:0]s07_couplers_to_xbar_AWID;
  wire [7:0]s07_couplers_to_xbar_AWLEN;
  wire [0:0]s07_couplers_to_xbar_AWLOCK;
  wire [2:0]s07_couplers_to_xbar_AWPROT;
  wire [3:0]s07_couplers_to_xbar_AWQOS;
  wire [7:7]s07_couplers_to_xbar_AWREADY;
  wire [2:0]s07_couplers_to_xbar_AWSIZE;
  wire s07_couplers_to_xbar_AWVALID;
  wire [39:35]s07_couplers_to_xbar_BID;
  wire s07_couplers_to_xbar_BREADY;
  wire [15:14]s07_couplers_to_xbar_BRESP;
  wire [7:7]s07_couplers_to_xbar_BVALID;
  wire [255:0]s07_couplers_to_xbar_WDATA;
  wire s07_couplers_to_xbar_WLAST;
  wire [7:7]s07_couplers_to_xbar_WREADY;
  wire [31:0]s07_couplers_to_xbar_WSTRB;
  wire s07_couplers_to_xbar_WVALID;
  wire [63:0]s08_couplers_to_xbar_AWADDR;
  wire [1:0]s08_couplers_to_xbar_AWBURST;
  wire [3:0]s08_couplers_to_xbar_AWCACHE;
  wire [0:0]s08_couplers_to_xbar_AWID;
  wire [7:0]s08_couplers_to_xbar_AWLEN;
  wire [0:0]s08_couplers_to_xbar_AWLOCK;
  wire [2:0]s08_couplers_to_xbar_AWPROT;
  wire [3:0]s08_couplers_to_xbar_AWQOS;
  wire [8:8]s08_couplers_to_xbar_AWREADY;
  wire [2:0]s08_couplers_to_xbar_AWSIZE;
  wire s08_couplers_to_xbar_AWVALID;
  wire [44:40]s08_couplers_to_xbar_BID;
  wire s08_couplers_to_xbar_BREADY;
  wire [17:16]s08_couplers_to_xbar_BRESP;
  wire [8:8]s08_couplers_to_xbar_BVALID;
  wire [255:0]s08_couplers_to_xbar_WDATA;
  wire s08_couplers_to_xbar_WLAST;
  wire [8:8]s08_couplers_to_xbar_WREADY;
  wire [31:0]s08_couplers_to_xbar_WSTRB;
  wire s08_couplers_to_xbar_WVALID;
  wire [63:0]s09_couplers_to_xbar_ARADDR;
  wire [1:0]s09_couplers_to_xbar_ARBURST;
  wire [3:0]s09_couplers_to_xbar_ARCACHE;
  wire [0:0]s09_couplers_to_xbar_ARID;
  wire [7:0]s09_couplers_to_xbar_ARLEN;
  wire [0:0]s09_couplers_to_xbar_ARLOCK;
  wire [2:0]s09_couplers_to_xbar_ARPROT;
  wire [3:0]s09_couplers_to_xbar_ARQOS;
  wire [9:9]s09_couplers_to_xbar_ARREADY;
  wire [2:0]s09_couplers_to_xbar_ARSIZE;
  wire s09_couplers_to_xbar_ARVALID;
  wire [2559:2304]s09_couplers_to_xbar_RDATA;
  wire [49:45]s09_couplers_to_xbar_RID;
  wire [9:9]s09_couplers_to_xbar_RLAST;
  wire s09_couplers_to_xbar_RREADY;
  wire [19:18]s09_couplers_to_xbar_RRESP;
  wire [9:9]s09_couplers_to_xbar_RVALID;
  wire [63:0]s10_couplers_to_xbar_AWADDR;
  wire [1:0]s10_couplers_to_xbar_AWBURST;
  wire [3:0]s10_couplers_to_xbar_AWCACHE;
  wire [0:0]s10_couplers_to_xbar_AWID;
  wire [7:0]s10_couplers_to_xbar_AWLEN;
  wire [0:0]s10_couplers_to_xbar_AWLOCK;
  wire [2:0]s10_couplers_to_xbar_AWPROT;
  wire [3:0]s10_couplers_to_xbar_AWQOS;
  wire [10:10]s10_couplers_to_xbar_AWREADY;
  wire [2:0]s10_couplers_to_xbar_AWSIZE;
  wire s10_couplers_to_xbar_AWVALID;
  wire [54:50]s10_couplers_to_xbar_BID;
  wire s10_couplers_to_xbar_BREADY;
  wire [21:20]s10_couplers_to_xbar_BRESP;
  wire [10:10]s10_couplers_to_xbar_BVALID;
  wire [255:0]s10_couplers_to_xbar_WDATA;
  wire s10_couplers_to_xbar_WLAST;
  wire [10:10]s10_couplers_to_xbar_WREADY;
  wire [31:0]s10_couplers_to_xbar_WSTRB;
  wire s10_couplers_to_xbar_WVALID;
  wire [63:0]s11_couplers_to_xbar_ARADDR;
  wire [1:0]s11_couplers_to_xbar_ARBURST;
  wire [3:0]s11_couplers_to_xbar_ARCACHE;
  wire [0:0]s11_couplers_to_xbar_ARID;
  wire [7:0]s11_couplers_to_xbar_ARLEN;
  wire [0:0]s11_couplers_to_xbar_ARLOCK;
  wire [2:0]s11_couplers_to_xbar_ARPROT;
  wire [3:0]s11_couplers_to_xbar_ARQOS;
  wire [11:11]s11_couplers_to_xbar_ARREADY;
  wire [2:0]s11_couplers_to_xbar_ARSIZE;
  wire s11_couplers_to_xbar_ARVALID;
  wire [3071:2816]s11_couplers_to_xbar_RDATA;
  wire [59:55]s11_couplers_to_xbar_RID;
  wire [11:11]s11_couplers_to_xbar_RLAST;
  wire s11_couplers_to_xbar_RREADY;
  wire [23:22]s11_couplers_to_xbar_RRESP;
  wire [11:11]s11_couplers_to_xbar_RVALID;
  wire [63:0]s12_couplers_to_xbar_AWADDR;
  wire [1:0]s12_couplers_to_xbar_AWBURST;
  wire [3:0]s12_couplers_to_xbar_AWCACHE;
  wire [0:0]s12_couplers_to_xbar_AWID;
  wire [7:0]s12_couplers_to_xbar_AWLEN;
  wire [0:0]s12_couplers_to_xbar_AWLOCK;
  wire [2:0]s12_couplers_to_xbar_AWPROT;
  wire [3:0]s12_couplers_to_xbar_AWQOS;
  wire [12:12]s12_couplers_to_xbar_AWREADY;
  wire [2:0]s12_couplers_to_xbar_AWSIZE;
  wire s12_couplers_to_xbar_AWVALID;
  wire [64:60]s12_couplers_to_xbar_BID;
  wire s12_couplers_to_xbar_BREADY;
  wire [25:24]s12_couplers_to_xbar_BRESP;
  wire [12:12]s12_couplers_to_xbar_BVALID;
  wire [255:0]s12_couplers_to_xbar_WDATA;
  wire s12_couplers_to_xbar_WLAST;
  wire [12:12]s12_couplers_to_xbar_WREADY;
  wire [31:0]s12_couplers_to_xbar_WSTRB;
  wire s12_couplers_to_xbar_WVALID;
  wire [63:0]s13_couplers_to_xbar_ARADDR;
  wire [1:0]s13_couplers_to_xbar_ARBURST;
  wire [3:0]s13_couplers_to_xbar_ARCACHE;
  wire [7:0]s13_couplers_to_xbar_ARLEN;
  wire [0:0]s13_couplers_to_xbar_ARLOCK;
  wire [2:0]s13_couplers_to_xbar_ARPROT;
  wire [3:0]s13_couplers_to_xbar_ARQOS;
  wire [13:13]s13_couplers_to_xbar_ARREADY;
  wire [2:0]s13_couplers_to_xbar_ARSIZE;
  wire s13_couplers_to_xbar_ARVALID;
  wire [63:0]s13_couplers_to_xbar_AWADDR;
  wire [1:0]s13_couplers_to_xbar_AWBURST;
  wire [3:0]s13_couplers_to_xbar_AWCACHE;
  wire [7:0]s13_couplers_to_xbar_AWLEN;
  wire [0:0]s13_couplers_to_xbar_AWLOCK;
  wire [2:0]s13_couplers_to_xbar_AWPROT;
  wire [3:0]s13_couplers_to_xbar_AWQOS;
  wire [13:13]s13_couplers_to_xbar_AWREADY;
  wire [2:0]s13_couplers_to_xbar_AWSIZE;
  wire s13_couplers_to_xbar_AWVALID;
  wire s13_couplers_to_xbar_BREADY;
  wire [27:26]s13_couplers_to_xbar_BRESP;
  wire [13:13]s13_couplers_to_xbar_BVALID;
  wire [3583:3328]s13_couplers_to_xbar_RDATA;
  wire [13:13]s13_couplers_to_xbar_RLAST;
  wire s13_couplers_to_xbar_RREADY;
  wire [27:26]s13_couplers_to_xbar_RRESP;
  wire [13:13]s13_couplers_to_xbar_RVALID;
  wire [255:0]s13_couplers_to_xbar_WDATA;
  wire s13_couplers_to_xbar_WLAST;
  wire [13:13]s13_couplers_to_xbar_WREADY;
  wire [31:0]s13_couplers_to_xbar_WSTRB;
  wire s13_couplers_to_xbar_WVALID;
  wire [63:0]s14_couplers_to_xbar_ARADDR;
  wire [1:0]s14_couplers_to_xbar_ARBURST;
  wire [3:0]s14_couplers_to_xbar_ARCACHE;
  wire [7:0]s14_couplers_to_xbar_ARLEN;
  wire [0:0]s14_couplers_to_xbar_ARLOCK;
  wire [2:0]s14_couplers_to_xbar_ARPROT;
  wire [3:0]s14_couplers_to_xbar_ARQOS;
  wire [14:14]s14_couplers_to_xbar_ARREADY;
  wire [2:0]s14_couplers_to_xbar_ARSIZE;
  wire s14_couplers_to_xbar_ARVALID;
  wire [3839:3584]s14_couplers_to_xbar_RDATA;
  wire [14:14]s14_couplers_to_xbar_RLAST;
  wire s14_couplers_to_xbar_RREADY;
  wire [29:28]s14_couplers_to_xbar_RRESP;
  wire [14:14]s14_couplers_to_xbar_RVALID;
  wire [63:0]s15_couplers_to_xbar_AWADDR;
  wire [1:0]s15_couplers_to_xbar_AWBURST;
  wire [3:0]s15_couplers_to_xbar_AWCACHE;
  wire [7:0]s15_couplers_to_xbar_AWLEN;
  wire [0:0]s15_couplers_to_xbar_AWLOCK;
  wire [2:0]s15_couplers_to_xbar_AWPROT;
  wire [3:0]s15_couplers_to_xbar_AWQOS;
  wire [15:15]s15_couplers_to_xbar_AWREADY;
  wire [2:0]s15_couplers_to_xbar_AWSIZE;
  wire s15_couplers_to_xbar_AWVALID;
  wire s15_couplers_to_xbar_BREADY;
  wire [31:30]s15_couplers_to_xbar_BRESP;
  wire [15:15]s15_couplers_to_xbar_BVALID;
  wire [255:0]s15_couplers_to_xbar_WDATA;
  wire s15_couplers_to_xbar_WLAST;
  wire [15:15]s15_couplers_to_xbar_WREADY;
  wire [31:0]s15_couplers_to_xbar_WSTRB;
  wire s15_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [4:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [4:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [4:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [255:0]xbar_to_m00_couplers_RDATA;
  wire [4:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [255:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [31:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [15:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [15:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [79:0]NLW_xbar_s_axi_bid_UNCONNECTED;
  wire [31:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [15:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [4095:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [79:0]NLW_xbar_s_axi_rid_UNCONNECTED;
  wire [15:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [31:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [15:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;
  wire [15:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_AXI_araddr[48:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARCACHE;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARVALID;
  assign M00_AXI_awaddr[48:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWCACHE;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RREADY;
  assign M00_AXI_wdata[127:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WLAST;
  assign M00_AXI_wstrb[15:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WVALID;
  assign S00_AXI_arready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARREADY;
  assign S00_AXI_rdata[31:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RVALID;
  assign S01_AXI_arready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARREADY;
  assign S01_AXI_rdata[31:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RDATA;
  assign S01_AXI_rid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RID;
  assign S01_AXI_rlast = axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RVALID;
  assign S02_AXI_arready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARREADY;
  assign S02_AXI_rdata[31:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RDATA;
  assign S02_AXI_rid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RID;
  assign S02_AXI_rlast = axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RVALID;
  assign S03_AXI_awready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWREADY;
  assign S03_AXI_bid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_BID;
  assign S03_AXI_bresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_BRESP;
  assign S03_AXI_bvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_BVALID;
  assign S03_AXI_wready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WREADY;
  assign S04_AXI_arready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARREADY;
  assign S04_AXI_rdata[63:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RDATA;
  assign S04_AXI_rid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RID;
  assign S04_AXI_rlast = axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RLAST;
  assign S04_AXI_rresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RRESP;
  assign S04_AXI_rvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RVALID;
  assign S05_AXI_awready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWREADY;
  assign S05_AXI_bid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_BID;
  assign S05_AXI_bresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_BRESP;
  assign S05_AXI_bvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_BVALID;
  assign S05_AXI_wready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WREADY;
  assign S06_AXI_arready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARREADY;
  assign S06_AXI_rdata[255:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RDATA;
  assign S06_AXI_rid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RID;
  assign S06_AXI_rlast = axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RLAST;
  assign S06_AXI_rresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RRESP;
  assign S06_AXI_rvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RVALID;
  assign S07_AXI_awready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWREADY;
  assign S07_AXI_bid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_BID;
  assign S07_AXI_bresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_BRESP;
  assign S07_AXI_bvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_BVALID;
  assign S07_AXI_wready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WREADY;
  assign S08_AXI_awready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWREADY;
  assign S08_AXI_bid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_BID;
  assign S08_AXI_bresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_BRESP;
  assign S08_AXI_bvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_BVALID;
  assign S08_AXI_wready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WREADY;
  assign S09_AXI_arready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARREADY;
  assign S09_AXI_rdata[255:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RDATA;
  assign S09_AXI_rid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RID;
  assign S09_AXI_rlast = axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RLAST;
  assign S09_AXI_rresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RRESP;
  assign S09_AXI_rvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RVALID;
  assign S10_AXI_awready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWREADY;
  assign S10_AXI_bid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_BID;
  assign S10_AXI_bresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_BRESP;
  assign S10_AXI_bvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_BVALID;
  assign S10_AXI_wready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WREADY;
  assign S11_AXI_arready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARREADY;
  assign S11_AXI_rdata[255:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RDATA;
  assign S11_AXI_rid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RID;
  assign S11_AXI_rlast = axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RLAST;
  assign S11_AXI_rresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RRESP;
  assign S11_AXI_rvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RVALID;
  assign S12_AXI_awready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWREADY;
  assign S12_AXI_bid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_BID;
  assign S12_AXI_bresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_BRESP;
  assign S12_AXI_bvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_BVALID;
  assign S12_AXI_wready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WREADY;
  assign S13_AXI_arready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARREADY;
  assign S13_AXI_awready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWREADY;
  assign S13_AXI_bid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_BID;
  assign S13_AXI_bresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_BRESP;
  assign S13_AXI_bvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_BVALID;
  assign S13_AXI_rdata[31:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RDATA;
  assign S13_AXI_rid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RID;
  assign S13_AXI_rlast = axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RLAST;
  assign S13_AXI_rresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RRESP;
  assign S13_AXI_rvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RVALID;
  assign S13_AXI_wready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WREADY;
  assign S14_AXI_arready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARREADY;
  assign S14_AXI_rdata[31:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RDATA;
  assign S14_AXI_rid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RID;
  assign S14_AXI_rlast = axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RLAST;
  assign S14_AXI_rresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RRESP;
  assign S14_AXI_rvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RVALID;
  assign S15_AXI_awready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWREADY;
  assign S15_AXI_bid[0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_BID;
  assign S15_AXI_bresp[1:0] = axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_BRESP;
  assign S15_AXI_bvalid = axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_BVALID;
  assign S15_AXI_wready = axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WREADY;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net = ACLK;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net = ARESETN;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARADDR = S01_AXI_araddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARID = S01_AXI_arid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARLOCK = S01_AXI_arlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARREGION = S01_AXI_arregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARADDR = S02_AXI_araddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARID = S02_AXI_arid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARLOCK = S02_AXI_arlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARQOS = S02_AXI_arqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARREGION = S02_AXI_arregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RREADY = S02_AXI_rready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWADDR = S03_AXI_awaddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWBURST = S03_AXI_awburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWCACHE = S03_AXI_awcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWID = S03_AXI_awid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWLEN = S03_AXI_awlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWLOCK = S03_AXI_awlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWPROT = S03_AXI_awprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWQOS = S03_AXI_awqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWREGION = S03_AXI_awregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWSIZE = S03_AXI_awsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWVALID = S03_AXI_awvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_BREADY = S03_AXI_bready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WDATA = S03_AXI_wdata[31:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WLAST = S03_AXI_wlast;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WSTRB = S03_AXI_wstrb[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WVALID = S03_AXI_wvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARADDR = S04_AXI_araddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARBURST = S04_AXI_arburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARCACHE = S04_AXI_arcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARID = S04_AXI_arid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARLEN = S04_AXI_arlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARLOCK = S04_AXI_arlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARPROT = S04_AXI_arprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARQOS = S04_AXI_arqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARREGION = S04_AXI_arregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARSIZE = S04_AXI_arsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARVALID = S04_AXI_arvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RREADY = S04_AXI_rready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWADDR = S05_AXI_awaddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWBURST = S05_AXI_awburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWCACHE = S05_AXI_awcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWID = S05_AXI_awid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWLEN = S05_AXI_awlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWLOCK = S05_AXI_awlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWPROT = S05_AXI_awprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWQOS = S05_AXI_awqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWREGION = S05_AXI_awregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWSIZE = S05_AXI_awsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWVALID = S05_AXI_awvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_BREADY = S05_AXI_bready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WDATA = S05_AXI_wdata[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WLAST = S05_AXI_wlast;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WSTRB = S05_AXI_wstrb[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WVALID = S05_AXI_wvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARADDR = S06_AXI_araddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARBURST = S06_AXI_arburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARCACHE = S06_AXI_arcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARID = S06_AXI_arid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARLEN = S06_AXI_arlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARLOCK = S06_AXI_arlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARPROT = S06_AXI_arprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARQOS = S06_AXI_arqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARREGION = S06_AXI_arregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARSIZE = S06_AXI_arsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARVALID = S06_AXI_arvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RREADY = S06_AXI_rready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWADDR = S07_AXI_awaddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWBURST = S07_AXI_awburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWCACHE = S07_AXI_awcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWID = S07_AXI_awid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWLEN = S07_AXI_awlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWLOCK = S07_AXI_awlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWPROT = S07_AXI_awprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWQOS = S07_AXI_awqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWREGION = S07_AXI_awregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWSIZE = S07_AXI_awsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWVALID = S07_AXI_awvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_BREADY = S07_AXI_bready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WDATA = S07_AXI_wdata[255:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WLAST = S07_AXI_wlast;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WSTRB = S07_AXI_wstrb[31:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WVALID = S07_AXI_wvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWADDR = S08_AXI_awaddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWBURST = S08_AXI_awburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWCACHE = S08_AXI_awcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWID = S08_AXI_awid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWLEN = S08_AXI_awlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWLOCK = S08_AXI_awlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWPROT = S08_AXI_awprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWQOS = S08_AXI_awqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWREGION = S08_AXI_awregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWSIZE = S08_AXI_awsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWVALID = S08_AXI_awvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_BREADY = S08_AXI_bready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WDATA = S08_AXI_wdata[255:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WLAST = S08_AXI_wlast;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WSTRB = S08_AXI_wstrb[31:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WVALID = S08_AXI_wvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARADDR = S09_AXI_araddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARBURST = S09_AXI_arburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARCACHE = S09_AXI_arcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARID = S09_AXI_arid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARLEN = S09_AXI_arlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARLOCK = S09_AXI_arlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARPROT = S09_AXI_arprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARQOS = S09_AXI_arqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARREGION = S09_AXI_arregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARSIZE = S09_AXI_arsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARVALID = S09_AXI_arvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RREADY = S09_AXI_rready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWADDR = S10_AXI_awaddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWBURST = S10_AXI_awburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWCACHE = S10_AXI_awcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWID = S10_AXI_awid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWLEN = S10_AXI_awlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWLOCK = S10_AXI_awlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWPROT = S10_AXI_awprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWQOS = S10_AXI_awqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWREGION = S10_AXI_awregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWSIZE = S10_AXI_awsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWVALID = S10_AXI_awvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_BREADY = S10_AXI_bready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WDATA = S10_AXI_wdata[255:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WLAST = S10_AXI_wlast;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WSTRB = S10_AXI_wstrb[31:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WVALID = S10_AXI_wvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARADDR = S11_AXI_araddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARBURST = S11_AXI_arburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARCACHE = S11_AXI_arcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARID = S11_AXI_arid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARLEN = S11_AXI_arlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARLOCK = S11_AXI_arlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARPROT = S11_AXI_arprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARQOS = S11_AXI_arqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARREGION = S11_AXI_arregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARSIZE = S11_AXI_arsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARVALID = S11_AXI_arvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RREADY = S11_AXI_rready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWADDR = S12_AXI_awaddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWBURST = S12_AXI_awburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWCACHE = S12_AXI_awcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWID = S12_AXI_awid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWLEN = S12_AXI_awlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWLOCK = S12_AXI_awlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWPROT = S12_AXI_awprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWQOS = S12_AXI_awqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWREGION = S12_AXI_awregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWSIZE = S12_AXI_awsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWVALID = S12_AXI_awvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_BREADY = S12_AXI_bready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WDATA = S12_AXI_wdata[255:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WLAST = S12_AXI_wlast;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WSTRB = S12_AXI_wstrb[31:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WVALID = S12_AXI_wvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARADDR = S13_AXI_araddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARBURST = S13_AXI_arburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARCACHE = S13_AXI_arcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARID = S13_AXI_arid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARLEN = S13_AXI_arlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARLOCK = S13_AXI_arlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARPROT = S13_AXI_arprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARQOS = S13_AXI_arqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARREGION = S13_AXI_arregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARSIZE = S13_AXI_arsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARVALID = S13_AXI_arvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWADDR = S13_AXI_awaddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWBURST = S13_AXI_awburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWCACHE = S13_AXI_awcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWID = S13_AXI_awid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWLEN = S13_AXI_awlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWLOCK = S13_AXI_awlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWPROT = S13_AXI_awprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWQOS = S13_AXI_awqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWREGION = S13_AXI_awregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWSIZE = S13_AXI_awsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWVALID = S13_AXI_awvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_BREADY = S13_AXI_bready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RREADY = S13_AXI_rready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WDATA = S13_AXI_wdata[31:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WLAST = S13_AXI_wlast;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WSTRB = S13_AXI_wstrb[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WVALID = S13_AXI_wvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARADDR = S14_AXI_araddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARBURST = S14_AXI_arburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARCACHE = S14_AXI_arcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARID = S14_AXI_arid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARLEN = S14_AXI_arlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARLOCK = S14_AXI_arlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARPROT = S14_AXI_arprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARQOS = S14_AXI_arqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARREGION = S14_AXI_arregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARSIZE = S14_AXI_arsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARVALID = S14_AXI_arvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RREADY = S14_AXI_rready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWADDR = S15_AXI_awaddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWBURST = S15_AXI_awburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWCACHE = S15_AXI_awcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWID = S15_AXI_awid[0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWLEN = S15_AXI_awlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWLOCK = S15_AXI_awlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWPROT = S15_AXI_awprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWQOS = S15_AXI_awqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWREGION = S15_AXI_awregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWSIZE = S15_AXI_awsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWVALID = S15_AXI_awvalid;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_BREADY = S15_AXI_bready;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WDATA = S15_AXI_wdata[31:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WLAST = S15_AXI_wlast;
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WSTRB = S15_AXI_wstrb[3:0];
  assign axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WVALID = S15_AXI_wvalid;
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RDATA = M00_AXI_rdata[127:0];
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WREADY = M00_AXI_wready;
  m00_couplers_imp_16DCDKE m00_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RDATA),
        .M_AXI_rlast(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP0_FPD_WVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_115V24D s00_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_araddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_ARVALID),
        .S_AXI_rdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RID),
        .S_AXI_rlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s00_couplers_RVALID));
  s01_couplers_imp_14Q51OD s01_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_araddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARCACHE),
        .S_AXI_arid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARID),
        .S_AXI_arlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARPROT),
        .S_AXI_arqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARQOS),
        .S_AXI_arready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARREADY),
        .S_AXI_arregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARREGION),
        .S_AXI_arsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_ARVALID),
        .S_AXI_rdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RDATA),
        .S_AXI_rid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RID),
        .S_AXI_rlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s01_couplers_RVALID));
  s02_couplers_imp_1BNJ6YL s02_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_araddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARADDR),
        .S_AXI_arburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARBURST),
        .S_AXI_arcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARCACHE),
        .S_AXI_arid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARID),
        .S_AXI_arlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARLEN),
        .S_AXI_arlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARPROT),
        .S_AXI_arqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARQOS),
        .S_AXI_arready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARREADY),
        .S_AXI_arregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARREGION),
        .S_AXI_arsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_ARVALID),
        .S_AXI_rdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RDATA),
        .S_AXI_rid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RID),
        .S_AXI_rlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RLAST),
        .S_AXI_rready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s02_couplers_RVALID));
  s03_couplers_imp_1GBS94T s03_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s03_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s03_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s03_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s03_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s03_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s03_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s03_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s03_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s03_couplers_to_xbar_WLAST),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_awaddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWADDR),
        .S_AXI_awburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWBURST),
        .S_AXI_awcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWCACHE),
        .S_AXI_awid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWID),
        .S_AXI_awlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWLEN),
        .S_AXI_awlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWLOCK),
        .S_AXI_awprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWPROT),
        .S_AXI_awqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWQOS),
        .S_AXI_awready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWREADY),
        .S_AXI_awregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWREGION),
        .S_AXI_awsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWSIZE),
        .S_AXI_awvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_AWVALID),
        .S_AXI_bid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_BID),
        .S_AXI_bready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_BVALID),
        .S_AXI_wdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WDATA),
        .S_AXI_wlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WLAST),
        .S_AXI_wready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s03_couplers_WVALID));
  s04_couplers_imp_1OAM0L9 s04_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_araddr(s04_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s04_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s04_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s04_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s04_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s04_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s04_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s04_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s04_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s04_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s04_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s04_couplers_to_xbar_RLAST),
        .M_AXI_rready(s04_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s04_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s04_couplers_to_xbar_RVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_araddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARADDR),
        .S_AXI_arburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARBURST),
        .S_AXI_arcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARCACHE),
        .S_AXI_arid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARID),
        .S_AXI_arlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARLEN),
        .S_AXI_arlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARLOCK),
        .S_AXI_arprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARPROT),
        .S_AXI_arqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARQOS),
        .S_AXI_arready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARREADY),
        .S_AXI_arregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARREGION),
        .S_AXI_arsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARSIZE),
        .S_AXI_arvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_ARVALID),
        .S_AXI_rdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RDATA),
        .S_AXI_rid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RID),
        .S_AXI_rlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RLAST),
        .S_AXI_rready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s04_couplers_RVALID));
  s05_couplers_imp_1L9NNB1 s05_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_awaddr(s05_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s05_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s05_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s05_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s05_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s05_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s05_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s05_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s05_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s05_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s05_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s05_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s05_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s05_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s05_couplers_to_xbar_WLAST),
        .M_AXI_wready(s05_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s05_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s05_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_awaddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWADDR),
        .S_AXI_awburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWBURST),
        .S_AXI_awcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWCACHE),
        .S_AXI_awid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWID),
        .S_AXI_awlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWLEN),
        .S_AXI_awlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWLOCK),
        .S_AXI_awprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWPROT),
        .S_AXI_awqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWQOS),
        .S_AXI_awready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWREADY),
        .S_AXI_awregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWREGION),
        .S_AXI_awsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWSIZE),
        .S_AXI_awvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_AWVALID),
        .S_AXI_bid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_BID),
        .S_AXI_bready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_BVALID),
        .S_AXI_wdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WDATA),
        .S_AXI_wlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WLAST),
        .S_AXI_wready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s05_couplers_WVALID));
  s06_couplers_imp_1WKETBX s06_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_araddr(s06_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s06_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s06_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s06_couplers_to_xbar_ARID),
        .M_AXI_arlen(s06_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s06_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s06_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s06_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s06_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s06_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s06_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s06_couplers_to_xbar_RDATA),
        .M_AXI_rid(s06_couplers_to_xbar_RID),
        .M_AXI_rlast(s06_couplers_to_xbar_RLAST),
        .M_AXI_rready(s06_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s06_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s06_couplers_to_xbar_RVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_araddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARADDR),
        .S_AXI_arburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARBURST),
        .S_AXI_arcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARCACHE),
        .S_AXI_arid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARID),
        .S_AXI_arlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARLEN),
        .S_AXI_arlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARLOCK),
        .S_AXI_arprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARPROT),
        .S_AXI_arqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARQOS),
        .S_AXI_arready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARREADY),
        .S_AXI_arregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARREGION),
        .S_AXI_arsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARSIZE),
        .S_AXI_arvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_ARVALID),
        .S_AXI_rdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RDATA),
        .S_AXI_rid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RID),
        .S_AXI_rlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RLAST),
        .S_AXI_rready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s06_couplers_RVALID));
  s07_couplers_imp_1Q7M0JH s07_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_awaddr(s07_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s07_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s07_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s07_couplers_to_xbar_AWID),
        .M_AXI_awlen(s07_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s07_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s07_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s07_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s07_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s07_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s07_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s07_couplers_to_xbar_BID),
        .M_AXI_bready(s07_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s07_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s07_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s07_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s07_couplers_to_xbar_WLAST),
        .M_AXI_wready(s07_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s07_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s07_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_awaddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWADDR),
        .S_AXI_awburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWBURST),
        .S_AXI_awcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWCACHE),
        .S_AXI_awid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWID),
        .S_AXI_awlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWLEN),
        .S_AXI_awlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWLOCK),
        .S_AXI_awprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWPROT),
        .S_AXI_awqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWQOS),
        .S_AXI_awready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWREADY),
        .S_AXI_awregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWREGION),
        .S_AXI_awsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWSIZE),
        .S_AXI_awvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_AWVALID),
        .S_AXI_bid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_BID),
        .S_AXI_bready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_BVALID),
        .S_AXI_wdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WDATA),
        .S_AXI_wlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WLAST),
        .S_AXI_wready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s07_couplers_WVALID));
  s08_couplers_imp_GU2EF1 s08_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_awaddr(s08_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s08_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s08_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s08_couplers_to_xbar_AWID),
        .M_AXI_awlen(s08_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s08_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s08_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s08_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s08_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s08_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s08_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s08_couplers_to_xbar_BID),
        .M_AXI_bready(s08_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s08_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s08_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s08_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s08_couplers_to_xbar_WLAST),
        .M_AXI_wready(s08_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s08_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s08_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_awaddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWADDR),
        .S_AXI_awburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWBURST),
        .S_AXI_awcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWCACHE),
        .S_AXI_awid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWID),
        .S_AXI_awlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWLEN),
        .S_AXI_awlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWLOCK),
        .S_AXI_awprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWPROT),
        .S_AXI_awqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWQOS),
        .S_AXI_awready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWREADY),
        .S_AXI_awregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWREGION),
        .S_AXI_awsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWSIZE),
        .S_AXI_awvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_AWVALID),
        .S_AXI_bid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_BID),
        .S_AXI_bready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_BVALID),
        .S_AXI_wdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WDATA),
        .S_AXI_wlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WLAST),
        .S_AXI_wready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s08_couplers_WVALID));
  s09_couplers_imp_C2OYPP s09_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_araddr(s09_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s09_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s09_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s09_couplers_to_xbar_ARID),
        .M_AXI_arlen(s09_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s09_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s09_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s09_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s09_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s09_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s09_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s09_couplers_to_xbar_RDATA),
        .M_AXI_rid(s09_couplers_to_xbar_RID),
        .M_AXI_rlast(s09_couplers_to_xbar_RLAST),
        .M_AXI_rready(s09_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s09_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s09_couplers_to_xbar_RVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_araddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARADDR),
        .S_AXI_arburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARBURST),
        .S_AXI_arcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARCACHE),
        .S_AXI_arid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARID),
        .S_AXI_arlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARLEN),
        .S_AXI_arlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARLOCK),
        .S_AXI_arprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARPROT),
        .S_AXI_arqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARQOS),
        .S_AXI_arready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARREADY),
        .S_AXI_arregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARREGION),
        .S_AXI_arsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARSIZE),
        .S_AXI_arvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_ARVALID),
        .S_AXI_rdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RDATA),
        .S_AXI_rid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RID),
        .S_AXI_rlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RLAST),
        .S_AXI_rready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s09_couplers_RVALID));
  s10_couplers_imp_8HR4BT s10_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_awaddr(s10_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s10_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s10_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s10_couplers_to_xbar_AWID),
        .M_AXI_awlen(s10_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s10_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s10_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s10_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s10_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s10_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s10_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s10_couplers_to_xbar_BID),
        .M_AXI_bready(s10_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s10_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s10_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s10_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s10_couplers_to_xbar_WLAST),
        .M_AXI_wready(s10_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s10_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s10_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_awaddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWADDR),
        .S_AXI_awburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWBURST),
        .S_AXI_awcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWCACHE),
        .S_AXI_awid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWID),
        .S_AXI_awlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWLEN),
        .S_AXI_awlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWLOCK),
        .S_AXI_awprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWPROT),
        .S_AXI_awqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWQOS),
        .S_AXI_awready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWREADY),
        .S_AXI_awregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWREGION),
        .S_AXI_awsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWSIZE),
        .S_AXI_awvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_AWVALID),
        .S_AXI_bid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_BID),
        .S_AXI_bready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_BVALID),
        .S_AXI_wdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WDATA),
        .S_AXI_wlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WLAST),
        .S_AXI_wready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s10_couplers_WVALID));
  s11_couplers_imp_2OXV1L s11_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_araddr(s11_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s11_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s11_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s11_couplers_to_xbar_ARID),
        .M_AXI_arlen(s11_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s11_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s11_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s11_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s11_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s11_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s11_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s11_couplers_to_xbar_RDATA),
        .M_AXI_rid(s11_couplers_to_xbar_RID),
        .M_AXI_rlast(s11_couplers_to_xbar_RLAST),
        .M_AXI_rready(s11_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s11_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s11_couplers_to_xbar_RVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_araddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARADDR),
        .S_AXI_arburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARBURST),
        .S_AXI_arcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARCACHE),
        .S_AXI_arid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARID),
        .S_AXI_arlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARLEN),
        .S_AXI_arlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARLOCK),
        .S_AXI_arprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARPROT),
        .S_AXI_arqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARQOS),
        .S_AXI_arready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARREADY),
        .S_AXI_arregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARREGION),
        .S_AXI_arsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARSIZE),
        .S_AXI_arvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_ARVALID),
        .S_AXI_rdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RDATA),
        .S_AXI_rid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RID),
        .S_AXI_rlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RLAST),
        .S_AXI_rready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s11_couplers_RVALID));
  s12_couplers_imp_DJG8IX s12_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_awaddr(s12_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s12_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s12_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s12_couplers_to_xbar_AWID),
        .M_AXI_awlen(s12_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s12_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s12_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s12_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s12_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s12_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s12_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s12_couplers_to_xbar_BID),
        .M_AXI_bready(s12_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s12_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s12_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s12_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s12_couplers_to_xbar_WLAST),
        .M_AXI_wready(s12_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s12_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s12_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_awaddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWADDR),
        .S_AXI_awburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWBURST),
        .S_AXI_awcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWCACHE),
        .S_AXI_awid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWID),
        .S_AXI_awlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWLEN),
        .S_AXI_awlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWLOCK),
        .S_AXI_awprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWPROT),
        .S_AXI_awqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWQOS),
        .S_AXI_awready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWREADY),
        .S_AXI_awregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWREGION),
        .S_AXI_awsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWSIZE),
        .S_AXI_awvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_AWVALID),
        .S_AXI_bid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_BID),
        .S_AXI_bready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_BVALID),
        .S_AXI_wdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WDATA),
        .S_AXI_wlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WLAST),
        .S_AXI_wready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s12_couplers_WVALID));
  s13_couplers_imp_B2HEQX s13_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_araddr(s13_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s13_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s13_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s13_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s13_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s13_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s13_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s13_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s13_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s13_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s13_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s13_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s13_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s13_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s13_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s13_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s13_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s13_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s13_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s13_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s13_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s13_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s13_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s13_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s13_couplers_to_xbar_RLAST),
        .M_AXI_rready(s13_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s13_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s13_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s13_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s13_couplers_to_xbar_WLAST),
        .M_AXI_wready(s13_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s13_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s13_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_araddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARADDR),
        .S_AXI_arburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARBURST),
        .S_AXI_arcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARCACHE),
        .S_AXI_arid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARID),
        .S_AXI_arlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARLEN),
        .S_AXI_arlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARLOCK),
        .S_AXI_arprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARPROT),
        .S_AXI_arqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARQOS),
        .S_AXI_arready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARREADY),
        .S_AXI_arregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARREGION),
        .S_AXI_arsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARSIZE),
        .S_AXI_arvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_ARVALID),
        .S_AXI_awaddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWADDR),
        .S_AXI_awburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWBURST),
        .S_AXI_awcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWCACHE),
        .S_AXI_awid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWID),
        .S_AXI_awlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWLEN),
        .S_AXI_awlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWLOCK),
        .S_AXI_awprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWPROT),
        .S_AXI_awqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWQOS),
        .S_AXI_awready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWREADY),
        .S_AXI_awregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWREGION),
        .S_AXI_awsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWSIZE),
        .S_AXI_awvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_AWVALID),
        .S_AXI_bid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_BID),
        .S_AXI_bready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_BVALID),
        .S_AXI_rdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RDATA),
        .S_AXI_rid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RID),
        .S_AXI_rlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RLAST),
        .S_AXI_rready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_RVALID),
        .S_AXI_wdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WDATA),
        .S_AXI_wlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WLAST),
        .S_AXI_wready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s13_couplers_WVALID));
  s14_couplers_imp_IDNNOP s14_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_araddr(s14_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s14_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s14_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s14_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s14_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s14_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s14_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s14_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s14_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s14_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s14_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s14_couplers_to_xbar_RLAST),
        .M_AXI_rready(s14_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s14_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s14_couplers_to_xbar_RVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_araddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARADDR),
        .S_AXI_arburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARBURST),
        .S_AXI_arcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARCACHE),
        .S_AXI_arid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARID),
        .S_AXI_arlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARLEN),
        .S_AXI_arlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARLOCK),
        .S_AXI_arprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARPROT),
        .S_AXI_arqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARQOS),
        .S_AXI_arready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARREADY),
        .S_AXI_arregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARREGION),
        .S_AXI_arsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARSIZE),
        .S_AXI_arvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_ARVALID),
        .S_AXI_rdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RDATA),
        .S_AXI_rid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RID),
        .S_AXI_rlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RLAST),
        .S_AXI_rready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s14_couplers_RVALID));
  s15_couplers_imp_NLW9D5 s15_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_awaddr(s15_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s15_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s15_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s15_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s15_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s15_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s15_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s15_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s15_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s15_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s15_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s15_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s15_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s15_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s15_couplers_to_xbar_WLAST),
        .M_AXI_wready(s15_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s15_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s15_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .S_AXI_awaddr(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWADDR),
        .S_AXI_awburst(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWBURST),
        .S_AXI_awcache(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWCACHE),
        .S_AXI_awid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWID),
        .S_AXI_awlen(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWLEN),
        .S_AXI_awlock(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWLOCK),
        .S_AXI_awprot(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWPROT),
        .S_AXI_awqos(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWQOS),
        .S_AXI_awready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWREADY),
        .S_AXI_awregion(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWREGION),
        .S_AXI_awsize(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWSIZE),
        .S_AXI_awvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_AWVALID),
        .S_AXI_bid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_BID),
        .S_AXI_bready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_BVALID),
        .S_AXI_wdata(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WDATA),
        .S_AXI_wlast(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WLAST),
        .S_AXI_wready(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ps_e_S_AXI_HP0_FPD_to_s15_couplers_WVALID));
  vitis_design_xbar_1 xbar
       (.aclk(axi_ic_ps_e_S_AXI_HP0_FPD_ACLK_net),
        .aresetn(axi_ic_ps_e_S_AXI_HP0_FPD_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s14_couplers_to_xbar_ARADDR,s13_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s11_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s09_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s04_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARADDR,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,s14_couplers_to_xbar_ARBURST,s13_couplers_to_xbar_ARBURST,1'b0,1'b0,s11_couplers_to_xbar_ARBURST,1'b0,1'b0,s09_couplers_to_xbar_ARBURST,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_ARBURST,1'b0,1'b0,s04_couplers_to_xbar_ARBURST,1'b0,1'b0,s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,s14_couplers_to_xbar_ARCACHE,s13_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s11_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s09_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s04_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s11_couplers_to_xbar_ARID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s09_couplers_to_xbar_ARID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_ARID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s14_couplers_to_xbar_ARLEN,s13_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s11_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s09_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s04_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,s14_couplers_to_xbar_ARLOCK,s13_couplers_to_xbar_ARLOCK,1'b0,s11_couplers_to_xbar_ARLOCK,1'b0,s09_couplers_to_xbar_ARLOCK,1'b0,1'b0,s06_couplers_to_xbar_ARLOCK,1'b0,s04_couplers_to_xbar_ARLOCK,1'b0,s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({1'b0,1'b0,1'b0,s14_couplers_to_xbar_ARPROT,s13_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s11_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s09_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s04_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,s14_couplers_to_xbar_ARQOS,s13_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,s11_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,s09_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,s04_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s14_couplers_to_xbar_ARREADY,s13_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[12],s11_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[10],s09_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[8:7],s06_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[5],s04_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[3],s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({1'b0,1'b0,1'b0,s14_couplers_to_xbar_ARSIZE,s13_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0,s11_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0,s09_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0,s04_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({1'b0,s14_couplers_to_xbar_ARVALID,s13_couplers_to_xbar_ARVALID,1'b0,s11_couplers_to_xbar_ARVALID,1'b0,s09_couplers_to_xbar_ARVALID,1'b0,1'b0,s06_couplers_to_xbar_ARVALID,1'b0,s04_couplers_to_xbar_ARVALID,1'b0,s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s15_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s13_couplers_to_xbar_AWADDR,s12_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s10_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s08_couplers_to_xbar_AWADDR,s07_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s05_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s15_couplers_to_xbar_AWBURST,1'b0,1'b0,s13_couplers_to_xbar_AWBURST,s12_couplers_to_xbar_AWBURST,1'b0,1'b0,s10_couplers_to_xbar_AWBURST,1'b0,1'b0,s08_couplers_to_xbar_AWBURST,s07_couplers_to_xbar_AWBURST,1'b0,1'b0,s05_couplers_to_xbar_AWBURST,1'b0,1'b0,s03_couplers_to_xbar_AWBURST,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .s_axi_awcache({s15_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s13_couplers_to_xbar_AWCACHE,s12_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s10_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s08_couplers_to_xbar_AWCACHE,s07_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s05_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s12_couplers_to_xbar_AWID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s10_couplers_to_xbar_AWID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s08_couplers_to_xbar_AWID,1'b0,1'b0,1'b0,1'b0,s07_couplers_to_xbar_AWID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s15_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s13_couplers_to_xbar_AWLEN,s12_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s10_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s08_couplers_to_xbar_AWLEN,s07_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s05_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({s15_couplers_to_xbar_AWLOCK,1'b0,s13_couplers_to_xbar_AWLOCK,s12_couplers_to_xbar_AWLOCK,1'b0,s10_couplers_to_xbar_AWLOCK,1'b0,s08_couplers_to_xbar_AWLOCK,s07_couplers_to_xbar_AWLOCK,1'b0,s05_couplers_to_xbar_AWLOCK,1'b0,s03_couplers_to_xbar_AWLOCK,1'b0,1'b0,1'b0}),
        .s_axi_awprot({s15_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s13_couplers_to_xbar_AWPROT,s12_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s10_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s08_couplers_to_xbar_AWPROT,s07_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s05_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awqos({s15_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s13_couplers_to_xbar_AWQOS,s12_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s10_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s08_couplers_to_xbar_AWQOS,s07_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s05_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s15_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[14],s13_couplers_to_xbar_AWREADY,s12_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[11],s10_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[9],s08_couplers_to_xbar_AWREADY,s07_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[6],s05_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[4],s03_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[2:0]}),
        .s_axi_awsize({s15_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b0,s13_couplers_to_xbar_AWSIZE,s12_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b0,s10_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b0,s08_couplers_to_xbar_AWSIZE,s07_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b0,s05_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .s_axi_awvalid({s15_couplers_to_xbar_AWVALID,1'b0,s13_couplers_to_xbar_AWVALID,s12_couplers_to_xbar_AWVALID,1'b0,s10_couplers_to_xbar_AWVALID,1'b0,s08_couplers_to_xbar_AWVALID,s07_couplers_to_xbar_AWVALID,1'b0,s05_couplers_to_xbar_AWVALID,1'b0,s03_couplers_to_xbar_AWVALID,1'b0,1'b0,1'b0}),
        .s_axi_bid({s12_couplers_to_xbar_BID,NLW_xbar_s_axi_bid_UNCONNECTED[59:55],s10_couplers_to_xbar_BID,NLW_xbar_s_axi_bid_UNCONNECTED[49:45],s08_couplers_to_xbar_BID,s07_couplers_to_xbar_BID,NLW_xbar_s_axi_bid_UNCONNECTED[34:0]}),
        .s_axi_bready({s15_couplers_to_xbar_BREADY,1'b0,s13_couplers_to_xbar_BREADY,s12_couplers_to_xbar_BREADY,1'b0,s10_couplers_to_xbar_BREADY,1'b0,s08_couplers_to_xbar_BREADY,s07_couplers_to_xbar_BREADY,1'b0,s05_couplers_to_xbar_BREADY,1'b0,s03_couplers_to_xbar_BREADY,1'b0,1'b0,1'b0}),
        .s_axi_bresp({s15_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[29:28],s13_couplers_to_xbar_BRESP,s12_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[23:22],s10_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[19:18],s08_couplers_to_xbar_BRESP,s07_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[13:12],s05_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[9:8],s03_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[5:0]}),
        .s_axi_bvalid({s15_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[14],s13_couplers_to_xbar_BVALID,s12_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[11],s10_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[9],s08_couplers_to_xbar_BVALID,s07_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[6],s05_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[4],s03_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[2:0]}),
        .s_axi_rdata({s14_couplers_to_xbar_RDATA,s13_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[3327:3072],s11_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[2815:2560],s09_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[2303:1792],s06_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[1535:1280],s04_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[1023:768],s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s11_couplers_to_xbar_RID,NLW_xbar_s_axi_rid_UNCONNECTED[54:50],s09_couplers_to_xbar_RID,NLW_xbar_s_axi_rid_UNCONNECTED[44:35],s06_couplers_to_xbar_RID,NLW_xbar_s_axi_rid_UNCONNECTED[29:0]}),
        .s_axi_rlast({s14_couplers_to_xbar_RLAST,s13_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[12],s11_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[10],s09_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[8:7],s06_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[5],s04_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[3],s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({1'b0,s14_couplers_to_xbar_RREADY,s13_couplers_to_xbar_RREADY,1'b0,s11_couplers_to_xbar_RREADY,1'b0,s09_couplers_to_xbar_RREADY,1'b0,1'b0,s06_couplers_to_xbar_RREADY,1'b0,s04_couplers_to_xbar_RREADY,1'b0,s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s14_couplers_to_xbar_RRESP,s13_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[25:24],s11_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[21:20],s09_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[17:14],s06_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[11:10],s04_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[7:6],s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s14_couplers_to_xbar_RVALID,s13_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[12],s11_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[10],s09_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[8:7],s06_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[5],s04_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[3],s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s15_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s13_couplers_to_xbar_WDATA,s12_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s10_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s08_couplers_to_xbar_WDATA,s07_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s05_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s15_couplers_to_xbar_WLAST,1'b0,s13_couplers_to_xbar_WLAST,s12_couplers_to_xbar_WLAST,1'b0,s10_couplers_to_xbar_WLAST,1'b0,s08_couplers_to_xbar_WLAST,s07_couplers_to_xbar_WLAST,1'b0,s05_couplers_to_xbar_WLAST,1'b0,s03_couplers_to_xbar_WLAST,1'b0,1'b0,1'b0}),
        .s_axi_wready({s15_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[14],s13_couplers_to_xbar_WREADY,s12_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[11],s10_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[9],s08_couplers_to_xbar_WREADY,s07_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[6],s05_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[4],s03_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[2:0]}),
        .s_axi_wstrb({s15_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s13_couplers_to_xbar_WSTRB,s12_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s10_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s08_couplers_to_xbar_WSTRB,s07_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s05_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s03_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s15_couplers_to_xbar_WVALID,1'b0,s13_couplers_to_xbar_WVALID,s12_couplers_to_xbar_WVALID,1'b0,s10_couplers_to_xbar_WVALID,1'b0,s08_couplers_to_xbar_WVALID,s07_couplers_to_xbar_WVALID,1'b0,s05_couplers_to_xbar_WVALID,1'b0,s03_couplers_to_xbar_WVALID,1'b0,1'b0,1'b0}));
endmodule

module vitis_design_axi_ic_ps_e_S_AXI_HP1_FPD_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [48:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [48:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [63:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [0:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [3:0]S01_AXI_awregion;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [0:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input [31:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire axi_ic_ps_e_S_AXI_HP1_FPD_ACLK_net;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_ARESETN_net;
  wire [63:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARQOS;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARSIZE;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARVALID;
  wire [31:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RDATA;
  wire [0:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RID;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RLAST;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RRESP;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RVALID;
  wire [63:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWADDR;
  wire [1:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWBURST;
  wire [3:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWCACHE;
  wire [0:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWID;
  wire [7:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWLEN;
  wire [1:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWLOCK;
  wire [2:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWPROT;
  wire [3:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWQOS;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWREGION;
  wire [2:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWSIZE;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWVALID;
  wire [0:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_BID;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_BREADY;
  wire [1:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_BRESP;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_BVALID;
  wire [31:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WDATA;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WLAST;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WREADY;
  wire [3:0]axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WSTRB;
  wire axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WVALID;
  wire [48:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARADDR;
  wire [1:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARBURST;
  wire [3:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARCACHE;
  wire [0:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARID;
  wire [7:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARLEN;
  wire [0:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARLOCK;
  wire [2:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARPROT;
  wire [3:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARQOS;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARREADY;
  wire [2:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARSIZE;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARVALID;
  wire [48:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWADDR;
  wire [1:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWBURST;
  wire [3:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWCACHE;
  wire [0:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWID;
  wire [7:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWLEN;
  wire [0:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWLOCK;
  wire [2:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWPROT;
  wire [3:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWQOS;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWREADY;
  wire [2:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWSIZE;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWVALID;
  wire [5:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_BID;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_BREADY;
  wire [1:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_BRESP;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_BVALID;
  wire [127:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RDATA;
  wire [5:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RID;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RLAST;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RREADY;
  wire [1:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RRESP;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RVALID;
  wire [127:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WDATA;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WLAST;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WREADY;
  wire [15:0]m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WSTRB;
  wire m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [127:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [127:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [15:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [0:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [0:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [127:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [127:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [15:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [1:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_AXI_araddr[48:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARCACHE;
  assign M00_AXI_arid[0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARVALID;
  assign M00_AXI_awaddr[48:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWCACHE;
  assign M00_AXI_awid[0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RREADY;
  assign M00_AXI_wdata[127:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WLAST;
  assign M00_AXI_wstrb[15:0] = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WVALID;
  assign S00_AXI_arready = axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARREADY;
  assign S00_AXI_rdata[31:0] = axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RVALID;
  assign S01_AXI_awready = axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[0] = axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_BVALID;
  assign S01_AXI_wready = axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WREADY;
  assign axi_ic_ps_e_S_AXI_HP1_FPD_ACLK_net = ACLK;
  assign axi_ic_ps_e_S_AXI_HP1_FPD_ARESETN_net = ARESETN;
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWADDR = S01_AXI_awaddr[63:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWID = S01_AXI_awid[0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWLOCK = S01_AXI_awlock[1:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWREGION = S01_AXI_awregion[3:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RDATA = M00_AXI_rdata[127:0];
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WREADY = M00_AXI_wready;
  m00_couplers_imp_19QF8O6 m00_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP1_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP1_FPD_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_BID),
        .M_AXI_bready(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RID),
        .M_AXI_rlast(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_ic_ps_e_S_AXI_HP1_FPD_WVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP1_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP1_FPD_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1FHHVG5 s00_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP1_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP1_FPD_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP1_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP1_FPD_ARESETN_net),
        .S_AXI_araddr(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_ARVALID),
        .S_AXI_rdata(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RID),
        .S_AXI_rlast(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ps_e_S_AXI_HP1_FPD_to_s00_couplers_RVALID));
  s01_couplers_imp_1CGKK39 s01_couplers
       (.M_ACLK(axi_ic_ps_e_S_AXI_HP1_FPD_ACLK_net),
        .M_ARESETN(axi_ic_ps_e_S_AXI_HP1_FPD_ARESETN_net),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_ps_e_S_AXI_HP1_FPD_ACLK_net),
        .S_ARESETN(axi_ic_ps_e_S_AXI_HP1_FPD_ARESETN_net),
        .S_AXI_awaddr(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWCACHE),
        .S_AXI_awid(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWID),
        .S_AXI_awlen(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWLEN),
        .S_AXI_awlock(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWPROT),
        .S_AXI_awqos(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWQOS),
        .S_AXI_awready(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWREADY),
        .S_AXI_awregion(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWREGION),
        .S_AXI_awsize(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_AWVALID),
        .S_AXI_bid(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_BID),
        .S_AXI_bready(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_BVALID),
        .S_AXI_wdata(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ps_e_S_AXI_HP1_FPD_to_s01_couplers_WVALID));
  vitis_design_xbar_2 xbar
       (.aclk(axi_ic_ps_e_S_AXI_HP1_FPD_ACLK_net),
        .aresetn(axi_ic_ps_e_S_AXI_HP1_FPD_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize({1'b1,1'b0,1'b0,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({1'b0,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,1'b0,1'b1}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,1'b0}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[0]}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,1'b1,1'b0,1'b0}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,1'b0}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,1'b0}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[0]}),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready({1'b0,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,1'b0}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[0]}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,1'b0}));
endmodule

module vitis_design_axi_interconnect_lpd_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_lpd_ACLK_net;
  wire axi_interconnect_lpd_ARESETN_net;
  wire [31:0]axi_interconnect_lpd_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_lpd_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_lpd_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_lpd_to_s00_couplers_ARLEN;
  wire axi_interconnect_lpd_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_lpd_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_lpd_to_s00_couplers_ARQOS;
  wire axi_interconnect_lpd_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_lpd_to_s00_couplers_ARSIZE;
  wire axi_interconnect_lpd_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_lpd_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_lpd_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_lpd_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_lpd_to_s00_couplers_AWLEN;
  wire axi_interconnect_lpd_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_lpd_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_lpd_to_s00_couplers_AWQOS;
  wire axi_interconnect_lpd_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_lpd_to_s00_couplers_AWSIZE;
  wire axi_interconnect_lpd_to_s00_couplers_AWVALID;
  wire axi_interconnect_lpd_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_lpd_to_s00_couplers_BRESP;
  wire axi_interconnect_lpd_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_lpd_to_s00_couplers_RDATA;
  wire axi_interconnect_lpd_to_s00_couplers_RLAST;
  wire axi_interconnect_lpd_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_lpd_to_s00_couplers_RRESP;
  wire axi_interconnect_lpd_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_lpd_to_s00_couplers_WDATA;
  wire axi_interconnect_lpd_to_s00_couplers_WLAST;
  wire axi_interconnect_lpd_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_lpd_to_s00_couplers_WSTRB;
  wire axi_interconnect_lpd_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_lpd_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_lpd_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_lpd_ARCACHE;
  wire [7:0]s00_couplers_to_axi_interconnect_lpd_ARLEN;
  wire s00_couplers_to_axi_interconnect_lpd_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_lpd_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_lpd_ARQOS;
  wire s00_couplers_to_axi_interconnect_lpd_ARREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_lpd_ARSIZE;
  wire s00_couplers_to_axi_interconnect_lpd_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_lpd_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_lpd_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_lpd_AWCACHE;
  wire [7:0]s00_couplers_to_axi_interconnect_lpd_AWLEN;
  wire s00_couplers_to_axi_interconnect_lpd_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_lpd_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_lpd_AWQOS;
  wire s00_couplers_to_axi_interconnect_lpd_AWREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_lpd_AWSIZE;
  wire s00_couplers_to_axi_interconnect_lpd_AWVALID;
  wire s00_couplers_to_axi_interconnect_lpd_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_lpd_BRESP;
  wire s00_couplers_to_axi_interconnect_lpd_BVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_lpd_RDATA;
  wire s00_couplers_to_axi_interconnect_lpd_RLAST;
  wire s00_couplers_to_axi_interconnect_lpd_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_lpd_RRESP;
  wire s00_couplers_to_axi_interconnect_lpd_RVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_lpd_WDATA;
  wire s00_couplers_to_axi_interconnect_lpd_WLAST;
  wire s00_couplers_to_axi_interconnect_lpd_WREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_lpd_WSTRB;
  wire s00_couplers_to_axi_interconnect_lpd_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_lpd_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_lpd_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_lpd_ARCACHE;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_lpd_ARLEN;
  assign M00_AXI_arlock = s00_couplers_to_axi_interconnect_lpd_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_lpd_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_lpd_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_lpd_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_lpd_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_lpd_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_lpd_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_lpd_AWCACHE;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_lpd_AWLEN;
  assign M00_AXI_awlock = s00_couplers_to_axi_interconnect_lpd_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_lpd_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_lpd_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_lpd_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_lpd_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_lpd_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_lpd_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_interconnect_lpd_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_lpd_WLAST;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_interconnect_lpd_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_lpd_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_lpd_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_lpd_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_lpd_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_lpd_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_lpd_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_lpd_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_lpd_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_lpd_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_lpd_to_s00_couplers_WREADY;
  assign axi_interconnect_lpd_ACLK_net = M00_ACLK;
  assign axi_interconnect_lpd_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_lpd_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_interconnect_lpd_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_lpd_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_interconnect_lpd_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_lpd_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_lpd_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_lpd_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_lpd_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_lpd_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_lpd_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_lpd_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_lpd_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_lpd_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_lpd_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_lpd_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_interconnect_lpd_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_lpd_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_lpd_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_lpd_WREADY = M00_AXI_wready;
  s00_couplers_imp_JZIEG0 s00_couplers
       (.M_ACLK(axi_interconnect_lpd_ACLK_net),
        .M_ARESETN(axi_interconnect_lpd_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_lpd_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_lpd_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_lpd_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_lpd_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_lpd_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_lpd_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_lpd_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_lpd_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_lpd_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_lpd_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_lpd_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_lpd_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_lpd_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_lpd_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_lpd_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_lpd_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_lpd_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_lpd_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_lpd_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_lpd_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_lpd_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_lpd_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_lpd_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_lpd_RDATA),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_lpd_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_lpd_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_lpd_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_lpd_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_lpd_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_lpd_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_lpd_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_lpd_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_lpd_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_lpd_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_lpd_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_lpd_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_lpd_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_lpd_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_lpd_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_lpd_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_lpd_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_lpd_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_lpd_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_lpd_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_lpd_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_lpd_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_lpd_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_lpd_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_lpd_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_lpd_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_lpd_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_lpd_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_lpd_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_lpd_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_lpd_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_lpd_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_lpd_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_lpd_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_lpd_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_lpd_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_lpd_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_lpd_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_lpd_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_lpd_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_lpd_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_lpd_to_s00_couplers_WVALID));
endmodule

module vitis_design_interconnect_axifull_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axifull_ACLK_net;
  wire interconnect_axifull_ARESETN_net;
  wire [31:0]interconnect_axifull_to_s00_couplers_ARADDR;
  wire [1:0]interconnect_axifull_to_s00_couplers_ARBURST;
  wire [3:0]interconnect_axifull_to_s00_couplers_ARCACHE;
  wire [7:0]interconnect_axifull_to_s00_couplers_ARLEN;
  wire [0:0]interconnect_axifull_to_s00_couplers_ARLOCK;
  wire [2:0]interconnect_axifull_to_s00_couplers_ARPROT;
  wire [3:0]interconnect_axifull_to_s00_couplers_ARQOS;
  wire interconnect_axifull_to_s00_couplers_ARREADY;
  wire [3:0]interconnect_axifull_to_s00_couplers_ARREGION;
  wire [2:0]interconnect_axifull_to_s00_couplers_ARSIZE;
  wire interconnect_axifull_to_s00_couplers_ARVALID;
  wire [31:0]interconnect_axifull_to_s00_couplers_AWADDR;
  wire [1:0]interconnect_axifull_to_s00_couplers_AWBURST;
  wire [3:0]interconnect_axifull_to_s00_couplers_AWCACHE;
  wire [7:0]interconnect_axifull_to_s00_couplers_AWLEN;
  wire [0:0]interconnect_axifull_to_s00_couplers_AWLOCK;
  wire [2:0]interconnect_axifull_to_s00_couplers_AWPROT;
  wire [3:0]interconnect_axifull_to_s00_couplers_AWQOS;
  wire interconnect_axifull_to_s00_couplers_AWREADY;
  wire [3:0]interconnect_axifull_to_s00_couplers_AWREGION;
  wire [2:0]interconnect_axifull_to_s00_couplers_AWSIZE;
  wire interconnect_axifull_to_s00_couplers_AWVALID;
  wire interconnect_axifull_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axifull_to_s00_couplers_BRESP;
  wire interconnect_axifull_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axifull_to_s00_couplers_RDATA;
  wire interconnect_axifull_to_s00_couplers_RLAST;
  wire interconnect_axifull_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axifull_to_s00_couplers_RRESP;
  wire interconnect_axifull_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axifull_to_s00_couplers_WDATA;
  wire interconnect_axifull_to_s00_couplers_WLAST;
  wire interconnect_axifull_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axifull_to_s00_couplers_WSTRB;
  wire interconnect_axifull_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_interconnect_axifull_ARADDR;
  wire [1:0]s00_couplers_to_interconnect_axifull_ARBURST;
  wire [3:0]s00_couplers_to_interconnect_axifull_ARCACHE;
  wire [7:0]s00_couplers_to_interconnect_axifull_ARLEN;
  wire [0:0]s00_couplers_to_interconnect_axifull_ARLOCK;
  wire [2:0]s00_couplers_to_interconnect_axifull_ARPROT;
  wire [3:0]s00_couplers_to_interconnect_axifull_ARQOS;
  wire s00_couplers_to_interconnect_axifull_ARREADY;
  wire [2:0]s00_couplers_to_interconnect_axifull_ARSIZE;
  wire s00_couplers_to_interconnect_axifull_ARVALID;
  wire [31:0]s00_couplers_to_interconnect_axifull_AWADDR;
  wire [1:0]s00_couplers_to_interconnect_axifull_AWBURST;
  wire [3:0]s00_couplers_to_interconnect_axifull_AWCACHE;
  wire [7:0]s00_couplers_to_interconnect_axifull_AWLEN;
  wire [0:0]s00_couplers_to_interconnect_axifull_AWLOCK;
  wire [2:0]s00_couplers_to_interconnect_axifull_AWPROT;
  wire [3:0]s00_couplers_to_interconnect_axifull_AWQOS;
  wire s00_couplers_to_interconnect_axifull_AWREADY;
  wire [2:0]s00_couplers_to_interconnect_axifull_AWSIZE;
  wire s00_couplers_to_interconnect_axifull_AWVALID;
  wire s00_couplers_to_interconnect_axifull_BREADY;
  wire [1:0]s00_couplers_to_interconnect_axifull_BRESP;
  wire s00_couplers_to_interconnect_axifull_BVALID;
  wire [127:0]s00_couplers_to_interconnect_axifull_RDATA;
  wire s00_couplers_to_interconnect_axifull_RLAST;
  wire s00_couplers_to_interconnect_axifull_RREADY;
  wire [1:0]s00_couplers_to_interconnect_axifull_RRESP;
  wire s00_couplers_to_interconnect_axifull_RVALID;
  wire [127:0]s00_couplers_to_interconnect_axifull_WDATA;
  wire s00_couplers_to_interconnect_axifull_WLAST;
  wire s00_couplers_to_interconnect_axifull_WREADY;
  wire [15:0]s00_couplers_to_interconnect_axifull_WSTRB;
  wire s00_couplers_to_interconnect_axifull_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_interconnect_axifull_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_interconnect_axifull_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_interconnect_axifull_ARCACHE;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_interconnect_axifull_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_interconnect_axifull_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_interconnect_axifull_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_interconnect_axifull_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_interconnect_axifull_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_interconnect_axifull_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_interconnect_axifull_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_interconnect_axifull_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_interconnect_axifull_AWCACHE;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_interconnect_axifull_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_interconnect_axifull_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_interconnect_axifull_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_interconnect_axifull_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_interconnect_axifull_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_interconnect_axifull_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_interconnect_axifull_BREADY;
  assign M00_AXI_rready = s00_couplers_to_interconnect_axifull_RREADY;
  assign M00_AXI_wdata[127:0] = s00_couplers_to_interconnect_axifull_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_interconnect_axifull_WLAST;
  assign M00_AXI_wstrb[15:0] = s00_couplers_to_interconnect_axifull_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_interconnect_axifull_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axifull_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axifull_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axifull_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axifull_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axifull_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = interconnect_axifull_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = interconnect_axifull_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axifull_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axifull_to_s00_couplers_WREADY;
  assign interconnect_axifull_ACLK_net = M00_ACLK;
  assign interconnect_axifull_ARESETN_net = M00_ARESETN;
  assign interconnect_axifull_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign interconnect_axifull_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign interconnect_axifull_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign interconnect_axifull_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign interconnect_axifull_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign interconnect_axifull_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axifull_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign interconnect_axifull_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign interconnect_axifull_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign interconnect_axifull_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axifull_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign interconnect_axifull_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign interconnect_axifull_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign interconnect_axifull_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign interconnect_axifull_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign interconnect_axifull_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axifull_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign interconnect_axifull_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign interconnect_axifull_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign interconnect_axifull_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axifull_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axifull_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axifull_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axifull_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign interconnect_axifull_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axifull_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_interconnect_axifull_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_interconnect_axifull_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_interconnect_axifull_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_interconnect_axifull_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_interconnect_axifull_RDATA = M00_AXI_rdata[127:0];
  assign s00_couplers_to_interconnect_axifull_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_interconnect_axifull_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_interconnect_axifull_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_interconnect_axifull_WREADY = M00_AXI_wready;
  s00_couplers_imp_GT907L s00_couplers
       (.M_ACLK(interconnect_axifull_ACLK_net),
        .M_ARESETN(interconnect_axifull_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_interconnect_axifull_ARADDR),
        .M_AXI_arburst(s00_couplers_to_interconnect_axifull_ARBURST),
        .M_AXI_arcache(s00_couplers_to_interconnect_axifull_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_interconnect_axifull_ARLEN),
        .M_AXI_arlock(s00_couplers_to_interconnect_axifull_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_interconnect_axifull_ARPROT),
        .M_AXI_arqos(s00_couplers_to_interconnect_axifull_ARQOS),
        .M_AXI_arready(s00_couplers_to_interconnect_axifull_ARREADY),
        .M_AXI_arsize(s00_couplers_to_interconnect_axifull_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_interconnect_axifull_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_interconnect_axifull_AWADDR),
        .M_AXI_awburst(s00_couplers_to_interconnect_axifull_AWBURST),
        .M_AXI_awcache(s00_couplers_to_interconnect_axifull_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_interconnect_axifull_AWLEN),
        .M_AXI_awlock(s00_couplers_to_interconnect_axifull_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_interconnect_axifull_AWPROT),
        .M_AXI_awqos(s00_couplers_to_interconnect_axifull_AWQOS),
        .M_AXI_awready(s00_couplers_to_interconnect_axifull_AWREADY),
        .M_AXI_awsize(s00_couplers_to_interconnect_axifull_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_interconnect_axifull_AWVALID),
        .M_AXI_bready(s00_couplers_to_interconnect_axifull_BREADY),
        .M_AXI_bresp(s00_couplers_to_interconnect_axifull_BRESP),
        .M_AXI_bvalid(s00_couplers_to_interconnect_axifull_BVALID),
        .M_AXI_rdata(s00_couplers_to_interconnect_axifull_RDATA),
        .M_AXI_rlast(s00_couplers_to_interconnect_axifull_RLAST),
        .M_AXI_rready(s00_couplers_to_interconnect_axifull_RREADY),
        .M_AXI_rresp(s00_couplers_to_interconnect_axifull_RRESP),
        .M_AXI_rvalid(s00_couplers_to_interconnect_axifull_RVALID),
        .M_AXI_wdata(s00_couplers_to_interconnect_axifull_WDATA),
        .M_AXI_wlast(s00_couplers_to_interconnect_axifull_WLAST),
        .M_AXI_wready(s00_couplers_to_interconnect_axifull_WREADY),
        .M_AXI_wstrb(s00_couplers_to_interconnect_axifull_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_interconnect_axifull_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axifull_to_s00_couplers_ARADDR),
        .S_AXI_arburst(interconnect_axifull_to_s00_couplers_ARBURST),
        .S_AXI_arcache(interconnect_axifull_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(interconnect_axifull_to_s00_couplers_ARLEN),
        .S_AXI_arlock(interconnect_axifull_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_axifull_to_s00_couplers_ARPROT),
        .S_AXI_arqos(interconnect_axifull_to_s00_couplers_ARQOS),
        .S_AXI_arready(interconnect_axifull_to_s00_couplers_ARREADY),
        .S_AXI_arregion(interconnect_axifull_to_s00_couplers_ARREGION),
        .S_AXI_arsize(interconnect_axifull_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_axifull_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axifull_to_s00_couplers_AWADDR),
        .S_AXI_awburst(interconnect_axifull_to_s00_couplers_AWBURST),
        .S_AXI_awcache(interconnect_axifull_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(interconnect_axifull_to_s00_couplers_AWLEN),
        .S_AXI_awlock(interconnect_axifull_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(interconnect_axifull_to_s00_couplers_AWPROT),
        .S_AXI_awqos(interconnect_axifull_to_s00_couplers_AWQOS),
        .S_AXI_awready(interconnect_axifull_to_s00_couplers_AWREADY),
        .S_AXI_awregion(interconnect_axifull_to_s00_couplers_AWREGION),
        .S_AXI_awsize(interconnect_axifull_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(interconnect_axifull_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axifull_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axifull_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axifull_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axifull_to_s00_couplers_RDATA),
        .S_AXI_rlast(interconnect_axifull_to_s00_couplers_RLAST),
        .S_AXI_rready(interconnect_axifull_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axifull_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axifull_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axifull_to_s00_couplers_WDATA),
        .S_AXI_wlast(interconnect_axifull_to_s00_couplers_WLAST),
        .S_AXI_wready(interconnect_axifull_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axifull_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axifull_to_s00_couplers_WVALID));
endmodule

module vitis_design_interconnect_axihpm0fpd_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [15:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output [15:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [15:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output [15:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [15:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input [15:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [15:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [15:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axihpm0fpd_ACLK_net;
  wire interconnect_axihpm0fpd_ARESETN_net;
  wire [39:0]interconnect_axihpm0fpd_to_s00_couplers_ARADDR;
  wire [1:0]interconnect_axihpm0fpd_to_s00_couplers_ARBURST;
  wire [3:0]interconnect_axihpm0fpd_to_s00_couplers_ARCACHE;
  wire [15:0]interconnect_axihpm0fpd_to_s00_couplers_ARID;
  wire [7:0]interconnect_axihpm0fpd_to_s00_couplers_ARLEN;
  wire interconnect_axihpm0fpd_to_s00_couplers_ARLOCK;
  wire [2:0]interconnect_axihpm0fpd_to_s00_couplers_ARPROT;
  wire [3:0]interconnect_axihpm0fpd_to_s00_couplers_ARQOS;
  wire interconnect_axihpm0fpd_to_s00_couplers_ARREADY;
  wire [2:0]interconnect_axihpm0fpd_to_s00_couplers_ARSIZE;
  wire [15:0]interconnect_axihpm0fpd_to_s00_couplers_ARUSER;
  wire interconnect_axihpm0fpd_to_s00_couplers_ARVALID;
  wire [39:0]interconnect_axihpm0fpd_to_s00_couplers_AWADDR;
  wire [1:0]interconnect_axihpm0fpd_to_s00_couplers_AWBURST;
  wire [3:0]interconnect_axihpm0fpd_to_s00_couplers_AWCACHE;
  wire [15:0]interconnect_axihpm0fpd_to_s00_couplers_AWID;
  wire [7:0]interconnect_axihpm0fpd_to_s00_couplers_AWLEN;
  wire interconnect_axihpm0fpd_to_s00_couplers_AWLOCK;
  wire [2:0]interconnect_axihpm0fpd_to_s00_couplers_AWPROT;
  wire [3:0]interconnect_axihpm0fpd_to_s00_couplers_AWQOS;
  wire interconnect_axihpm0fpd_to_s00_couplers_AWREADY;
  wire [2:0]interconnect_axihpm0fpd_to_s00_couplers_AWSIZE;
  wire [15:0]interconnect_axihpm0fpd_to_s00_couplers_AWUSER;
  wire interconnect_axihpm0fpd_to_s00_couplers_AWVALID;
  wire [15:0]interconnect_axihpm0fpd_to_s00_couplers_BID;
  wire interconnect_axihpm0fpd_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axihpm0fpd_to_s00_couplers_BRESP;
  wire interconnect_axihpm0fpd_to_s00_couplers_BVALID;
  wire [127:0]interconnect_axihpm0fpd_to_s00_couplers_RDATA;
  wire [15:0]interconnect_axihpm0fpd_to_s00_couplers_RID;
  wire interconnect_axihpm0fpd_to_s00_couplers_RLAST;
  wire interconnect_axihpm0fpd_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axihpm0fpd_to_s00_couplers_RRESP;
  wire interconnect_axihpm0fpd_to_s00_couplers_RVALID;
  wire [127:0]interconnect_axihpm0fpd_to_s00_couplers_WDATA;
  wire interconnect_axihpm0fpd_to_s00_couplers_WLAST;
  wire interconnect_axihpm0fpd_to_s00_couplers_WREADY;
  wire [15:0]interconnect_axihpm0fpd_to_s00_couplers_WSTRB;
  wire interconnect_axihpm0fpd_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_interconnect_axihpm0fpd_ARADDR;
  wire [1:0]s00_couplers_to_interconnect_axihpm0fpd_ARBURST;
  wire [3:0]s00_couplers_to_interconnect_axihpm0fpd_ARCACHE;
  wire [15:0]s00_couplers_to_interconnect_axihpm0fpd_ARID;
  wire [7:0]s00_couplers_to_interconnect_axihpm0fpd_ARLEN;
  wire s00_couplers_to_interconnect_axihpm0fpd_ARLOCK;
  wire [2:0]s00_couplers_to_interconnect_axihpm0fpd_ARPROT;
  wire [3:0]s00_couplers_to_interconnect_axihpm0fpd_ARQOS;
  wire s00_couplers_to_interconnect_axihpm0fpd_ARREADY;
  wire [2:0]s00_couplers_to_interconnect_axihpm0fpd_ARSIZE;
  wire [15:0]s00_couplers_to_interconnect_axihpm0fpd_ARUSER;
  wire s00_couplers_to_interconnect_axihpm0fpd_ARVALID;
  wire [39:0]s00_couplers_to_interconnect_axihpm0fpd_AWADDR;
  wire [1:0]s00_couplers_to_interconnect_axihpm0fpd_AWBURST;
  wire [3:0]s00_couplers_to_interconnect_axihpm0fpd_AWCACHE;
  wire [15:0]s00_couplers_to_interconnect_axihpm0fpd_AWID;
  wire [7:0]s00_couplers_to_interconnect_axihpm0fpd_AWLEN;
  wire s00_couplers_to_interconnect_axihpm0fpd_AWLOCK;
  wire [2:0]s00_couplers_to_interconnect_axihpm0fpd_AWPROT;
  wire [3:0]s00_couplers_to_interconnect_axihpm0fpd_AWQOS;
  wire s00_couplers_to_interconnect_axihpm0fpd_AWREADY;
  wire [2:0]s00_couplers_to_interconnect_axihpm0fpd_AWSIZE;
  wire [15:0]s00_couplers_to_interconnect_axihpm0fpd_AWUSER;
  wire s00_couplers_to_interconnect_axihpm0fpd_AWVALID;
  wire [15:0]s00_couplers_to_interconnect_axihpm0fpd_BID;
  wire s00_couplers_to_interconnect_axihpm0fpd_BREADY;
  wire [1:0]s00_couplers_to_interconnect_axihpm0fpd_BRESP;
  wire s00_couplers_to_interconnect_axihpm0fpd_BVALID;
  wire [127:0]s00_couplers_to_interconnect_axihpm0fpd_RDATA;
  wire [15:0]s00_couplers_to_interconnect_axihpm0fpd_RID;
  wire s00_couplers_to_interconnect_axihpm0fpd_RLAST;
  wire s00_couplers_to_interconnect_axihpm0fpd_RREADY;
  wire [1:0]s00_couplers_to_interconnect_axihpm0fpd_RRESP;
  wire s00_couplers_to_interconnect_axihpm0fpd_RVALID;
  wire [127:0]s00_couplers_to_interconnect_axihpm0fpd_WDATA;
  wire s00_couplers_to_interconnect_axihpm0fpd_WLAST;
  wire s00_couplers_to_interconnect_axihpm0fpd_WREADY;
  wire [15:0]s00_couplers_to_interconnect_axihpm0fpd_WSTRB;
  wire s00_couplers_to_interconnect_axihpm0fpd_WVALID;

  assign M00_AXI_araddr[39:0] = s00_couplers_to_interconnect_axihpm0fpd_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_interconnect_axihpm0fpd_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_interconnect_axihpm0fpd_ARCACHE;
  assign M00_AXI_arid[15:0] = s00_couplers_to_interconnect_axihpm0fpd_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_interconnect_axihpm0fpd_ARLEN;
  assign M00_AXI_arlock = s00_couplers_to_interconnect_axihpm0fpd_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_interconnect_axihpm0fpd_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_interconnect_axihpm0fpd_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_interconnect_axihpm0fpd_ARSIZE;
  assign M00_AXI_aruser[15:0] = s00_couplers_to_interconnect_axihpm0fpd_ARUSER;
  assign M00_AXI_arvalid = s00_couplers_to_interconnect_axihpm0fpd_ARVALID;
  assign M00_AXI_awaddr[39:0] = s00_couplers_to_interconnect_axihpm0fpd_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_interconnect_axihpm0fpd_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_interconnect_axihpm0fpd_AWCACHE;
  assign M00_AXI_awid[15:0] = s00_couplers_to_interconnect_axihpm0fpd_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_interconnect_axihpm0fpd_AWLEN;
  assign M00_AXI_awlock = s00_couplers_to_interconnect_axihpm0fpd_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_interconnect_axihpm0fpd_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_interconnect_axihpm0fpd_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_interconnect_axihpm0fpd_AWSIZE;
  assign M00_AXI_awuser[15:0] = s00_couplers_to_interconnect_axihpm0fpd_AWUSER;
  assign M00_AXI_awvalid = s00_couplers_to_interconnect_axihpm0fpd_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_interconnect_axihpm0fpd_BREADY;
  assign M00_AXI_rready = s00_couplers_to_interconnect_axihpm0fpd_RREADY;
  assign M00_AXI_wdata[127:0] = s00_couplers_to_interconnect_axihpm0fpd_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_interconnect_axihpm0fpd_WLAST;
  assign M00_AXI_wstrb[15:0] = s00_couplers_to_interconnect_axihpm0fpd_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_interconnect_axihpm0fpd_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axihpm0fpd_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axihpm0fpd_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = interconnect_axihpm0fpd_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = interconnect_axihpm0fpd_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axihpm0fpd_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = interconnect_axihpm0fpd_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = interconnect_axihpm0fpd_to_s00_couplers_RID;
  assign S00_AXI_rlast = interconnect_axihpm0fpd_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = interconnect_axihpm0fpd_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axihpm0fpd_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axihpm0fpd_to_s00_couplers_WREADY;
  assign interconnect_axihpm0fpd_ACLK_net = M00_ACLK;
  assign interconnect_axihpm0fpd_ARESETN_net = M00_ARESETN;
  assign interconnect_axihpm0fpd_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign interconnect_axihpm0fpd_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_ARUSER = S00_AXI_aruser[15:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axihpm0fpd_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign interconnect_axihpm0fpd_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_AWUSER = S00_AXI_awuser[15:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axihpm0fpd_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axihpm0fpd_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axihpm0fpd_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign interconnect_axihpm0fpd_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign interconnect_axihpm0fpd_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_interconnect_axihpm0fpd_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_interconnect_axihpm0fpd_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_interconnect_axihpm0fpd_BID = M00_AXI_bid[15:0];
  assign s00_couplers_to_interconnect_axihpm0fpd_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_interconnect_axihpm0fpd_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_interconnect_axihpm0fpd_RDATA = M00_AXI_rdata[127:0];
  assign s00_couplers_to_interconnect_axihpm0fpd_RID = M00_AXI_rid[15:0];
  assign s00_couplers_to_interconnect_axihpm0fpd_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_interconnect_axihpm0fpd_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_interconnect_axihpm0fpd_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_interconnect_axihpm0fpd_WREADY = M00_AXI_wready;
  s00_couplers_imp_1ERPYLY s00_couplers
       (.M_ACLK(interconnect_axihpm0fpd_ACLK_net),
        .M_ARESETN(interconnect_axihpm0fpd_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_interconnect_axihpm0fpd_ARADDR),
        .M_AXI_arburst(s00_couplers_to_interconnect_axihpm0fpd_ARBURST),
        .M_AXI_arcache(s00_couplers_to_interconnect_axihpm0fpd_ARCACHE),
        .M_AXI_arid(s00_couplers_to_interconnect_axihpm0fpd_ARID),
        .M_AXI_arlen(s00_couplers_to_interconnect_axihpm0fpd_ARLEN),
        .M_AXI_arlock(s00_couplers_to_interconnect_axihpm0fpd_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_interconnect_axihpm0fpd_ARPROT),
        .M_AXI_arqos(s00_couplers_to_interconnect_axihpm0fpd_ARQOS),
        .M_AXI_arready(s00_couplers_to_interconnect_axihpm0fpd_ARREADY),
        .M_AXI_arsize(s00_couplers_to_interconnect_axihpm0fpd_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_interconnect_axihpm0fpd_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_interconnect_axihpm0fpd_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_interconnect_axihpm0fpd_AWADDR),
        .M_AXI_awburst(s00_couplers_to_interconnect_axihpm0fpd_AWBURST),
        .M_AXI_awcache(s00_couplers_to_interconnect_axihpm0fpd_AWCACHE),
        .M_AXI_awid(s00_couplers_to_interconnect_axihpm0fpd_AWID),
        .M_AXI_awlen(s00_couplers_to_interconnect_axihpm0fpd_AWLEN),
        .M_AXI_awlock(s00_couplers_to_interconnect_axihpm0fpd_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_interconnect_axihpm0fpd_AWPROT),
        .M_AXI_awqos(s00_couplers_to_interconnect_axihpm0fpd_AWQOS),
        .M_AXI_awready(s00_couplers_to_interconnect_axihpm0fpd_AWREADY),
        .M_AXI_awsize(s00_couplers_to_interconnect_axihpm0fpd_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_interconnect_axihpm0fpd_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_interconnect_axihpm0fpd_AWVALID),
        .M_AXI_bid(s00_couplers_to_interconnect_axihpm0fpd_BID),
        .M_AXI_bready(s00_couplers_to_interconnect_axihpm0fpd_BREADY),
        .M_AXI_bresp(s00_couplers_to_interconnect_axihpm0fpd_BRESP),
        .M_AXI_bvalid(s00_couplers_to_interconnect_axihpm0fpd_BVALID),
        .M_AXI_rdata(s00_couplers_to_interconnect_axihpm0fpd_RDATA),
        .M_AXI_rid(s00_couplers_to_interconnect_axihpm0fpd_RID),
        .M_AXI_rlast(s00_couplers_to_interconnect_axihpm0fpd_RLAST),
        .M_AXI_rready(s00_couplers_to_interconnect_axihpm0fpd_RREADY),
        .M_AXI_rresp(s00_couplers_to_interconnect_axihpm0fpd_RRESP),
        .M_AXI_rvalid(s00_couplers_to_interconnect_axihpm0fpd_RVALID),
        .M_AXI_wdata(s00_couplers_to_interconnect_axihpm0fpd_WDATA),
        .M_AXI_wlast(s00_couplers_to_interconnect_axihpm0fpd_WLAST),
        .M_AXI_wready(s00_couplers_to_interconnect_axihpm0fpd_WREADY),
        .M_AXI_wstrb(s00_couplers_to_interconnect_axihpm0fpd_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_interconnect_axihpm0fpd_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axihpm0fpd_to_s00_couplers_ARADDR),
        .S_AXI_arburst(interconnect_axihpm0fpd_to_s00_couplers_ARBURST),
        .S_AXI_arcache(interconnect_axihpm0fpd_to_s00_couplers_ARCACHE),
        .S_AXI_arid(interconnect_axihpm0fpd_to_s00_couplers_ARID),
        .S_AXI_arlen(interconnect_axihpm0fpd_to_s00_couplers_ARLEN),
        .S_AXI_arlock(interconnect_axihpm0fpd_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_axihpm0fpd_to_s00_couplers_ARPROT),
        .S_AXI_arqos(interconnect_axihpm0fpd_to_s00_couplers_ARQOS),
        .S_AXI_arready(interconnect_axihpm0fpd_to_s00_couplers_ARREADY),
        .S_AXI_arsize(interconnect_axihpm0fpd_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(interconnect_axihpm0fpd_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(interconnect_axihpm0fpd_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axihpm0fpd_to_s00_couplers_AWADDR),
        .S_AXI_awburst(interconnect_axihpm0fpd_to_s00_couplers_AWBURST),
        .S_AXI_awcache(interconnect_axihpm0fpd_to_s00_couplers_AWCACHE),
        .S_AXI_awid(interconnect_axihpm0fpd_to_s00_couplers_AWID),
        .S_AXI_awlen(interconnect_axihpm0fpd_to_s00_couplers_AWLEN),
        .S_AXI_awlock(interconnect_axihpm0fpd_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(interconnect_axihpm0fpd_to_s00_couplers_AWPROT),
        .S_AXI_awqos(interconnect_axihpm0fpd_to_s00_couplers_AWQOS),
        .S_AXI_awready(interconnect_axihpm0fpd_to_s00_couplers_AWREADY),
        .S_AXI_awsize(interconnect_axihpm0fpd_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(interconnect_axihpm0fpd_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(interconnect_axihpm0fpd_to_s00_couplers_AWVALID),
        .S_AXI_bid(interconnect_axihpm0fpd_to_s00_couplers_BID),
        .S_AXI_bready(interconnect_axihpm0fpd_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axihpm0fpd_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axihpm0fpd_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axihpm0fpd_to_s00_couplers_RDATA),
        .S_AXI_rid(interconnect_axihpm0fpd_to_s00_couplers_RID),
        .S_AXI_rlast(interconnect_axihpm0fpd_to_s00_couplers_RLAST),
        .S_AXI_rready(interconnect_axihpm0fpd_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axihpm0fpd_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axihpm0fpd_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axihpm0fpd_to_s00_couplers_WDATA),
        .S_AXI_wlast(interconnect_axihpm0fpd_to_s00_couplers_WLAST),
        .S_AXI_wready(interconnect_axihpm0fpd_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axihpm0fpd_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axihpm0fpd_to_s00_couplers_WVALID));
endmodule

module vitis_design_interconnect_axilite_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [6:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [6:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [6:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [6:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [6:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [6:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [6:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [6:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [5:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [5:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [6:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [6:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [6:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [6:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [5:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [5:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire M08_ACLK_1;
  wire M08_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axilite_ACLK_net;
  wire interconnect_axilite_ARESETN_net;
  wire [39:0]interconnect_axilite_to_s00_couplers_ARADDR;
  wire [1:0]interconnect_axilite_to_s00_couplers_ARBURST;
  wire [3:0]interconnect_axilite_to_s00_couplers_ARCACHE;
  wire [15:0]interconnect_axilite_to_s00_couplers_ARID;
  wire [7:0]interconnect_axilite_to_s00_couplers_ARLEN;
  wire [0:0]interconnect_axilite_to_s00_couplers_ARLOCK;
  wire [2:0]interconnect_axilite_to_s00_couplers_ARPROT;
  wire [3:0]interconnect_axilite_to_s00_couplers_ARQOS;
  wire interconnect_axilite_to_s00_couplers_ARREADY;
  wire [2:0]interconnect_axilite_to_s00_couplers_ARSIZE;
  wire interconnect_axilite_to_s00_couplers_ARVALID;
  wire [39:0]interconnect_axilite_to_s00_couplers_AWADDR;
  wire [1:0]interconnect_axilite_to_s00_couplers_AWBURST;
  wire [3:0]interconnect_axilite_to_s00_couplers_AWCACHE;
  wire [15:0]interconnect_axilite_to_s00_couplers_AWID;
  wire [7:0]interconnect_axilite_to_s00_couplers_AWLEN;
  wire [0:0]interconnect_axilite_to_s00_couplers_AWLOCK;
  wire [2:0]interconnect_axilite_to_s00_couplers_AWPROT;
  wire [3:0]interconnect_axilite_to_s00_couplers_AWQOS;
  wire interconnect_axilite_to_s00_couplers_AWREADY;
  wire [2:0]interconnect_axilite_to_s00_couplers_AWSIZE;
  wire interconnect_axilite_to_s00_couplers_AWVALID;
  wire [15:0]interconnect_axilite_to_s00_couplers_BID;
  wire interconnect_axilite_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axilite_to_s00_couplers_BRESP;
  wire interconnect_axilite_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axilite_to_s00_couplers_RDATA;
  wire [15:0]interconnect_axilite_to_s00_couplers_RID;
  wire interconnect_axilite_to_s00_couplers_RLAST;
  wire interconnect_axilite_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axilite_to_s00_couplers_RRESP;
  wire interconnect_axilite_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axilite_to_s00_couplers_WDATA;
  wire interconnect_axilite_to_s00_couplers_WLAST;
  wire interconnect_axilite_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axilite_to_s00_couplers_WSTRB;
  wire interconnect_axilite_to_s00_couplers_WVALID;
  wire [39:0]m00_couplers_to_interconnect_axilite_ARADDR;
  wire [0:0]m00_couplers_to_interconnect_axilite_ARREADY;
  wire [0:0]m00_couplers_to_interconnect_axilite_ARVALID;
  wire [39:0]m00_couplers_to_interconnect_axilite_AWADDR;
  wire [0:0]m00_couplers_to_interconnect_axilite_AWREADY;
  wire [0:0]m00_couplers_to_interconnect_axilite_AWVALID;
  wire [0:0]m00_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_BRESP;
  wire [0:0]m00_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_RDATA;
  wire [0:0]m00_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_RRESP;
  wire [0:0]m00_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_WDATA;
  wire [0:0]m00_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m00_couplers_to_interconnect_axilite_WSTRB;
  wire [0:0]m00_couplers_to_interconnect_axilite_WVALID;
  wire [6:0]m01_couplers_to_interconnect_axilite_ARADDR;
  wire m01_couplers_to_interconnect_axilite_ARREADY;
  wire m01_couplers_to_interconnect_axilite_ARVALID;
  wire [6:0]m01_couplers_to_interconnect_axilite_AWADDR;
  wire m01_couplers_to_interconnect_axilite_AWREADY;
  wire m01_couplers_to_interconnect_axilite_AWVALID;
  wire m01_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_BRESP;
  wire m01_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_RDATA;
  wire m01_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_RRESP;
  wire m01_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_WDATA;
  wire m01_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m01_couplers_to_interconnect_axilite_WSTRB;
  wire m01_couplers_to_interconnect_axilite_WVALID;
  wire [6:0]m02_couplers_to_interconnect_axilite_ARADDR;
  wire m02_couplers_to_interconnect_axilite_ARREADY;
  wire m02_couplers_to_interconnect_axilite_ARVALID;
  wire [6:0]m02_couplers_to_interconnect_axilite_AWADDR;
  wire m02_couplers_to_interconnect_axilite_AWREADY;
  wire m02_couplers_to_interconnect_axilite_AWVALID;
  wire m02_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m02_couplers_to_interconnect_axilite_BRESP;
  wire m02_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_RDATA;
  wire m02_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m02_couplers_to_interconnect_axilite_RRESP;
  wire m02_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_WDATA;
  wire m02_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m02_couplers_to_interconnect_axilite_WSTRB;
  wire m02_couplers_to_interconnect_axilite_WVALID;
  wire [6:0]m03_couplers_to_interconnect_axilite_ARADDR;
  wire m03_couplers_to_interconnect_axilite_ARREADY;
  wire m03_couplers_to_interconnect_axilite_ARVALID;
  wire [6:0]m03_couplers_to_interconnect_axilite_AWADDR;
  wire m03_couplers_to_interconnect_axilite_AWREADY;
  wire m03_couplers_to_interconnect_axilite_AWVALID;
  wire m03_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m03_couplers_to_interconnect_axilite_BRESP;
  wire m03_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_RDATA;
  wire m03_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m03_couplers_to_interconnect_axilite_RRESP;
  wire m03_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_WDATA;
  wire m03_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m03_couplers_to_interconnect_axilite_WSTRB;
  wire m03_couplers_to_interconnect_axilite_WVALID;
  wire [6:0]m04_couplers_to_interconnect_axilite_ARADDR;
  wire m04_couplers_to_interconnect_axilite_ARREADY;
  wire m04_couplers_to_interconnect_axilite_ARVALID;
  wire [6:0]m04_couplers_to_interconnect_axilite_AWADDR;
  wire m04_couplers_to_interconnect_axilite_AWREADY;
  wire m04_couplers_to_interconnect_axilite_AWVALID;
  wire m04_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m04_couplers_to_interconnect_axilite_BRESP;
  wire m04_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_RDATA;
  wire m04_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m04_couplers_to_interconnect_axilite_RRESP;
  wire m04_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_WDATA;
  wire m04_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m04_couplers_to_interconnect_axilite_WSTRB;
  wire m04_couplers_to_interconnect_axilite_WVALID;
  wire [5:0]m05_couplers_to_interconnect_axilite_ARADDR;
  wire m05_couplers_to_interconnect_axilite_ARREADY;
  wire m05_couplers_to_interconnect_axilite_ARVALID;
  wire [5:0]m05_couplers_to_interconnect_axilite_AWADDR;
  wire m05_couplers_to_interconnect_axilite_AWREADY;
  wire m05_couplers_to_interconnect_axilite_AWVALID;
  wire m05_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m05_couplers_to_interconnect_axilite_BRESP;
  wire m05_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m05_couplers_to_interconnect_axilite_RDATA;
  wire m05_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m05_couplers_to_interconnect_axilite_RRESP;
  wire m05_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m05_couplers_to_interconnect_axilite_WDATA;
  wire m05_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m05_couplers_to_interconnect_axilite_WSTRB;
  wire m05_couplers_to_interconnect_axilite_WVALID;
  wire [6:0]m06_couplers_to_interconnect_axilite_ARADDR;
  wire m06_couplers_to_interconnect_axilite_ARREADY;
  wire m06_couplers_to_interconnect_axilite_ARVALID;
  wire [6:0]m06_couplers_to_interconnect_axilite_AWADDR;
  wire m06_couplers_to_interconnect_axilite_AWREADY;
  wire m06_couplers_to_interconnect_axilite_AWVALID;
  wire m06_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m06_couplers_to_interconnect_axilite_BRESP;
  wire m06_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m06_couplers_to_interconnect_axilite_RDATA;
  wire m06_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m06_couplers_to_interconnect_axilite_RRESP;
  wire m06_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m06_couplers_to_interconnect_axilite_WDATA;
  wire m06_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m06_couplers_to_interconnect_axilite_WSTRB;
  wire m06_couplers_to_interconnect_axilite_WVALID;
  wire [6:0]m07_couplers_to_interconnect_axilite_ARADDR;
  wire m07_couplers_to_interconnect_axilite_ARREADY;
  wire m07_couplers_to_interconnect_axilite_ARVALID;
  wire [6:0]m07_couplers_to_interconnect_axilite_AWADDR;
  wire m07_couplers_to_interconnect_axilite_AWREADY;
  wire m07_couplers_to_interconnect_axilite_AWVALID;
  wire m07_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m07_couplers_to_interconnect_axilite_BRESP;
  wire m07_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m07_couplers_to_interconnect_axilite_RDATA;
  wire m07_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m07_couplers_to_interconnect_axilite_RRESP;
  wire m07_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m07_couplers_to_interconnect_axilite_WDATA;
  wire m07_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m07_couplers_to_interconnect_axilite_WSTRB;
  wire m07_couplers_to_interconnect_axilite_WVALID;
  wire [5:0]m08_couplers_to_interconnect_axilite_ARADDR;
  wire m08_couplers_to_interconnect_axilite_ARREADY;
  wire m08_couplers_to_interconnect_axilite_ARVALID;
  wire [5:0]m08_couplers_to_interconnect_axilite_AWADDR;
  wire m08_couplers_to_interconnect_axilite_AWREADY;
  wire m08_couplers_to_interconnect_axilite_AWVALID;
  wire m08_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m08_couplers_to_interconnect_axilite_BRESP;
  wire m08_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m08_couplers_to_interconnect_axilite_RDATA;
  wire m08_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m08_couplers_to_interconnect_axilite_RRESP;
  wire m08_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m08_couplers_to_interconnect_axilite_WDATA;
  wire m08_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m08_couplers_to_interconnect_axilite_WSTRB;
  wire m08_couplers_to_interconnect_axilite_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [199:160]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [199:160]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [239:200]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [239:200]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [279:240]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [279:240]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [319:280]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [319:280]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [359:320]xbar_to_m08_couplers_ARADDR;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [359:320]xbar_to_m08_couplers_AWADDR;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [26:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [26:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[39:0] = m00_couplers_to_interconnect_axilite_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_interconnect_axilite_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_interconnect_axilite_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_interconnect_axilite_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_interconnect_axilite_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_interconnect_axilite_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_interconnect_axilite_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_interconnect_axilite_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_interconnect_axilite_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[6:0] = m01_couplers_to_interconnect_axilite_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_interconnect_axilite_ARVALID;
  assign M01_AXI_awaddr[6:0] = m01_couplers_to_interconnect_axilite_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_interconnect_axilite_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_interconnect_axilite_BREADY;
  assign M01_AXI_rready = m01_couplers_to_interconnect_axilite_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_interconnect_axilite_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_interconnect_axilite_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_interconnect_axilite_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[6:0] = m02_couplers_to_interconnect_axilite_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_interconnect_axilite_ARVALID;
  assign M02_AXI_awaddr[6:0] = m02_couplers_to_interconnect_axilite_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_interconnect_axilite_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_interconnect_axilite_BREADY;
  assign M02_AXI_rready = m02_couplers_to_interconnect_axilite_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_interconnect_axilite_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_interconnect_axilite_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_interconnect_axilite_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[6:0] = m03_couplers_to_interconnect_axilite_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_interconnect_axilite_ARVALID;
  assign M03_AXI_awaddr[6:0] = m03_couplers_to_interconnect_axilite_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_interconnect_axilite_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_interconnect_axilite_BREADY;
  assign M03_AXI_rready = m03_couplers_to_interconnect_axilite_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_interconnect_axilite_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_interconnect_axilite_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_interconnect_axilite_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[6:0] = m04_couplers_to_interconnect_axilite_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_interconnect_axilite_ARVALID;
  assign M04_AXI_awaddr[6:0] = m04_couplers_to_interconnect_axilite_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_interconnect_axilite_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_interconnect_axilite_BREADY;
  assign M04_AXI_rready = m04_couplers_to_interconnect_axilite_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_interconnect_axilite_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_interconnect_axilite_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_interconnect_axilite_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[5:0] = m05_couplers_to_interconnect_axilite_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_interconnect_axilite_ARVALID;
  assign M05_AXI_awaddr[5:0] = m05_couplers_to_interconnect_axilite_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_interconnect_axilite_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_interconnect_axilite_BREADY;
  assign M05_AXI_rready = m05_couplers_to_interconnect_axilite_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_interconnect_axilite_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_interconnect_axilite_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_interconnect_axilite_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[6:0] = m06_couplers_to_interconnect_axilite_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_interconnect_axilite_ARVALID;
  assign M06_AXI_awaddr[6:0] = m06_couplers_to_interconnect_axilite_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_interconnect_axilite_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_interconnect_axilite_BREADY;
  assign M06_AXI_rready = m06_couplers_to_interconnect_axilite_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_interconnect_axilite_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_interconnect_axilite_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_interconnect_axilite_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[6:0] = m07_couplers_to_interconnect_axilite_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_interconnect_axilite_ARVALID;
  assign M07_AXI_awaddr[6:0] = m07_couplers_to_interconnect_axilite_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_interconnect_axilite_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_interconnect_axilite_BREADY;
  assign M07_AXI_rready = m07_couplers_to_interconnect_axilite_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_interconnect_axilite_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_interconnect_axilite_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_interconnect_axilite_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN;
  assign M08_AXI_araddr[5:0] = m08_couplers_to_interconnect_axilite_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_interconnect_axilite_ARVALID;
  assign M08_AXI_awaddr[5:0] = m08_couplers_to_interconnect_axilite_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_interconnect_axilite_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_interconnect_axilite_BREADY;
  assign M08_AXI_rready = m08_couplers_to_interconnect_axilite_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_interconnect_axilite_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_interconnect_axilite_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_interconnect_axilite_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axilite_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axilite_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = interconnect_axilite_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = interconnect_axilite_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axilite_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axilite_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = interconnect_axilite_to_s00_couplers_RID;
  assign S00_AXI_rlast = interconnect_axilite_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = interconnect_axilite_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axilite_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axilite_to_s00_couplers_WREADY;
  assign interconnect_axilite_ACLK_net = ACLK;
  assign interconnect_axilite_ARESETN_net = ARESETN;
  assign interconnect_axilite_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign interconnect_axilite_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign interconnect_axilite_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign interconnect_axilite_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign interconnect_axilite_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign interconnect_axilite_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign interconnect_axilite_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axilite_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign interconnect_axilite_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign interconnect_axilite_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axilite_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign interconnect_axilite_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign interconnect_axilite_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign interconnect_axilite_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign interconnect_axilite_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign interconnect_axilite_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign interconnect_axilite_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axilite_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign interconnect_axilite_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign interconnect_axilite_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axilite_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axilite_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axilite_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axilite_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign interconnect_axilite_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axilite_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_interconnect_axilite_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_interconnect_axilite_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_interconnect_axilite_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_interconnect_axilite_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_interconnect_axilite_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_interconnect_axilite_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_interconnect_axilite_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_interconnect_axilite_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_interconnect_axilite_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_interconnect_axilite_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_interconnect_axilite_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_interconnect_axilite_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_interconnect_axilite_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_interconnect_axilite_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_interconnect_axilite_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_interconnect_axilite_WREADY = M01_AXI_wready;
  assign m02_couplers_to_interconnect_axilite_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_interconnect_axilite_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_interconnect_axilite_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_interconnect_axilite_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_interconnect_axilite_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_interconnect_axilite_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_interconnect_axilite_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_interconnect_axilite_WREADY = M02_AXI_wready;
  assign m03_couplers_to_interconnect_axilite_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_interconnect_axilite_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_interconnect_axilite_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_interconnect_axilite_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_interconnect_axilite_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_interconnect_axilite_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_interconnect_axilite_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_interconnect_axilite_WREADY = M03_AXI_wready;
  assign m04_couplers_to_interconnect_axilite_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_interconnect_axilite_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_interconnect_axilite_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_interconnect_axilite_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_interconnect_axilite_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_interconnect_axilite_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_interconnect_axilite_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_interconnect_axilite_WREADY = M04_AXI_wready;
  assign m05_couplers_to_interconnect_axilite_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_interconnect_axilite_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_interconnect_axilite_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_interconnect_axilite_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_interconnect_axilite_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_interconnect_axilite_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_interconnect_axilite_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_interconnect_axilite_WREADY = M05_AXI_wready;
  assign m06_couplers_to_interconnect_axilite_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_interconnect_axilite_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_interconnect_axilite_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_interconnect_axilite_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_interconnect_axilite_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_interconnect_axilite_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_interconnect_axilite_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_interconnect_axilite_WREADY = M06_AXI_wready;
  assign m07_couplers_to_interconnect_axilite_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_interconnect_axilite_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_interconnect_axilite_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_interconnect_axilite_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_interconnect_axilite_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_interconnect_axilite_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_interconnect_axilite_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_interconnect_axilite_WREADY = M07_AXI_wready;
  assign m08_couplers_to_interconnect_axilite_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_interconnect_axilite_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_interconnect_axilite_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_interconnect_axilite_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_interconnect_axilite_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_interconnect_axilite_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_interconnect_axilite_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_interconnect_axilite_WREADY = M08_AXI_wready;
  m00_couplers_imp_XAFVM8 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m00_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m00_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m00_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m00_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m00_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m00_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m00_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m00_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m00_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m00_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m00_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m00_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_QV5828 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m01_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m01_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m01_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m01_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m01_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m01_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m01_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m01_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m01_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m01_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m01_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m01_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_OVNA6O m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m02_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m02_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m02_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m02_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m02_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m02_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m02_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m02_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m02_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m02_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m02_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m02_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_LS724W m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m03_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m03_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m03_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m03_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m03_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m03_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m03_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m03_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m03_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m03_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m03_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m03_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_C12L74 m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m04_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m04_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m04_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m04_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m04_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m04_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m04_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m04_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m04_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m04_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m04_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m04_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_GRTLAO m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m05_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m05_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m05_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m05_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m05_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m05_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m05_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m05_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m05_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m05_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m05_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m05_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_1EENO0 m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m06_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m06_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m06_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m06_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m06_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m06_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m06_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m06_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m06_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m06_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m06_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m06_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_516L5C m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m07_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m07_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m07_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m07_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m07_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m07_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m07_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m07_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m07_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m07_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m07_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m07_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_1LCX32O m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m08_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m08_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m08_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m08_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m08_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m08_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m08_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m08_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m08_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m08_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m08_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m08_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  s00_couplers_imp_TL41KZ s00_couplers
       (.M_ACLK(interconnect_axilite_ACLK_net),
        .M_ARESETN(interconnect_axilite_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axilite_to_s00_couplers_ARADDR),
        .S_AXI_arburst(interconnect_axilite_to_s00_couplers_ARBURST),
        .S_AXI_arcache(interconnect_axilite_to_s00_couplers_ARCACHE),
        .S_AXI_arid(interconnect_axilite_to_s00_couplers_ARID),
        .S_AXI_arlen(interconnect_axilite_to_s00_couplers_ARLEN),
        .S_AXI_arlock(interconnect_axilite_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_axilite_to_s00_couplers_ARPROT),
        .S_AXI_arqos(interconnect_axilite_to_s00_couplers_ARQOS),
        .S_AXI_arready(interconnect_axilite_to_s00_couplers_ARREADY),
        .S_AXI_arsize(interconnect_axilite_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_axilite_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_to_s00_couplers_AWADDR),
        .S_AXI_awburst(interconnect_axilite_to_s00_couplers_AWBURST),
        .S_AXI_awcache(interconnect_axilite_to_s00_couplers_AWCACHE),
        .S_AXI_awid(interconnect_axilite_to_s00_couplers_AWID),
        .S_AXI_awlen(interconnect_axilite_to_s00_couplers_AWLEN),
        .S_AXI_awlock(interconnect_axilite_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(interconnect_axilite_to_s00_couplers_AWPROT),
        .S_AXI_awqos(interconnect_axilite_to_s00_couplers_AWQOS),
        .S_AXI_awready(interconnect_axilite_to_s00_couplers_AWREADY),
        .S_AXI_awsize(interconnect_axilite_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(interconnect_axilite_to_s00_couplers_AWVALID),
        .S_AXI_bid(interconnect_axilite_to_s00_couplers_BID),
        .S_AXI_bready(interconnect_axilite_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axilite_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axilite_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axilite_to_s00_couplers_RDATA),
        .S_AXI_rid(interconnect_axilite_to_s00_couplers_RID),
        .S_AXI_rlast(interconnect_axilite_to_s00_couplers_RLAST),
        .S_AXI_rready(interconnect_axilite_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axilite_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axilite_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axilite_to_s00_couplers_WDATA),
        .S_AXI_wlast(interconnect_axilite_to_s00_couplers_WLAST),
        .S_AXI_wready(interconnect_axilite_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axilite_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_to_s00_couplers_WVALID));
  vitis_design_xbar_0 xbar
       (.aclk(interconnect_axilite_ACLK_net),
        .aresetn(interconnect_axilite_ARESETN_net),
        .m_axi_araddr({xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
