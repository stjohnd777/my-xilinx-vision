-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fast_accel_xfMat2Array_8_0_2160_3840_1_2_1_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    imgOutput_data2_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    imgOutput_data2_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    imgOutput_data2_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    imgOutput_data2_empty_n : IN STD_LOGIC;
    imgOutput_data2_read : OUT STD_LOGIC;
    m_axi_gmem1_AWVALID : OUT STD_LOGIC;
    m_axi_gmem1_AWREADY : IN STD_LOGIC;
    m_axi_gmem1_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem1_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem1_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_WVALID : OUT STD_LOGIC;
    m_axi_gmem1_WREADY : IN STD_LOGIC;
    m_axi_gmem1_WDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_gmem1_WSTRB : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_WLAST : OUT STD_LOGIC;
    m_axi_gmem1_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_ARVALID : OUT STD_LOGIC;
    m_axi_gmem1_ARREADY : IN STD_LOGIC;
    m_axi_gmem1_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem1_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem1_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_RVALID : IN STD_LOGIC;
    m_axi_gmem1_RREADY : OUT STD_LOGIC;
    m_axi_gmem1_RDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    m_axi_gmem1_RLAST : IN STD_LOGIC;
    m_axi_gmem1_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_RFIFONUM : IN STD_LOGIC_VECTOR (10 downto 0);
    m_axi_gmem1_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_BVALID : IN STD_LOGIC;
    m_axi_gmem1_BREADY : OUT STD_LOGIC;
    m_axi_gmem1_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    dstPtr_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    dstPtr_num_data_valid : IN STD_LOGIC_VECTOR (3 downto 0);
    dstPtr_fifo_cap : IN STD_LOGIC_VECTOR (3 downto 0);
    dstPtr_empty_n : IN STD_LOGIC;
    dstPtr_read : OUT STD_LOGIC );
end;


architecture behav of fast_accel_xfMat2Array_8_0_2160_3840_1_2_1_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal dstPtr_blk_n : STD_LOGIC;
    signal dstPtr_read_reg_82 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln1558_fu_73_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln1558_reg_87 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_Mat2Axi_fu_62_imgOutput_data2_read : STD_LOGIC;
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_AWVALID : STD_LOGIC;
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_AWADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_AWID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_AWLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_AWSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_AWBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_AWLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_AWCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_AWPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_AWQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_AWREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_AWUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_WVALID : STD_LOGIC;
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_WDATA : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_WSTRB : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_WLAST : STD_LOGIC;
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_WID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_WUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_ARVALID : STD_LOGIC;
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_ARADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_ARID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_ARLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_ARSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_ARBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_ARLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_ARCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_ARPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_ARQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_ARREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_ARUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_RREADY : STD_LOGIC;
    signal grp_Mat2Axi_fu_62_m_axi_gmem1_BREADY : STD_LOGIC;
    signal grp_Mat2Axi_fu_62_ap_start : STD_LOGIC;
    signal grp_Mat2Axi_fu_62_ap_done : STD_LOGIC;
    signal grp_Mat2Axi_fu_62_ap_ready : STD_LOGIC;
    signal grp_Mat2Axi_fu_62_ap_idle : STD_LOGIC;
    signal grp_Mat2Axi_fu_62_ap_continue : STD_LOGIC;
    signal grp_Mat2Axi_fu_62_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_sync_grp_Mat2Axi_fu_62_ap_ready : STD_LOGIC;
    signal ap_sync_grp_Mat2Axi_fu_62_ap_done : STD_LOGIC;
    signal ap_block_state3_on_subcall_done : BOOLEAN;
    signal ap_sync_reg_grp_Mat2Axi_fu_62_ap_ready : STD_LOGIC := '0';
    signal ap_sync_reg_grp_Mat2Axi_fu_62_ap_done : STD_LOGIC := '0';
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fast_accel_Mat2Axi IS
    port (
        imgOutput_data2_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        imgOutput_data2_empty_n : IN STD_LOGIC;
        imgOutput_data2_read : OUT STD_LOGIC;
        m_axi_gmem1_AWVALID : OUT STD_LOGIC;
        m_axi_gmem1_AWREADY : IN STD_LOGIC;
        m_axi_gmem1_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem1_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem1_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_gmem1_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem1_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem1_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem1_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem1_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem1_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem1_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem1_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem1_WVALID : OUT STD_LOGIC;
        m_axi_gmem1_WREADY : IN STD_LOGIC;
        m_axi_gmem1_WDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
        m_axi_gmem1_WSTRB : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem1_WLAST : OUT STD_LOGIC;
        m_axi_gmem1_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem1_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem1_ARVALID : OUT STD_LOGIC;
        m_axi_gmem1_ARREADY : IN STD_LOGIC;
        m_axi_gmem1_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem1_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem1_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_gmem1_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem1_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem1_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem1_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem1_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem1_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem1_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem1_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem1_RVALID : IN STD_LOGIC;
        m_axi_gmem1_RREADY : OUT STD_LOGIC;
        m_axi_gmem1_RDATA : IN STD_LOGIC_VECTOR (7 downto 0);
        m_axi_gmem1_RLAST : IN STD_LOGIC;
        m_axi_gmem1_RID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem1_RFIFONUM : IN STD_LOGIC_VECTOR (10 downto 0);
        m_axi_gmem1_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem1_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem1_BVALID : IN STD_LOGIC;
        m_axi_gmem1_BREADY : OUT STD_LOGIC;
        m_axi_gmem1_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem1_BID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem1_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        dout : IN STD_LOGIC_VECTOR (63 downto 0);
        rows : IN STD_LOGIC_VECTOR (15 downto 0);
        cols : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        dout_ap_vld : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        rows_ap_vld : IN STD_LOGIC;
        cols_ap_vld : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;



begin
    grp_Mat2Axi_fu_62 : component fast_accel_Mat2Axi
    port map (
        imgOutput_data2_dout => imgOutput_data2_dout,
        imgOutput_data2_empty_n => imgOutput_data2_empty_n,
        imgOutput_data2_read => grp_Mat2Axi_fu_62_imgOutput_data2_read,
        m_axi_gmem1_AWVALID => grp_Mat2Axi_fu_62_m_axi_gmem1_AWVALID,
        m_axi_gmem1_AWREADY => m_axi_gmem1_AWREADY,
        m_axi_gmem1_AWADDR => grp_Mat2Axi_fu_62_m_axi_gmem1_AWADDR,
        m_axi_gmem1_AWID => grp_Mat2Axi_fu_62_m_axi_gmem1_AWID,
        m_axi_gmem1_AWLEN => grp_Mat2Axi_fu_62_m_axi_gmem1_AWLEN,
        m_axi_gmem1_AWSIZE => grp_Mat2Axi_fu_62_m_axi_gmem1_AWSIZE,
        m_axi_gmem1_AWBURST => grp_Mat2Axi_fu_62_m_axi_gmem1_AWBURST,
        m_axi_gmem1_AWLOCK => grp_Mat2Axi_fu_62_m_axi_gmem1_AWLOCK,
        m_axi_gmem1_AWCACHE => grp_Mat2Axi_fu_62_m_axi_gmem1_AWCACHE,
        m_axi_gmem1_AWPROT => grp_Mat2Axi_fu_62_m_axi_gmem1_AWPROT,
        m_axi_gmem1_AWQOS => grp_Mat2Axi_fu_62_m_axi_gmem1_AWQOS,
        m_axi_gmem1_AWREGION => grp_Mat2Axi_fu_62_m_axi_gmem1_AWREGION,
        m_axi_gmem1_AWUSER => grp_Mat2Axi_fu_62_m_axi_gmem1_AWUSER,
        m_axi_gmem1_WVALID => grp_Mat2Axi_fu_62_m_axi_gmem1_WVALID,
        m_axi_gmem1_WREADY => m_axi_gmem1_WREADY,
        m_axi_gmem1_WDATA => grp_Mat2Axi_fu_62_m_axi_gmem1_WDATA,
        m_axi_gmem1_WSTRB => grp_Mat2Axi_fu_62_m_axi_gmem1_WSTRB,
        m_axi_gmem1_WLAST => grp_Mat2Axi_fu_62_m_axi_gmem1_WLAST,
        m_axi_gmem1_WID => grp_Mat2Axi_fu_62_m_axi_gmem1_WID,
        m_axi_gmem1_WUSER => grp_Mat2Axi_fu_62_m_axi_gmem1_WUSER,
        m_axi_gmem1_ARVALID => grp_Mat2Axi_fu_62_m_axi_gmem1_ARVALID,
        m_axi_gmem1_ARREADY => ap_const_logic_0,
        m_axi_gmem1_ARADDR => grp_Mat2Axi_fu_62_m_axi_gmem1_ARADDR,
        m_axi_gmem1_ARID => grp_Mat2Axi_fu_62_m_axi_gmem1_ARID,
        m_axi_gmem1_ARLEN => grp_Mat2Axi_fu_62_m_axi_gmem1_ARLEN,
        m_axi_gmem1_ARSIZE => grp_Mat2Axi_fu_62_m_axi_gmem1_ARSIZE,
        m_axi_gmem1_ARBURST => grp_Mat2Axi_fu_62_m_axi_gmem1_ARBURST,
        m_axi_gmem1_ARLOCK => grp_Mat2Axi_fu_62_m_axi_gmem1_ARLOCK,
        m_axi_gmem1_ARCACHE => grp_Mat2Axi_fu_62_m_axi_gmem1_ARCACHE,
        m_axi_gmem1_ARPROT => grp_Mat2Axi_fu_62_m_axi_gmem1_ARPROT,
        m_axi_gmem1_ARQOS => grp_Mat2Axi_fu_62_m_axi_gmem1_ARQOS,
        m_axi_gmem1_ARREGION => grp_Mat2Axi_fu_62_m_axi_gmem1_ARREGION,
        m_axi_gmem1_ARUSER => grp_Mat2Axi_fu_62_m_axi_gmem1_ARUSER,
        m_axi_gmem1_RVALID => ap_const_logic_0,
        m_axi_gmem1_RREADY => grp_Mat2Axi_fu_62_m_axi_gmem1_RREADY,
        m_axi_gmem1_RDATA => ap_const_lv8_0,
        m_axi_gmem1_RLAST => ap_const_logic_0,
        m_axi_gmem1_RID => ap_const_lv1_0,
        m_axi_gmem1_RFIFONUM => ap_const_lv11_0,
        m_axi_gmem1_RUSER => ap_const_lv1_0,
        m_axi_gmem1_RRESP => ap_const_lv2_0,
        m_axi_gmem1_BVALID => m_axi_gmem1_BVALID,
        m_axi_gmem1_BREADY => grp_Mat2Axi_fu_62_m_axi_gmem1_BREADY,
        m_axi_gmem1_BRESP => m_axi_gmem1_BRESP,
        m_axi_gmem1_BID => m_axi_gmem1_BID,
        m_axi_gmem1_BUSER => m_axi_gmem1_BUSER,
        dout => dstPtr_read_reg_82,
        rows => trunc_ln1558_reg_87,
        cols => p_read1,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        dout_ap_vld => ap_const_logic_1,
        ap_start => grp_Mat2Axi_fu_62_ap_start,
        rows_ap_vld => ap_const_logic_1,
        cols_ap_vld => ap_const_logic_1,
        ap_done => grp_Mat2Axi_fu_62_ap_done,
        ap_ready => grp_Mat2Axi_fu_62_ap_ready,
        ap_idle => grp_Mat2Axi_fu_62_ap_idle,
        ap_continue => grp_Mat2Axi_fu_62_ap_continue);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_on_subcall_done))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_grp_Mat2Axi_fu_62_ap_done_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_grp_Mat2Axi_fu_62_ap_done <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_on_subcall_done))) then 
                    ap_sync_reg_grp_Mat2Axi_fu_62_ap_done <= ap_const_logic_0;
                elsif ((grp_Mat2Axi_fu_62_ap_done = ap_const_logic_1)) then 
                    ap_sync_reg_grp_Mat2Axi_fu_62_ap_done <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_grp_Mat2Axi_fu_62_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_grp_Mat2Axi_fu_62_ap_ready <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_on_subcall_done))) then 
                    ap_sync_reg_grp_Mat2Axi_fu_62_ap_ready <= ap_const_logic_0;
                elsif ((grp_Mat2Axi_fu_62_ap_ready = ap_const_logic_1)) then 
                    ap_sync_reg_grp_Mat2Axi_fu_62_ap_ready <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_Mat2Axi_fu_62_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_Mat2Axi_fu_62_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_sync_grp_Mat2Axi_fu_62_ap_ready = ap_const_logic_0)))) then 
                    grp_Mat2Axi_fu_62_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_Mat2Axi_fu_62_ap_ready = ap_const_logic_1)) then 
                    grp_Mat2Axi_fu_62_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                dstPtr_read_reg_82 <= dstPtr_dout;
                trunc_ln1558_reg_87 <= trunc_ln1558_fu_73_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, dstPtr_empty_n, ap_CS_fsm_state3, ap_block_state3_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((dstPtr_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg, dstPtr_empty_n)
    begin
        if (((dstPtr_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(ap_block_state3_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state3_on_subcall_done)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, dstPtr_empty_n)
    begin
                ap_block_state1 <= ((dstPtr_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state3_on_subcall_done_assign_proc : process(ap_sync_grp_Mat2Axi_fu_62_ap_ready, ap_sync_grp_Mat2Axi_fu_62_ap_done)
    begin
                ap_block_state3_on_subcall_done <= ((ap_sync_grp_Mat2Axi_fu_62_ap_ready and ap_sync_grp_Mat2Axi_fu_62_ap_done) = ap_const_logic_0);
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state3, ap_block_state3_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_on_subcall_done))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state3, ap_block_state3_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_on_subcall_done))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_sync_grp_Mat2Axi_fu_62_ap_done <= (grp_Mat2Axi_fu_62_ap_done or ap_sync_reg_grp_Mat2Axi_fu_62_ap_done);
    ap_sync_grp_Mat2Axi_fu_62_ap_ready <= (grp_Mat2Axi_fu_62_ap_ready or ap_sync_reg_grp_Mat2Axi_fu_62_ap_ready);

    dstPtr_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, dstPtr_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            dstPtr_blk_n <= dstPtr_empty_n;
        else 
            dstPtr_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    dstPtr_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, dstPtr_empty_n)
    begin
        if ((not(((dstPtr_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            dstPtr_read <= ap_const_logic_1;
        else 
            dstPtr_read <= ap_const_logic_0;
        end if; 
    end process;


    grp_Mat2Axi_fu_62_ap_continue_assign_proc : process(ap_CS_fsm_state3, ap_block_state3_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_on_subcall_done))) then 
            grp_Mat2Axi_fu_62_ap_continue <= ap_const_logic_1;
        else 
            grp_Mat2Axi_fu_62_ap_continue <= ap_const_logic_0;
        end if; 
    end process;

    grp_Mat2Axi_fu_62_ap_start <= grp_Mat2Axi_fu_62_ap_start_reg;

    imgOutput_data2_read_assign_proc : process(grp_Mat2Axi_fu_62_imgOutput_data2_read, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            imgOutput_data2_read <= grp_Mat2Axi_fu_62_imgOutput_data2_read;
        else 
            imgOutput_data2_read <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem1_ARADDR <= ap_const_lv64_0;
    m_axi_gmem1_ARBURST <= ap_const_lv2_0;
    m_axi_gmem1_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem1_ARID <= ap_const_lv1_0;
    m_axi_gmem1_ARLEN <= ap_const_lv32_0;
    m_axi_gmem1_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem1_ARPROT <= ap_const_lv3_0;
    m_axi_gmem1_ARQOS <= ap_const_lv4_0;
    m_axi_gmem1_ARREGION <= ap_const_lv4_0;
    m_axi_gmem1_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem1_ARUSER <= ap_const_lv1_0;
    m_axi_gmem1_ARVALID <= ap_const_logic_0;
    m_axi_gmem1_AWADDR <= grp_Mat2Axi_fu_62_m_axi_gmem1_AWADDR;
    m_axi_gmem1_AWBURST <= grp_Mat2Axi_fu_62_m_axi_gmem1_AWBURST;
    m_axi_gmem1_AWCACHE <= grp_Mat2Axi_fu_62_m_axi_gmem1_AWCACHE;
    m_axi_gmem1_AWID <= grp_Mat2Axi_fu_62_m_axi_gmem1_AWID;
    m_axi_gmem1_AWLEN <= grp_Mat2Axi_fu_62_m_axi_gmem1_AWLEN;
    m_axi_gmem1_AWLOCK <= grp_Mat2Axi_fu_62_m_axi_gmem1_AWLOCK;
    m_axi_gmem1_AWPROT <= grp_Mat2Axi_fu_62_m_axi_gmem1_AWPROT;
    m_axi_gmem1_AWQOS <= grp_Mat2Axi_fu_62_m_axi_gmem1_AWQOS;
    m_axi_gmem1_AWREGION <= grp_Mat2Axi_fu_62_m_axi_gmem1_AWREGION;
    m_axi_gmem1_AWSIZE <= grp_Mat2Axi_fu_62_m_axi_gmem1_AWSIZE;
    m_axi_gmem1_AWUSER <= grp_Mat2Axi_fu_62_m_axi_gmem1_AWUSER;

    m_axi_gmem1_AWVALID_assign_proc : process(grp_Mat2Axi_fu_62_m_axi_gmem1_AWVALID, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem1_AWVALID <= grp_Mat2Axi_fu_62_m_axi_gmem1_AWVALID;
        else 
            m_axi_gmem1_AWVALID <= ap_const_logic_0;
        end if; 
    end process;


    m_axi_gmem1_BREADY_assign_proc : process(grp_Mat2Axi_fu_62_m_axi_gmem1_BREADY, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem1_BREADY <= grp_Mat2Axi_fu_62_m_axi_gmem1_BREADY;
        else 
            m_axi_gmem1_BREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem1_RREADY <= ap_const_logic_0;
    m_axi_gmem1_WDATA <= grp_Mat2Axi_fu_62_m_axi_gmem1_WDATA;
    m_axi_gmem1_WID <= grp_Mat2Axi_fu_62_m_axi_gmem1_WID;
    m_axi_gmem1_WLAST <= grp_Mat2Axi_fu_62_m_axi_gmem1_WLAST;
    m_axi_gmem1_WSTRB <= grp_Mat2Axi_fu_62_m_axi_gmem1_WSTRB;
    m_axi_gmem1_WUSER <= grp_Mat2Axi_fu_62_m_axi_gmem1_WUSER;

    m_axi_gmem1_WVALID_assign_proc : process(grp_Mat2Axi_fu_62_m_axi_gmem1_WVALID, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem1_WVALID <= grp_Mat2Axi_fu_62_m_axi_gmem1_WVALID;
        else 
            m_axi_gmem1_WVALID <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln1558_fu_73_p1 <= p_read(16 - 1 downto 0);
end behav;