// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


//------------------------------------------------------------------------------------
// Filename:    vitis_design_dpa_hub_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module vitis_design_dpa_hub_0 (
  input bit_as_bool s_aximm_clk,
  input bit_as_bool s_aximm_aresetn,
  input bit_as_bool trace_clk,
  input bit_as_bool trace_aresetn,
  input bit_as_bool axilite_clk,
  input bit_as_bool axilite_aresetn,
  output bit_as_bool trace_tready0,
  input bit [63 : 0] trace_tdata0,
  input bit_as_bool trace_tlast0,
  input bit [7 : 0] trace_tid0,
  input bit [7 : 0] trace_tdest0,
  input bit_as_bool trace_tvalid0,
  output bit_as_bool trace_tready1,
  output bit [63 : 0] trace_tdata1,
  input bit_as_bool trace_tlast1,
  input bit [7 : 0] trace_tid1,
  input bit [7 : 0] trace_tdest1,
  input bit_as_bool trace_tvalid1,
  input bit [63 : 0] trace_tdata2,
  output bit_as_bool trace_tready2,
  input bit_as_bool trace_tlast2,
  input bit [7 : 0] trace_tid2,
  input bit [7 : 0] trace_tdest2,
  input bit_as_bool trace_tvalid2,
  input bit [63 : 0] trace_tdata3,
  output bit_as_bool trace_tready3,
  input bit_as_bool trace_tlast3,
  input bit [7 : 0] trace_tid3,
  input bit [7 : 0] trace_tdest3,
  input bit_as_bool trace_tvalid3,
  input bit [63 : 0] trace_tdata4,
  output bit_as_bool trace_tready4,
  input bit_as_bool trace_tlast4,
  input bit [7 : 0] trace_tid4,
  input bit [7 : 0] trace_tdest4,
  input bit_as_bool trace_tvalid4,
  input bit [63 : 0] trace_tdata5,
  output bit_as_bool trace_tready5,
  input bit_as_bool trace_tlast5,
  input bit [7 : 0] trace_tid5,
  input bit [7 : 0] trace_tdest5,
  input bit_as_bool trace_tvalid5,
  input bit [63 : 0] trace_tdata6,
  output bit_as_bool trace_tready6,
  input bit_as_bool trace_tlast6,
  input bit [7 : 0] trace_tid6,
  input bit [7 : 0] trace_tdest6,
  input bit_as_bool trace_tvalid6,
  input bit [63 : 0] trace_tdata7,
  output bit_as_bool trace_tready7,
  input bit_as_bool trace_tlast7,
  input bit [7 : 0] trace_tid7,
  input bit [7 : 0] trace_tdest7,
  input bit_as_bool trace_tvalid7,
  input bit [63 : 0] trace_tdata8,
  output bit_as_bool trace_tready8,
  input bit_as_bool trace_tlast8,
  input bit [7 : 0] trace_tid8,
  input bit [7 : 0] trace_tdest8,
  input bit_as_bool trace_tvalid8,
  input bit [63 : 0] trace_tdata9,
  output bit_as_bool trace_tready9,
  input bit_as_bool trace_tlast9,
  input bit [7 : 0] trace_tid9,
  input bit [7 : 0] trace_tdest9,
  input bit_as_bool trace_tvalid9,
  input bit [63 : 0] trace_tdata10,
  output bit_as_bool trace_tready10,
  input bit_as_bool trace_tlast10,
  input bit [7 : 0] trace_tid10,
  input bit [7 : 0] trace_tdest10,
  input bit_as_bool trace_tvalid10,
  input bit [63 : 0] trace_tdata11,
  output bit_as_bool trace_tready11,
  input bit_as_bool trace_tlast11,
  input bit [7 : 0] trace_tid11,
  input bit [7 : 0] trace_tdest11,
  input bit_as_bool trace_tvalid11,
  input bit [63 : 0] trace_tdata12,
  output bit_as_bool trace_tready12,
  input bit_as_bool trace_tlast12,
  input bit [7 : 0] trace_tid12,
  input bit [7 : 0] trace_tdest12,
  input bit_as_bool trace_tvalid12,
  input bit [63 : 0] trace_tdata13,
  output bit_as_bool trace_tready13,
  input bit_as_bool trace_tlast13,
  input bit [7 : 0] trace_tid13,
  input bit [7 : 0] trace_tdest13,
  input bit_as_bool trace_tvalid13,
  input bit [63 : 0] trace_tdata14,
  output bit_as_bool trace_tready14,
  input bit_as_bool trace_tlast14,
  input bit [7 : 0] trace_tid14,
  input bit [7 : 0] trace_tdest14,
  input bit_as_bool trace_tvalid14,
  input bit [63 : 0] trace_tdata15,
  output bit_as_bool trace_tready15,
  input bit_as_bool trace_tlast15,
  input bit [7 : 0] trace_tid15,
  input bit [7 : 0] trace_tdest15,
  input bit_as_bool trace_tvalid15,
  input bit [63 : 0] trace_tdata16,
  output bit_as_bool trace_tready16,
  input bit_as_bool trace_tlast16,
  input bit [7 : 0] trace_tid16,
  input bit [7 : 0] trace_tdest16,
  input bit_as_bool trace_tvalid16,
  input bit [63 : 0] trace_tdata17,
  output bit_as_bool trace_tready17,
  input bit_as_bool trace_tlast17,
  input bit [7 : 0] trace_tid17,
  input bit [7 : 0] trace_tdest17,
  input bit_as_bool trace_tvalid17,
  input bit [63 : 0] trace_tdata18,
  output bit_as_bool trace_tready18,
  input bit_as_bool trace_tlast18,
  input bit [7 : 0] trace_tid18,
  input bit [7 : 0] trace_tdest18,
  input bit_as_bool trace_tvalid18,
  input bit [63 : 0] trace_tdata19,
  output bit_as_bool trace_tready19,
  input bit_as_bool trace_tlast19,
  input bit [7 : 0] trace_tid19,
  input bit [7 : 0] trace_tdest19,
  input bit_as_bool trace_tvalid19,
  input bit [63 : 0] trace_tdata20,
  output bit_as_bool trace_tready20,
  input bit_as_bool trace_tlast20,
  input bit [7 : 0] trace_tid20,
  input bit [7 : 0] trace_tdest20,
  input bit_as_bool trace_tvalid20,
  input bit [63 : 0] trace_tdata21,
  output bit_as_bool trace_tready21,
  input bit_as_bool trace_tlast21,
  input bit [7 : 0] trace_tid21,
  input bit [7 : 0] trace_tdest21,
  input bit_as_bool trace_tvalid21,
  input bit [63 : 0] trace_tdata22,
  output bit_as_bool trace_tready22,
  input bit_as_bool trace_tlast22,
  input bit [7 : 0] trace_tid22,
  input bit [7 : 0] trace_tdest22,
  input bit_as_bool trace_tvalid22,
  input bit [63 : 0] trace_tdata23,
  output bit_as_bool trace_tready23,
  input bit_as_bool trace_tlast23,
  input bit [7 : 0] trace_tid23,
  input bit [7 : 0] trace_tdest23,
  input bit_as_bool trace_tvalid23,
  input bit [63 : 0] trace_tdata24,
  output bit_as_bool trace_tready24,
  input bit_as_bool trace_tlast24,
  input bit [7 : 0] trace_tid24,
  input bit [7 : 0] trace_tdest24,
  input bit_as_bool trace_tvalid24,
  input bit [63 : 0] trace_tdata25,
  output bit_as_bool trace_tready25,
  input bit_as_bool trace_tlast25,
  input bit [7 : 0] trace_tid25,
  input bit [7 : 0] trace_tdest25,
  input bit_as_bool trace_tvalid25,
  input bit [63 : 0] trace_tdata26,
  output bit_as_bool trace_tready26,
  input bit_as_bool trace_tlast26,
  input bit [7 : 0] trace_tid26,
  input bit [7 : 0] trace_tdest26,
  input bit_as_bool trace_tvalid26,
  input bit [7 : 0] trace_tdata27,
  output bit_as_bool trace_tready27,
  input bit_as_bool trace_tlast27,
  input bit [7 : 0] trace_tid27,
  input bit [7 : 0] trace_tdest27,
  input bit_as_bool trace_tvalid27,
  input bit [63 : 0] trace_tdata28,
  output bit_as_bool trace_tready28,
  input bit_as_bool trace_tlast28,
  input bit [7 : 0] trace_tid28,
  input bit [7 : 0] trace_tdest28,
  input bit_as_bool trace_tvalid28,
  input bit [63 : 0] trace_tdata29,
  output bit_as_bool trace_tready29,
  input bit_as_bool trace_tlast29,
  input bit [7 : 0] trace_tid29,
  input bit [7 : 0] trace_tdest29,
  input bit_as_bool trace_tvalid29,
  input bit [63 : 0] trace_tdata30,
  output bit_as_bool trace_tready30,
  input bit_as_bool trace_tlast30,
  input bit [7 : 0] trace_tid30,
  input bit [7 : 0] trace_tdest30,
  input bit_as_bool trace_tvalid30,
  input bit [63 : 0] trace_tdata31,
  output bit_as_bool trace_tready31,
  input bit_as_bool trace_tlast31,
  input bit [7 : 0] trace_tid31,
  input bit [7 : 0] trace_tdest31,
  input bit_as_bool trace_tvalid31,
  input bit [63 : 0] trace_tdata32,
  output bit_as_bool trace_tready32,
  input bit_as_bool trace_tlast32,
  input bit [7 : 0] trace_tid32,
  input bit [7 : 0] trace_tdest32,
  input bit_as_bool trace_tvalid32,
  input bit [63 : 0] trace_tdata33,
  output bit_as_bool trace_tready33,
  input bit_as_bool trace_tlast33,
  input bit [7 : 0] trace_tid33,
  input bit [7 : 0] trace_tdest33,
  input bit_as_bool trace_tvalid33,
  input bit [63 : 0] trace_tdata34,
  output bit_as_bool trace_tready34,
  input bit_as_bool trace_tlast34,
  input bit [7 : 0] trace_tid34,
  input bit [7 : 0] trace_tdest34,
  input bit_as_bool trace_tvalid34,
  input bit [63 : 0] trace_tdata35,
  output bit_as_bool trace_tready35,
  input bit_as_bool trace_tlast35,
  input bit [7 : 0] trace_tid35,
  input bit [7 : 0] trace_tdest35,
  input bit_as_bool trace_tvalid35,
  input bit [63 : 0] trace_tdata36,
  output bit_as_bool trace_tready36,
  input bit_as_bool trace_tlast36,
  input bit [7 : 0] trace_tid36,
  input bit [7 : 0] trace_tdest36,
  input bit_as_bool trace_tvalid36,
  input bit [63 : 0] trace_tdata37,
  output bit_as_bool trace_tready37,
  input bit_as_bool trace_tlast37,
  input bit [7 : 0] trace_tid37,
  input bit [7 : 0] trace_tdest37,
  input bit_as_bool trace_tvalid37,
  input bit [63 : 0] trace_tdata38,
  output bit_as_bool trace_tready38,
  input bit_as_bool trace_tlast38,
  input bit [7 : 0] trace_tid38,
  input bit [7 : 0] trace_tdest38,
  input bit_as_bool trace_tvalid38,
  input bit [63 : 0] trace_tdata39,
  output bit_as_bool trace_tready39,
  input bit_as_bool trace_tlast39,
  input bit [7 : 0] trace_tid39,
  input bit [7 : 0] trace_tdest39,
  input bit_as_bool trace_tvalid39,
  input bit [63 : 0] trace_tdata40,
  output bit_as_bool trace_tready40,
  input bit_as_bool trace_tlast40,
  input bit [7 : 0] trace_tid40,
  input bit [7 : 0] trace_tdest40,
  input bit_as_bool trace_tvalid40,
  input bit [63 : 0] trace_tdata41,
  output bit_as_bool trace_tready41,
  input bit_as_bool trace_tlast41,
  input bit [7 : 0] trace_tid41,
  input bit [7 : 0] trace_tdest41,
  input bit_as_bool trace_tvalid41,
  input bit [63 : 0] trace_tdata42,
  output bit_as_bool trace_tready42,
  input bit_as_bool trace_tlast42,
  input bit [7 : 0] trace_tid42,
  input bit [7 : 0] trace_tdest42,
  input bit_as_bool trace_tvalid42,
  input bit [63 : 0] trace_tdata43,
  output bit_as_bool trace_tready43,
  input bit_as_bool trace_tlast43,
  input bit [7 : 0] trace_tid43,
  input bit [7 : 0] trace_tdest43,
  input bit_as_bool trace_tvalid43,
  input bit [63 : 0] trace_tdata44,
  output bit_as_bool trace_tready44,
  input bit_as_bool trace_tlast44,
  input bit [7 : 0] trace_tid44,
  input bit [7 : 0] trace_tdest44,
  input bit_as_bool trace_tvalid44,
  input bit [63 : 0] trace_tdata45,
  output bit_as_bool trace_tready45,
  input bit_as_bool trace_tlast45,
  input bit [7 : 0] trace_tid45,
  input bit [7 : 0] trace_tdest45,
  input bit_as_bool trace_tvalid45,
  input bit [63 : 0] trace_tdata46,
  output bit_as_bool trace_tready46,
  input bit_as_bool trace_tlast46,
  input bit [7 : 0] trace_tid46,
  input bit [7 : 0] trace_tdest46,
  input bit_as_bool trace_tvalid46,
  input bit [63 : 0] trace_tdata47,
  output bit_as_bool trace_tready47,
  input bit_as_bool trace_tlast47,
  input bit [7 : 0] trace_tid47,
  input bit [7 : 0] trace_tdest47,
  input bit_as_bool trace_tvalid47,
  input bit [63 : 0] trace_tdata48,
  output bit_as_bool trace_tready48,
  input bit_as_bool trace_tlast48,
  input bit [7 : 0] trace_tid48,
  input bit [7 : 0] trace_tdest48,
  input bit_as_bool trace_tvalid48,
  input bit [63 : 0] trace_tdata49,
  output bit_as_bool trace_tready49,
  input bit_as_bool trace_tlast49,
  input bit [7 : 0] trace_tid49,
  input bit [7 : 0] trace_tdest49,
  input bit_as_bool trace_tvalid49,
  input bit [63 : 0] trace_tdata50,
  output bit_as_bool trace_tready50,
  input bit_as_bool trace_tlast50,
  input bit [7 : 0] trace_tid50,
  input bit [7 : 0] trace_tdest50,
  input bit_as_bool trace_tvalid50,
  input bit [63 : 0] trace_tdata51,
  output bit_as_bool trace_tready51,
  input bit_as_bool trace_tlast51,
  input bit [7 : 0] trace_tid51,
  input bit [7 : 0] trace_tdest51,
  input bit_as_bool trace_tvalid51,
  input bit [63 : 0] trace_tdata52,
  output bit_as_bool trace_tready52,
  input bit_as_bool trace_tlast52,
  input bit [7 : 0] trace_tid52,
  input bit [7 : 0] trace_tdest52,
  input bit_as_bool trace_tvalid52,
  input bit [63 : 0] trace_tdata53,
  output bit_as_bool trace_tready53,
  input bit_as_bool trace_tlast53,
  input bit [7 : 0] trace_tid53,
  input bit [7 : 0] trace_tdest53,
  input bit_as_bool trace_tvalid53,
  input bit [63 : 0] trace_tdata54,
  output bit_as_bool trace_tready54,
  input bit_as_bool trace_tlast54,
  input bit [7 : 0] trace_tid54,
  input bit [7 : 0] trace_tdest54,
  input bit_as_bool trace_tvalid54,
  input bit [63 : 0] trace_tdata55,
  output bit_as_bool trace_tready55,
  input bit_as_bool trace_tlast55,
  input bit [7 : 0] trace_tid55,
  input bit [7 : 0] trace_tdest55,
  input bit_as_bool trace_tvalid55,
  input bit [63 : 0] trace_tdata56,
  output bit_as_bool trace_tready56,
  input bit_as_bool trace_tlast56,
  input bit [7 : 0] trace_tid56,
  input bit [7 : 0] trace_tdest56,
  input bit_as_bool trace_tvalid56,
  input bit [63 : 0] trace_tdata57,
  output bit_as_bool trace_tready57,
  input bit_as_bool trace_tlast57,
  input bit [7 : 0] trace_tid57,
  input bit [7 : 0] trace_tdest57,
  input bit_as_bool trace_tvalid57,
  input bit [63 : 0] trace_tdata58,
  output bit_as_bool trace_tready58,
  input bit_as_bool trace_tlast58,
  input bit [7 : 0] trace_tid58,
  input bit [7 : 0] trace_tdest58,
  input bit_as_bool trace_tvalid58,
  output bit_as_bool trace_tready59,
  input bit [63 : 0] trace_tdata59,
  input bit_as_bool trace_tlast59,
  input bit [7 : 0] trace_tid59,
  input bit [7 : 0] trace_tdest59,
  input bit_as_bool trace_tvalid59,
  output bit_as_bool trace_tready60,
  input bit [63 : 0] trace_tdata60,
  input bit_as_bool trace_tlast60,
  input bit [7 : 0] trace_tid60,
  input bit [7 : 0] trace_tdest60,
  input bit_as_bool trace_tvalid60,
  output bit_as_bool trace_tready61,
  input bit [63 : 0] trace_tdata61,
  input bit_as_bool trace_tlast61,
  input bit [7 : 0] trace_tid61,
  input bit [7 : 0] trace_tdest61,
  input bit_as_bool trace_tvalid61,
  output bit_as_bool trace_tready62,
  input bit [63 : 0] trace_tdata62,
  input bit_as_bool trace_tlast62,
  input bit [7 : 0] trace_tid62,
  input bit [7 : 0] trace_tdest62,
  input bit_as_bool trace_tvalid62,
  input bit [7 : 0] s_axi_awaddr,
  input bit_as_bool s_axi_awvalid,
  output bit_as_bool s_axi_awready,
  input bit [31 : 0] s_axi_wdata,
  input bit [3 : 0] s_axi_wstrb,
  input bit_as_bool s_axi_wvalid,
  output bit_as_bool s_axi_wready,
  output bit_as_bool s_axi_bvalid,
  input bit_as_bool s_axi_bready,
  output bit [1 : 0] s_axi_bresp,
  input bit [7 : 0] s_axi_araddr,
  input bit_as_bool s_axi_arvalid,
  output bit_as_bool s_axi_arready,
  output bit [31 : 0] s_axi_rdata,
  output bit [1 : 0] s_axi_rresp,
  output bit_as_bool s_axi_rvalid,
  input bit_as_bool s_axi_rready,
  input bit [7 : 0] s_axihub_awaddr,
  input bit_as_bool s_axihub_awvalid,
  output bit_as_bool s_axihub_awready,
  input bit [31 : 0] s_axihub_wdata,
  input bit [3 : 0] s_axihub_wstrb,
  input bit_as_bool s_axihub_wvalid,
  output bit_as_bool s_axihub_wready,
  output bit_as_bool s_axihub_bvalid,
  input bit_as_bool s_axihub_bready,
  output bit [1 : 0] s_axihub_bresp,
  input bit [7 : 0] s_axihub_araddr,
  input bit_as_bool s_axihub_arvalid,
  output bit_as_bool s_axihub_arready,
  output bit [31 : 0] s_axihub_rdata,
  output bit [1 : 0] s_axihub_rresp,
  output bit_as_bool s_axihub_rvalid,
  input bit_as_bool s_axihub_rready,
  input bit [31 : 0] s_aximm_awaddr,
  input bit_as_bool s_aximm_awvalid,
  output bit_as_bool s_aximm_awready,
  input bit [7 : 0] s_aximm_awlen,
  input bit [2 : 0] s_aximm_awsize,
  input bit [1 : 0] s_aximm_awburst,
  input bit [15 : 0] s_aximm_awid,
  input bit [31 : 0] s_aximm_wdata,
  input bit [3 : 0] s_aximm_wstrb,
  input bit_as_bool s_aximm_wvalid,
  output bit_as_bool s_aximm_wready,
  output bit_as_bool s_aximm_bvalid,
  input bit_as_bool s_aximm_bready,
  input bit_as_bool s_aximm_wlast,
  output bit_as_bool s_aximm_rlast,
  output bit [1 : 0] s_aximm_bresp,
  output bit [15 : 0] s_aximm_bid,
  input bit [31 : 0] s_aximm_araddr,
  input bit_as_bool s_aximm_arvalid,
  output bit_as_bool s_aximm_arready,
  input bit [7 : 0] s_aximm_arlen,
  input bit [2 : 0] s_aximm_arsize,
  input bit [1 : 0] s_aximm_arburst,
  input bit [15 : 0] s_aximm_arid,
  output bit [31 : 0] s_aximm_rdata,
  output bit [15 : 0] s_aximm_rid,
  output bit [1 : 0] s_aximm_rresp,
  output bit_as_bool s_aximm_rvalid,
  input bit_as_bool s_aximm_rready
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module vitis_design_dpa_hub_0 (s_aximm_clk,s_aximm_aresetn,trace_clk,trace_aresetn,axilite_clk,axilite_aresetn,trace_tready0,trace_tdata0,trace_tlast0,trace_tid0,trace_tdest0,trace_tvalid0,trace_tready1,trace_tdata1,trace_tlast1,trace_tid1,trace_tdest1,trace_tvalid1,trace_tdata2,trace_tready2,trace_tlast2,trace_tid2,trace_tdest2,trace_tvalid2,trace_tdata3,trace_tready3,trace_tlast3,trace_tid3,trace_tdest3,trace_tvalid3,trace_tdata4,trace_tready4,trace_tlast4,trace_tid4,trace_tdest4,trace_tvalid4,trace_tdata5,trace_tready5,trace_tlast5,trace_tid5,trace_tdest5,trace_tvalid5,trace_tdata6,trace_tready6,trace_tlast6,trace_tid6,trace_tdest6,trace_tvalid6,trace_tdata7,trace_tready7,trace_tlast7,trace_tid7,trace_tdest7,trace_tvalid7,trace_tdata8,trace_tready8,trace_tlast8,trace_tid8,trace_tdest8,trace_tvalid8,trace_tdata9,trace_tready9,trace_tlast9,trace_tid9,trace_tdest9,trace_tvalid9,trace_tdata10,trace_tready10,trace_tlast10,trace_tid10,trace_tdest10,trace_tvalid10,trace_tdata11,trace_tready11,trace_tlast11,trace_tid11,trace_tdest11,trace_tvalid11,trace_tdata12,trace_tready12,trace_tlast12,trace_tid12,trace_tdest12,trace_tvalid12,trace_tdata13,trace_tready13,trace_tlast13,trace_tid13,trace_tdest13,trace_tvalid13,trace_tdata14,trace_tready14,trace_tlast14,trace_tid14,trace_tdest14,trace_tvalid14,trace_tdata15,trace_tready15,trace_tlast15,trace_tid15,trace_tdest15,trace_tvalid15,trace_tdata16,trace_tready16,trace_tlast16,trace_tid16,trace_tdest16,trace_tvalid16,trace_tdata17,trace_tready17,trace_tlast17,trace_tid17,trace_tdest17,trace_tvalid17,trace_tdata18,trace_tready18,trace_tlast18,trace_tid18,trace_tdest18,trace_tvalid18,trace_tdata19,trace_tready19,trace_tlast19,trace_tid19,trace_tdest19,trace_tvalid19,trace_tdata20,trace_tready20,trace_tlast20,trace_tid20,trace_tdest20,trace_tvalid20,trace_tdata21,trace_tready21,trace_tlast21,trace_tid21,trace_tdest21,trace_tvalid21,trace_tdata22,trace_tready22,trace_tlast22,trace_tid22,trace_tdest22,trace_tvalid22,trace_tdata23,trace_tready23,trace_tlast23,trace_tid23,trace_tdest23,trace_tvalid23,trace_tdata24,trace_tready24,trace_tlast24,trace_tid24,trace_tdest24,trace_tvalid24,trace_tdata25,trace_tready25,trace_tlast25,trace_tid25,trace_tdest25,trace_tvalid25,trace_tdata26,trace_tready26,trace_tlast26,trace_tid26,trace_tdest26,trace_tvalid26,trace_tdata27,trace_tready27,trace_tlast27,trace_tid27,trace_tdest27,trace_tvalid27,trace_tdata28,trace_tready28,trace_tlast28,trace_tid28,trace_tdest28,trace_tvalid28,trace_tdata29,trace_tready29,trace_tlast29,trace_tid29,trace_tdest29,trace_tvalid29,trace_tdata30,trace_tready30,trace_tlast30,trace_tid30,trace_tdest30,trace_tvalid30,trace_tdata31,trace_tready31,trace_tlast31,trace_tid31,trace_tdest31,trace_tvalid31,trace_tdata32,trace_tready32,trace_tlast32,trace_tid32,trace_tdest32,trace_tvalid32,trace_tdata33,trace_tready33,trace_tlast33,trace_tid33,trace_tdest33,trace_tvalid33,trace_tdata34,trace_tready34,trace_tlast34,trace_tid34,trace_tdest34,trace_tvalid34,trace_tdata35,trace_tready35,trace_tlast35,trace_tid35,trace_tdest35,trace_tvalid35,trace_tdata36,trace_tready36,trace_tlast36,trace_tid36,trace_tdest36,trace_tvalid36,trace_tdata37,trace_tready37,trace_tlast37,trace_tid37,trace_tdest37,trace_tvalid37,trace_tdata38,trace_tready38,trace_tlast38,trace_tid38,trace_tdest38,trace_tvalid38,trace_tdata39,trace_tready39,trace_tlast39,trace_tid39,trace_tdest39,trace_tvalid39,trace_tdata40,trace_tready40,trace_tlast40,trace_tid40,trace_tdest40,trace_tvalid40,trace_tdata41,trace_tready41,trace_tlast41,trace_tid41,trace_tdest41,trace_tvalid41,trace_tdata42,trace_tready42,trace_tlast42,trace_tid42,trace_tdest42,trace_tvalid42,trace_tdata43,trace_tready43,trace_tlast43,trace_tid43,trace_tdest43,trace_tvalid43,trace_tdata44,trace_tready44,trace_tlast44,trace_tid44,trace_tdest44,trace_tvalid44,trace_tdata45,trace_tready45,trace_tlast45,trace_tid45,trace_tdest45,trace_tvalid45,trace_tdata46,trace_tready46,trace_tlast46,trace_tid46,trace_tdest46,trace_tvalid46,trace_tdata47,trace_tready47,trace_tlast47,trace_tid47,trace_tdest47,trace_tvalid47,trace_tdata48,trace_tready48,trace_tlast48,trace_tid48,trace_tdest48,trace_tvalid48,trace_tdata49,trace_tready49,trace_tlast49,trace_tid49,trace_tdest49,trace_tvalid49,trace_tdata50,trace_tready50,trace_tlast50,trace_tid50,trace_tdest50,trace_tvalid50,trace_tdata51,trace_tready51,trace_tlast51,trace_tid51,trace_tdest51,trace_tvalid51,trace_tdata52,trace_tready52,trace_tlast52,trace_tid52,trace_tdest52,trace_tvalid52,trace_tdata53,trace_tready53,trace_tlast53,trace_tid53,trace_tdest53,trace_tvalid53,trace_tdata54,trace_tready54,trace_tlast54,trace_tid54,trace_tdest54,trace_tvalid54,trace_tdata55,trace_tready55,trace_tlast55,trace_tid55,trace_tdest55,trace_tvalid55,trace_tdata56,trace_tready56,trace_tlast56,trace_tid56,trace_tdest56,trace_tvalid56,trace_tdata57,trace_tready57,trace_tlast57,trace_tid57,trace_tdest57,trace_tvalid57,trace_tdata58,trace_tready58,trace_tlast58,trace_tid58,trace_tdest58,trace_tvalid58,trace_tready59,trace_tdata59,trace_tlast59,trace_tid59,trace_tdest59,trace_tvalid59,trace_tready60,trace_tdata60,trace_tlast60,trace_tid60,trace_tdest60,trace_tvalid60,trace_tready61,trace_tdata61,trace_tlast61,trace_tid61,trace_tdest61,trace_tvalid61,trace_tready62,trace_tdata62,trace_tlast62,trace_tid62,trace_tdest62,trace_tvalid62,s_axi_awaddr,s_axi_awvalid,s_axi_awready,s_axi_wdata,s_axi_wstrb,s_axi_wvalid,s_axi_wready,s_axi_bvalid,s_axi_bready,s_axi_bresp,s_axi_araddr,s_axi_arvalid,s_axi_arready,s_axi_rdata,s_axi_rresp,s_axi_rvalid,s_axi_rready,s_axihub_awaddr,s_axihub_awvalid,s_axihub_awready,s_axihub_wdata,s_axihub_wstrb,s_axihub_wvalid,s_axihub_wready,s_axihub_bvalid,s_axihub_bready,s_axihub_bresp,s_axihub_araddr,s_axihub_arvalid,s_axihub_arready,s_axihub_rdata,s_axihub_rresp,s_axihub_rvalid,s_axihub_rready,s_aximm_awaddr,s_aximm_awvalid,s_aximm_awready,s_aximm_awlen,s_aximm_awsize,s_aximm_awburst,s_aximm_awid,s_aximm_wdata,s_aximm_wstrb,s_aximm_wvalid,s_aximm_wready,s_aximm_bvalid,s_aximm_bready,s_aximm_wlast,s_aximm_rlast,s_aximm_bresp,s_aximm_bid,s_aximm_araddr,s_aximm_arvalid,s_aximm_arready,s_aximm_arlen,s_aximm_arsize,s_aximm_arburst,s_aximm_arid,s_aximm_rdata,s_aximm_rid,s_aximm_rresp,s_aximm_rvalid,s_aximm_rready)
(* integer foreign = "SystemC";
*);
  input bit s_aximm_clk;
  input bit s_aximm_aresetn;
  input bit trace_clk;
  input bit trace_aresetn;
  input bit axilite_clk;
  input bit axilite_aresetn;
  output wire trace_tready0;
  input bit [63 : 0] trace_tdata0;
  input bit trace_tlast0;
  input bit [7 : 0] trace_tid0;
  input bit [7 : 0] trace_tdest0;
  input bit trace_tvalid0;
  output wire trace_tready1;
  output wire [63 : 0] trace_tdata1;
  input bit trace_tlast1;
  input bit [7 : 0] trace_tid1;
  input bit [7 : 0] trace_tdest1;
  input bit trace_tvalid1;
  input bit [63 : 0] trace_tdata2;
  output wire trace_tready2;
  input bit trace_tlast2;
  input bit [7 : 0] trace_tid2;
  input bit [7 : 0] trace_tdest2;
  input bit trace_tvalid2;
  input bit [63 : 0] trace_tdata3;
  output wire trace_tready3;
  input bit trace_tlast3;
  input bit [7 : 0] trace_tid3;
  input bit [7 : 0] trace_tdest3;
  input bit trace_tvalid3;
  input bit [63 : 0] trace_tdata4;
  output wire trace_tready4;
  input bit trace_tlast4;
  input bit [7 : 0] trace_tid4;
  input bit [7 : 0] trace_tdest4;
  input bit trace_tvalid4;
  input bit [63 : 0] trace_tdata5;
  output wire trace_tready5;
  input bit trace_tlast5;
  input bit [7 : 0] trace_tid5;
  input bit [7 : 0] trace_tdest5;
  input bit trace_tvalid5;
  input bit [63 : 0] trace_tdata6;
  output wire trace_tready6;
  input bit trace_tlast6;
  input bit [7 : 0] trace_tid6;
  input bit [7 : 0] trace_tdest6;
  input bit trace_tvalid6;
  input bit [63 : 0] trace_tdata7;
  output wire trace_tready7;
  input bit trace_tlast7;
  input bit [7 : 0] trace_tid7;
  input bit [7 : 0] trace_tdest7;
  input bit trace_tvalid7;
  input bit [63 : 0] trace_tdata8;
  output wire trace_tready8;
  input bit trace_tlast8;
  input bit [7 : 0] trace_tid8;
  input bit [7 : 0] trace_tdest8;
  input bit trace_tvalid8;
  input bit [63 : 0] trace_tdata9;
  output wire trace_tready9;
  input bit trace_tlast9;
  input bit [7 : 0] trace_tid9;
  input bit [7 : 0] trace_tdest9;
  input bit trace_tvalid9;
  input bit [63 : 0] trace_tdata10;
  output wire trace_tready10;
  input bit trace_tlast10;
  input bit [7 : 0] trace_tid10;
  input bit [7 : 0] trace_tdest10;
  input bit trace_tvalid10;
  input bit [63 : 0] trace_tdata11;
  output wire trace_tready11;
  input bit trace_tlast11;
  input bit [7 : 0] trace_tid11;
  input bit [7 : 0] trace_tdest11;
  input bit trace_tvalid11;
  input bit [63 : 0] trace_tdata12;
  output wire trace_tready12;
  input bit trace_tlast12;
  input bit [7 : 0] trace_tid12;
  input bit [7 : 0] trace_tdest12;
  input bit trace_tvalid12;
  input bit [63 : 0] trace_tdata13;
  output wire trace_tready13;
  input bit trace_tlast13;
  input bit [7 : 0] trace_tid13;
  input bit [7 : 0] trace_tdest13;
  input bit trace_tvalid13;
  input bit [63 : 0] trace_tdata14;
  output wire trace_tready14;
  input bit trace_tlast14;
  input bit [7 : 0] trace_tid14;
  input bit [7 : 0] trace_tdest14;
  input bit trace_tvalid14;
  input bit [63 : 0] trace_tdata15;
  output wire trace_tready15;
  input bit trace_tlast15;
  input bit [7 : 0] trace_tid15;
  input bit [7 : 0] trace_tdest15;
  input bit trace_tvalid15;
  input bit [63 : 0] trace_tdata16;
  output wire trace_tready16;
  input bit trace_tlast16;
  input bit [7 : 0] trace_tid16;
  input bit [7 : 0] trace_tdest16;
  input bit trace_tvalid16;
  input bit [63 : 0] trace_tdata17;
  output wire trace_tready17;
  input bit trace_tlast17;
  input bit [7 : 0] trace_tid17;
  input bit [7 : 0] trace_tdest17;
  input bit trace_tvalid17;
  input bit [63 : 0] trace_tdata18;
  output wire trace_tready18;
  input bit trace_tlast18;
  input bit [7 : 0] trace_tid18;
  input bit [7 : 0] trace_tdest18;
  input bit trace_tvalid18;
  input bit [63 : 0] trace_tdata19;
  output wire trace_tready19;
  input bit trace_tlast19;
  input bit [7 : 0] trace_tid19;
  input bit [7 : 0] trace_tdest19;
  input bit trace_tvalid19;
  input bit [63 : 0] trace_tdata20;
  output wire trace_tready20;
  input bit trace_tlast20;
  input bit [7 : 0] trace_tid20;
  input bit [7 : 0] trace_tdest20;
  input bit trace_tvalid20;
  input bit [63 : 0] trace_tdata21;
  output wire trace_tready21;
  input bit trace_tlast21;
  input bit [7 : 0] trace_tid21;
  input bit [7 : 0] trace_tdest21;
  input bit trace_tvalid21;
  input bit [63 : 0] trace_tdata22;
  output wire trace_tready22;
  input bit trace_tlast22;
  input bit [7 : 0] trace_tid22;
  input bit [7 : 0] trace_tdest22;
  input bit trace_tvalid22;
  input bit [63 : 0] trace_tdata23;
  output wire trace_tready23;
  input bit trace_tlast23;
  input bit [7 : 0] trace_tid23;
  input bit [7 : 0] trace_tdest23;
  input bit trace_tvalid23;
  input bit [63 : 0] trace_tdata24;
  output wire trace_tready24;
  input bit trace_tlast24;
  input bit [7 : 0] trace_tid24;
  input bit [7 : 0] trace_tdest24;
  input bit trace_tvalid24;
  input bit [63 : 0] trace_tdata25;
  output wire trace_tready25;
  input bit trace_tlast25;
  input bit [7 : 0] trace_tid25;
  input bit [7 : 0] trace_tdest25;
  input bit trace_tvalid25;
  input bit [63 : 0] trace_tdata26;
  output wire trace_tready26;
  input bit trace_tlast26;
  input bit [7 : 0] trace_tid26;
  input bit [7 : 0] trace_tdest26;
  input bit trace_tvalid26;
  input bit [7 : 0] trace_tdata27;
  output wire trace_tready27;
  input bit trace_tlast27;
  input bit [7 : 0] trace_tid27;
  input bit [7 : 0] trace_tdest27;
  input bit trace_tvalid27;
  input bit [63 : 0] trace_tdata28;
  output wire trace_tready28;
  input bit trace_tlast28;
  input bit [7 : 0] trace_tid28;
  input bit [7 : 0] trace_tdest28;
  input bit trace_tvalid28;
  input bit [63 : 0] trace_tdata29;
  output wire trace_tready29;
  input bit trace_tlast29;
  input bit [7 : 0] trace_tid29;
  input bit [7 : 0] trace_tdest29;
  input bit trace_tvalid29;
  input bit [63 : 0] trace_tdata30;
  output wire trace_tready30;
  input bit trace_tlast30;
  input bit [7 : 0] trace_tid30;
  input bit [7 : 0] trace_tdest30;
  input bit trace_tvalid30;
  input bit [63 : 0] trace_tdata31;
  output wire trace_tready31;
  input bit trace_tlast31;
  input bit [7 : 0] trace_tid31;
  input bit [7 : 0] trace_tdest31;
  input bit trace_tvalid31;
  input bit [63 : 0] trace_tdata32;
  output wire trace_tready32;
  input bit trace_tlast32;
  input bit [7 : 0] trace_tid32;
  input bit [7 : 0] trace_tdest32;
  input bit trace_tvalid32;
  input bit [63 : 0] trace_tdata33;
  output wire trace_tready33;
  input bit trace_tlast33;
  input bit [7 : 0] trace_tid33;
  input bit [7 : 0] trace_tdest33;
  input bit trace_tvalid33;
  input bit [63 : 0] trace_tdata34;
  output wire trace_tready34;
  input bit trace_tlast34;
  input bit [7 : 0] trace_tid34;
  input bit [7 : 0] trace_tdest34;
  input bit trace_tvalid34;
  input bit [63 : 0] trace_tdata35;
  output wire trace_tready35;
  input bit trace_tlast35;
  input bit [7 : 0] trace_tid35;
  input bit [7 : 0] trace_tdest35;
  input bit trace_tvalid35;
  input bit [63 : 0] trace_tdata36;
  output wire trace_tready36;
  input bit trace_tlast36;
  input bit [7 : 0] trace_tid36;
  input bit [7 : 0] trace_tdest36;
  input bit trace_tvalid36;
  input bit [63 : 0] trace_tdata37;
  output wire trace_tready37;
  input bit trace_tlast37;
  input bit [7 : 0] trace_tid37;
  input bit [7 : 0] trace_tdest37;
  input bit trace_tvalid37;
  input bit [63 : 0] trace_tdata38;
  output wire trace_tready38;
  input bit trace_tlast38;
  input bit [7 : 0] trace_tid38;
  input bit [7 : 0] trace_tdest38;
  input bit trace_tvalid38;
  input bit [63 : 0] trace_tdata39;
  output wire trace_tready39;
  input bit trace_tlast39;
  input bit [7 : 0] trace_tid39;
  input bit [7 : 0] trace_tdest39;
  input bit trace_tvalid39;
  input bit [63 : 0] trace_tdata40;
  output wire trace_tready40;
  input bit trace_tlast40;
  input bit [7 : 0] trace_tid40;
  input bit [7 : 0] trace_tdest40;
  input bit trace_tvalid40;
  input bit [63 : 0] trace_tdata41;
  output wire trace_tready41;
  input bit trace_tlast41;
  input bit [7 : 0] trace_tid41;
  input bit [7 : 0] trace_tdest41;
  input bit trace_tvalid41;
  input bit [63 : 0] trace_tdata42;
  output wire trace_tready42;
  input bit trace_tlast42;
  input bit [7 : 0] trace_tid42;
  input bit [7 : 0] trace_tdest42;
  input bit trace_tvalid42;
  input bit [63 : 0] trace_tdata43;
  output wire trace_tready43;
  input bit trace_tlast43;
  input bit [7 : 0] trace_tid43;
  input bit [7 : 0] trace_tdest43;
  input bit trace_tvalid43;
  input bit [63 : 0] trace_tdata44;
  output wire trace_tready44;
  input bit trace_tlast44;
  input bit [7 : 0] trace_tid44;
  input bit [7 : 0] trace_tdest44;
  input bit trace_tvalid44;
  input bit [63 : 0] trace_tdata45;
  output wire trace_tready45;
  input bit trace_tlast45;
  input bit [7 : 0] trace_tid45;
  input bit [7 : 0] trace_tdest45;
  input bit trace_tvalid45;
  input bit [63 : 0] trace_tdata46;
  output wire trace_tready46;
  input bit trace_tlast46;
  input bit [7 : 0] trace_tid46;
  input bit [7 : 0] trace_tdest46;
  input bit trace_tvalid46;
  input bit [63 : 0] trace_tdata47;
  output wire trace_tready47;
  input bit trace_tlast47;
  input bit [7 : 0] trace_tid47;
  input bit [7 : 0] trace_tdest47;
  input bit trace_tvalid47;
  input bit [63 : 0] trace_tdata48;
  output wire trace_tready48;
  input bit trace_tlast48;
  input bit [7 : 0] trace_tid48;
  input bit [7 : 0] trace_tdest48;
  input bit trace_tvalid48;
  input bit [63 : 0] trace_tdata49;
  output wire trace_tready49;
  input bit trace_tlast49;
  input bit [7 : 0] trace_tid49;
  input bit [7 : 0] trace_tdest49;
  input bit trace_tvalid49;
  input bit [63 : 0] trace_tdata50;
  output wire trace_tready50;
  input bit trace_tlast50;
  input bit [7 : 0] trace_tid50;
  input bit [7 : 0] trace_tdest50;
  input bit trace_tvalid50;
  input bit [63 : 0] trace_tdata51;
  output wire trace_tready51;
  input bit trace_tlast51;
  input bit [7 : 0] trace_tid51;
  input bit [7 : 0] trace_tdest51;
  input bit trace_tvalid51;
  input bit [63 : 0] trace_tdata52;
  output wire trace_tready52;
  input bit trace_tlast52;
  input bit [7 : 0] trace_tid52;
  input bit [7 : 0] trace_tdest52;
  input bit trace_tvalid52;
  input bit [63 : 0] trace_tdata53;
  output wire trace_tready53;
  input bit trace_tlast53;
  input bit [7 : 0] trace_tid53;
  input bit [7 : 0] trace_tdest53;
  input bit trace_tvalid53;
  input bit [63 : 0] trace_tdata54;
  output wire trace_tready54;
  input bit trace_tlast54;
  input bit [7 : 0] trace_tid54;
  input bit [7 : 0] trace_tdest54;
  input bit trace_tvalid54;
  input bit [63 : 0] trace_tdata55;
  output wire trace_tready55;
  input bit trace_tlast55;
  input bit [7 : 0] trace_tid55;
  input bit [7 : 0] trace_tdest55;
  input bit trace_tvalid55;
  input bit [63 : 0] trace_tdata56;
  output wire trace_tready56;
  input bit trace_tlast56;
  input bit [7 : 0] trace_tid56;
  input bit [7 : 0] trace_tdest56;
  input bit trace_tvalid56;
  input bit [63 : 0] trace_tdata57;
  output wire trace_tready57;
  input bit trace_tlast57;
  input bit [7 : 0] trace_tid57;
  input bit [7 : 0] trace_tdest57;
  input bit trace_tvalid57;
  input bit [63 : 0] trace_tdata58;
  output wire trace_tready58;
  input bit trace_tlast58;
  input bit [7 : 0] trace_tid58;
  input bit [7 : 0] trace_tdest58;
  input bit trace_tvalid58;
  output wire trace_tready59;
  input bit [63 : 0] trace_tdata59;
  input bit trace_tlast59;
  input bit [7 : 0] trace_tid59;
  input bit [7 : 0] trace_tdest59;
  input bit trace_tvalid59;
  output wire trace_tready60;
  input bit [63 : 0] trace_tdata60;
  input bit trace_tlast60;
  input bit [7 : 0] trace_tid60;
  input bit [7 : 0] trace_tdest60;
  input bit trace_tvalid60;
  output wire trace_tready61;
  input bit [63 : 0] trace_tdata61;
  input bit trace_tlast61;
  input bit [7 : 0] trace_tid61;
  input bit [7 : 0] trace_tdest61;
  input bit trace_tvalid61;
  output wire trace_tready62;
  input bit [63 : 0] trace_tdata62;
  input bit trace_tlast62;
  input bit [7 : 0] trace_tid62;
  input bit [7 : 0] trace_tdest62;
  input bit trace_tvalid62;
  input bit [7 : 0] s_axi_awaddr;
  input bit s_axi_awvalid;
  output wire s_axi_awready;
  input bit [31 : 0] s_axi_wdata;
  input bit [3 : 0] s_axi_wstrb;
  input bit s_axi_wvalid;
  output wire s_axi_wready;
  output wire s_axi_bvalid;
  input bit s_axi_bready;
  output wire [1 : 0] s_axi_bresp;
  input bit [7 : 0] s_axi_araddr;
  input bit s_axi_arvalid;
  output wire s_axi_arready;
  output wire [31 : 0] s_axi_rdata;
  output wire [1 : 0] s_axi_rresp;
  output wire s_axi_rvalid;
  input bit s_axi_rready;
  input bit [7 : 0] s_axihub_awaddr;
  input bit s_axihub_awvalid;
  output wire s_axihub_awready;
  input bit [31 : 0] s_axihub_wdata;
  input bit [3 : 0] s_axihub_wstrb;
  input bit s_axihub_wvalid;
  output wire s_axihub_wready;
  output wire s_axihub_bvalid;
  input bit s_axihub_bready;
  output wire [1 : 0] s_axihub_bresp;
  input bit [7 : 0] s_axihub_araddr;
  input bit s_axihub_arvalid;
  output wire s_axihub_arready;
  output wire [31 : 0] s_axihub_rdata;
  output wire [1 : 0] s_axihub_rresp;
  output wire s_axihub_rvalid;
  input bit s_axihub_rready;
  input bit [31 : 0] s_aximm_awaddr;
  input bit s_aximm_awvalid;
  output wire s_aximm_awready;
  input bit [7 : 0] s_aximm_awlen;
  input bit [2 : 0] s_aximm_awsize;
  input bit [1 : 0] s_aximm_awburst;
  input bit [15 : 0] s_aximm_awid;
  input bit [31 : 0] s_aximm_wdata;
  input bit [3 : 0] s_aximm_wstrb;
  input bit s_aximm_wvalid;
  output wire s_aximm_wready;
  output wire s_aximm_bvalid;
  input bit s_aximm_bready;
  input bit s_aximm_wlast;
  output wire s_aximm_rlast;
  output wire [1 : 0] s_aximm_bresp;
  output wire [15 : 0] s_aximm_bid;
  input bit [31 : 0] s_aximm_araddr;
  input bit s_aximm_arvalid;
  output wire s_aximm_arready;
  input bit [7 : 0] s_aximm_arlen;
  input bit [2 : 0] s_aximm_arsize;
  input bit [1 : 0] s_aximm_arburst;
  input bit [15 : 0] s_aximm_arid;
  output wire [31 : 0] s_aximm_rdata;
  output wire [15 : 0] s_aximm_rid;
  output wire [1 : 0] s_aximm_rresp;
  output wire s_aximm_rvalid;
  input bit s_aximm_rready;
endmodule
`endif
