// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module image_thresholding_kernel01_image_thresholding_kernel01_Pipeline_VITIS_LOOP_26_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_gmem0_AWVALID,
        m_axi_gmem0_AWREADY,
        m_axi_gmem0_AWADDR,
        m_axi_gmem0_AWID,
        m_axi_gmem0_AWLEN,
        m_axi_gmem0_AWSIZE,
        m_axi_gmem0_AWBURST,
        m_axi_gmem0_AWLOCK,
        m_axi_gmem0_AWCACHE,
        m_axi_gmem0_AWPROT,
        m_axi_gmem0_AWQOS,
        m_axi_gmem0_AWREGION,
        m_axi_gmem0_AWUSER,
        m_axi_gmem0_WVALID,
        m_axi_gmem0_WREADY,
        m_axi_gmem0_WDATA,
        m_axi_gmem0_WSTRB,
        m_axi_gmem0_WLAST,
        m_axi_gmem0_WID,
        m_axi_gmem0_WUSER,
        m_axi_gmem0_ARVALID,
        m_axi_gmem0_ARREADY,
        m_axi_gmem0_ARADDR,
        m_axi_gmem0_ARID,
        m_axi_gmem0_ARLEN,
        m_axi_gmem0_ARSIZE,
        m_axi_gmem0_ARBURST,
        m_axi_gmem0_ARLOCK,
        m_axi_gmem0_ARCACHE,
        m_axi_gmem0_ARPROT,
        m_axi_gmem0_ARQOS,
        m_axi_gmem0_ARREGION,
        m_axi_gmem0_ARUSER,
        m_axi_gmem0_RVALID,
        m_axi_gmem0_RREADY,
        m_axi_gmem0_RDATA,
        m_axi_gmem0_RLAST,
        m_axi_gmem0_RID,
        m_axi_gmem0_RFIFONUM,
        m_axi_gmem0_RUSER,
        m_axi_gmem0_RRESP,
        m_axi_gmem0_BVALID,
        m_axi_gmem0_BREADY,
        m_axi_gmem0_BRESP,
        m_axi_gmem0_BID,
        m_axi_gmem0_BUSER,
        sext_ln26,
        threshold,
        trunc_ln1,
        outBRAM_address0,
        outBRAM_ce0,
        outBRAM_we0,
        outBRAM_d0,
        outBRAM_address1,
        outBRAM_ce1,
        outBRAM_we1,
        outBRAM_d1,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_gmem0_AWVALID;
input   m_axi_gmem0_AWREADY;
output  [63:0] m_axi_gmem0_AWADDR;
output  [0:0] m_axi_gmem0_AWID;
output  [31:0] m_axi_gmem0_AWLEN;
output  [2:0] m_axi_gmem0_AWSIZE;
output  [1:0] m_axi_gmem0_AWBURST;
output  [1:0] m_axi_gmem0_AWLOCK;
output  [3:0] m_axi_gmem0_AWCACHE;
output  [2:0] m_axi_gmem0_AWPROT;
output  [3:0] m_axi_gmem0_AWQOS;
output  [3:0] m_axi_gmem0_AWREGION;
output  [0:0] m_axi_gmem0_AWUSER;
output   m_axi_gmem0_WVALID;
input   m_axi_gmem0_WREADY;
output  [15:0] m_axi_gmem0_WDATA;
output  [1:0] m_axi_gmem0_WSTRB;
output   m_axi_gmem0_WLAST;
output  [0:0] m_axi_gmem0_WID;
output  [0:0] m_axi_gmem0_WUSER;
output   m_axi_gmem0_ARVALID;
input   m_axi_gmem0_ARREADY;
output  [63:0] m_axi_gmem0_ARADDR;
output  [0:0] m_axi_gmem0_ARID;
output  [31:0] m_axi_gmem0_ARLEN;
output  [2:0] m_axi_gmem0_ARSIZE;
output  [1:0] m_axi_gmem0_ARBURST;
output  [1:0] m_axi_gmem0_ARLOCK;
output  [3:0] m_axi_gmem0_ARCACHE;
output  [2:0] m_axi_gmem0_ARPROT;
output  [3:0] m_axi_gmem0_ARQOS;
output  [3:0] m_axi_gmem0_ARREGION;
output  [0:0] m_axi_gmem0_ARUSER;
input   m_axi_gmem0_RVALID;
output   m_axi_gmem0_RREADY;
input  [15:0] m_axi_gmem0_RDATA;
input   m_axi_gmem0_RLAST;
input  [0:0] m_axi_gmem0_RID;
input  [9:0] m_axi_gmem0_RFIFONUM;
input  [0:0] m_axi_gmem0_RUSER;
input  [1:0] m_axi_gmem0_RRESP;
input   m_axi_gmem0_BVALID;
output   m_axi_gmem0_BREADY;
input  [1:0] m_axi_gmem0_BRESP;
input  [0:0] m_axi_gmem0_BID;
input  [0:0] m_axi_gmem0_BUSER;
input  [62:0] sext_ln26;
input  [31:0] threshold;
input  [7:0] trunc_ln1;
output  [20:0] outBRAM_address0;
output   outBRAM_ce0;
output   outBRAM_we0;
output  [7:0] outBRAM_d0;
output  [20:0] outBRAM_address1;
output   outBRAM_ce1;
output   outBRAM_we1;
output  [7:0] outBRAM_d1;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_idle;
reg m_axi_gmem0_RREADY;
reg[20:0] outBRAM_address0;
reg outBRAM_ce0;
reg outBRAM_we0;
reg[7:0] outBRAM_d0;
reg[20:0] outBRAM_address1;
reg outBRAM_ce1;
reg outBRAM_we1;
reg[7:0] outBRAM_d1;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
reg   [0:0] icmp_ln26_reg_584;
reg    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state7_pp0_stage1_iter1;
reg    ap_block_pp0_stage1_subdone;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage4;
reg    ap_block_state5_pp0_stage4_iter0;
reg    ap_block_pp0_stage4_subdone;
reg    gmem0_blk_n_R;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage0;
reg   [7:0] reg_212;
reg    ap_block_pp0_stage1_11001;
reg    ap_block_state3_pp0_stage2_iter0;
reg    ap_block_pp0_stage2_11001;
reg    ap_block_state4_pp0_stage3_iter0;
reg    ap_block_pp0_stage3_11001;
reg    ap_block_pp0_stage4_11001;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state6_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [20:0] i_2_reg_564;
reg   [20:0] i_2_reg_564_pp0_iter1_reg;
wire   [0:0] icmp_ln26_fu_234_p2;
wire   [7:0] input_pixel_reg_fu_240_p1;
reg   [7:0] input_pixel_reg_reg_588;
wire   [7:0] input_pixel_reg_2_fu_258_p1;
reg   [7:0] input_pixel_reg_2_reg_593;
wire   [7:0] input_pixel_reg_4_fu_315_p1;
reg   [7:0] input_pixel_reg_4_reg_598;
wire   [7:0] input_pixel_reg_6_fu_372_p1;
reg   [7:0] input_pixel_reg_6_reg_603;
wire   [7:0] input_pixel_reg_8_fu_429_p1;
reg   [7:0] input_pixel_reg_8_reg_608;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] i_cast_fu_254_p1;
wire   [63:0] zext_ln15_fu_283_p1;
wire   [63:0] zext_ln28_fu_310_p1;
wire   [63:0] zext_ln15_1_fu_340_p1;
wire   [63:0] zext_ln28_1_fu_367_p1;
wire   [63:0] zext_ln15_2_fu_397_p1;
wire   [63:0] zext_ln28_2_fu_424_p1;
wire   [63:0] zext_ln15_3_fu_454_p1;
wire   [63:0] zext_ln28_3_fu_481_p1;
wire   [63:0] zext_ln15_4_fu_507_p1;
reg   [20:0] i_fu_86;
wire   [20:0] add_ln26_4_fu_244_p2;
wire    ap_loop_init;
reg   [20:0] ap_sig_allocacmp_i_2;
wire   [7:0] output_pixel_req_fu_270_p3;
wire   [7:0] output_pixel_req_1_fu_297_p3;
wire   [7:0] output_pixel_req_2_fu_327_p3;
wire   [7:0] output_pixel_req_3_fu_354_p3;
wire   [7:0] output_pixel_req_4_fu_384_p3;
wire   [7:0] output_pixel_req_5_fu_411_p3;
wire   [7:0] output_pixel_req_6_fu_441_p3;
wire   [7:0] output_pixel_req_7_fu_468_p3;
wire   [7:0] output_pixel_req_8_fu_494_p3;
wire   [7:0] output_pixel_req_9_fu_521_p3;
wire   [31:0] zext_ln29_fu_262_p1;
wire   [0:0] icmp_ln29_fu_265_p2;
wire   [20:0] or_ln26_fu_278_p2;
wire   [31:0] zext_ln29_1_fu_288_p1;
wire   [0:0] icmp_ln29_1_fu_292_p2;
wire   [20:0] add_ln28_fu_305_p2;
wire   [31:0] zext_ln29_2_fu_319_p1;
wire   [0:0] icmp_ln29_2_fu_322_p2;
wire   [20:0] add_ln26_fu_335_p2;
wire   [31:0] zext_ln29_3_fu_345_p1;
wire   [0:0] icmp_ln29_3_fu_349_p2;
wire   [20:0] add_ln28_1_fu_362_p2;
wire   [31:0] zext_ln29_4_fu_376_p1;
wire   [0:0] icmp_ln29_4_fu_379_p2;
wire   [20:0] add_ln26_1_fu_392_p2;
wire   [31:0] zext_ln29_5_fu_402_p1;
wire   [0:0] icmp_ln29_5_fu_406_p2;
wire   [20:0] add_ln28_2_fu_419_p2;
wire   [31:0] zext_ln29_6_fu_433_p1;
wire   [0:0] icmp_ln29_6_fu_436_p2;
wire   [20:0] add_ln26_2_fu_449_p2;
wire   [31:0] zext_ln29_7_fu_459_p1;
wire   [0:0] icmp_ln29_7_fu_463_p2;
wire   [20:0] add_ln28_3_fu_476_p2;
wire   [31:0] zext_ln29_8_fu_486_p1;
wire   [0:0] icmp_ln29_8_fu_489_p2;
wire   [20:0] add_ln26_3_fu_502_p2;
wire   [31:0] zext_ln29_9_fu_512_p1;
wire   [0:0] icmp_ln29_9_fu_516_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
reg    ap_block_pp0_stage2_subdone;
reg    ap_block_pp0_stage3_subdone;
wire    ap_ext_blocking_cur_n;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

image_thresholding_kernel01_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_fu_86 <= 21'd0;
    end else if (((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        i_fu_86 <= add_ln26_4_fu_244_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_2_reg_564 <= ap_sig_allocacmp_i_2;
        i_2_reg_564_pp0_iter1_reg <= i_2_reg_564;
        icmp_ln26_reg_584 <= icmp_ln26_fu_234_p2;
        input_pixel_reg_8_reg_608 <= input_pixel_reg_8_fu_429_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_reg_584 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        input_pixel_reg_2_reg_593 <= input_pixel_reg_2_fu_258_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_reg_584 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        input_pixel_reg_4_reg_598 <= input_pixel_reg_4_fu_315_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_reg_584 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        input_pixel_reg_6_reg_603 <= input_pixel_reg_6_fu_372_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_reg_584 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        input_pixel_reg_reg_588 <= input_pixel_reg_fu_240_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        reg_212 <= {{m_axi_gmem0_RDATA[15:8]}};
    end
end

always @ (*) begin
    if (((icmp_ln26_reg_584 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 21'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_86;
    end
end

always @ (*) begin
    if ((((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        gmem0_blk_n_R = m_axi_gmem0_RVALID;
    end else begin
        gmem0_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        m_axi_gmem0_RREADY = 1'b1;
    end else begin
        m_axi_gmem0_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        outBRAM_address0 = zext_ln15_4_fu_507_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        outBRAM_address0 = zext_ln15_3_fu_454_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        outBRAM_address0 = zext_ln15_2_fu_397_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        outBRAM_address0 = zext_ln15_1_fu_340_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        outBRAM_address0 = zext_ln15_fu_283_p1;
    end else begin
        outBRAM_address0 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        outBRAM_address1 = zext_ln28_3_fu_481_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        outBRAM_address1 = zext_ln28_2_fu_424_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        outBRAM_address1 = zext_ln28_1_fu_367_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        outBRAM_address1 = zext_ln28_fu_310_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        outBRAM_address1 = i_cast_fu_254_p1;
    end else begin
        outBRAM_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        outBRAM_ce0 = 1'b1;
    end else begin
        outBRAM_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        outBRAM_ce1 = 1'b1;
    end else begin
        outBRAM_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        outBRAM_d0 = output_pixel_req_9_fu_521_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        outBRAM_d0 = output_pixel_req_7_fu_468_p3;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        outBRAM_d0 = output_pixel_req_5_fu_411_p3;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        outBRAM_d0 = output_pixel_req_3_fu_354_p3;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        outBRAM_d0 = output_pixel_req_1_fu_297_p3;
    end else begin
        outBRAM_d0 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        outBRAM_d1 = output_pixel_req_8_fu_494_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        outBRAM_d1 = output_pixel_req_6_fu_441_p3;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        outBRAM_d1 = output_pixel_req_4_fu_384_p3;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        outBRAM_d1 = output_pixel_req_2_fu_327_p3;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        outBRAM_d1 = output_pixel_req_fu_270_p3;
    end else begin
        outBRAM_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        outBRAM_we0 = 1'b1;
    end else begin
        outBRAM_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((icmp_ln26_reg_584 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        outBRAM_we1 = 1'b1;
    end else begin
        outBRAM_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln26_1_fu_392_p2 = (i_2_reg_564 + 21'd5);

assign add_ln26_2_fu_449_p2 = (i_2_reg_564 + 21'd7);

assign add_ln26_3_fu_502_p2 = (i_2_reg_564_pp0_iter1_reg + 21'd9);

assign add_ln26_4_fu_244_p2 = (i_2_reg_564 + 21'd10);

assign add_ln26_fu_335_p2 = (i_2_reg_564 + 21'd3);

assign add_ln28_1_fu_362_p2 = (i_2_reg_564 + 21'd4);

assign add_ln28_2_fu_419_p2 = (i_2_reg_564 + 21'd6);

assign add_ln28_3_fu_476_p2 = (i_2_reg_564_pp0_iter1_reg + 21'd8);

assign add_ln28_fu_305_p2 = (i_2_reg_564 + 21'd2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_gmem0_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_gmem0_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((icmp_ln26_reg_584 == 1'd1) & (m_axi_gmem0_RVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((icmp_ln26_reg_584 == 1'd1) & (m_axi_gmem0_RVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_11001 = ((icmp_ln26_reg_584 == 1'd1) & (m_axi_gmem0_RVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = ((icmp_ln26_reg_584 == 1'd1) & (m_axi_gmem0_RVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((icmp_ln26_reg_584 == 1'd1) & (m_axi_gmem0_RVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((icmp_ln26_reg_584 == 1'd1) & (m_axi_gmem0_RVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage4_11001 = ((icmp_ln26_reg_584 == 1'd1) & (m_axi_gmem0_RVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage4_subdone = ((icmp_ln26_reg_584 == 1'd1) & (m_axi_gmem0_RVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = ((icmp_ln26_reg_584 == 1'd1) & (m_axi_gmem0_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = ((icmp_ln26_reg_584 == 1'd1) & (m_axi_gmem0_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage3_iter0 = ((icmp_ln26_reg_584 == 1'd1) & (m_axi_gmem0_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage4_iter0 = ((icmp_ln26_reg_584 == 1'd1) & (m_axi_gmem0_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_state6_pp0_stage0_iter1 = (m_axi_gmem0_RVALID == 1'b0);
end

assign ap_block_state7_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ext_blocking_cur_n = gmem0_blk_n_R;

assign ap_ext_blocking_n = (ap_ext_blocking_cur_n & 1'b1);

assign ap_int_blocking_n = (1'b1 & 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign i_cast_fu_254_p1 = i_2_reg_564;

assign icmp_ln26_fu_234_p2 = ((ap_sig_allocacmp_i_2 < 21'd2073600) ? 1'b1 : 1'b0);

assign icmp_ln29_1_fu_292_p2 = ((zext_ln29_1_fu_288_p1 > threshold) ? 1'b1 : 1'b0);

assign icmp_ln29_2_fu_322_p2 = ((zext_ln29_2_fu_319_p1 > threshold) ? 1'b1 : 1'b0);

assign icmp_ln29_3_fu_349_p2 = ((zext_ln29_3_fu_345_p1 > threshold) ? 1'b1 : 1'b0);

assign icmp_ln29_4_fu_379_p2 = ((zext_ln29_4_fu_376_p1 > threshold) ? 1'b1 : 1'b0);

assign icmp_ln29_5_fu_406_p2 = ((zext_ln29_5_fu_402_p1 > threshold) ? 1'b1 : 1'b0);

assign icmp_ln29_6_fu_436_p2 = ((zext_ln29_6_fu_433_p1 > threshold) ? 1'b1 : 1'b0);

assign icmp_ln29_7_fu_463_p2 = ((zext_ln29_7_fu_459_p1 > threshold) ? 1'b1 : 1'b0);

assign icmp_ln29_8_fu_489_p2 = ((zext_ln29_8_fu_486_p1 > threshold) ? 1'b1 : 1'b0);

assign icmp_ln29_9_fu_516_p2 = ((zext_ln29_9_fu_512_p1 > threshold) ? 1'b1 : 1'b0);

assign icmp_ln29_fu_265_p2 = ((zext_ln29_fu_262_p1 > threshold) ? 1'b1 : 1'b0);

assign input_pixel_reg_2_fu_258_p1 = m_axi_gmem0_RDATA[7:0];

assign input_pixel_reg_4_fu_315_p1 = m_axi_gmem0_RDATA[7:0];

assign input_pixel_reg_6_fu_372_p1 = m_axi_gmem0_RDATA[7:0];

assign input_pixel_reg_8_fu_429_p1 = m_axi_gmem0_RDATA[7:0];

assign input_pixel_reg_fu_240_p1 = m_axi_gmem0_RDATA[7:0];

assign m_axi_gmem0_ARADDR = 64'd0;

assign m_axi_gmem0_ARBURST = 2'd0;

assign m_axi_gmem0_ARCACHE = 4'd0;

assign m_axi_gmem0_ARID = 1'd0;

assign m_axi_gmem0_ARLEN = 32'd0;

assign m_axi_gmem0_ARLOCK = 2'd0;

assign m_axi_gmem0_ARPROT = 3'd0;

assign m_axi_gmem0_ARQOS = 4'd0;

assign m_axi_gmem0_ARREGION = 4'd0;

assign m_axi_gmem0_ARSIZE = 3'd0;

assign m_axi_gmem0_ARUSER = 1'd0;

assign m_axi_gmem0_ARVALID = 1'b0;

assign m_axi_gmem0_AWADDR = 64'd0;

assign m_axi_gmem0_AWBURST = 2'd0;

assign m_axi_gmem0_AWCACHE = 4'd0;

assign m_axi_gmem0_AWID = 1'd0;

assign m_axi_gmem0_AWLEN = 32'd0;

assign m_axi_gmem0_AWLOCK = 2'd0;

assign m_axi_gmem0_AWPROT = 3'd0;

assign m_axi_gmem0_AWQOS = 4'd0;

assign m_axi_gmem0_AWREGION = 4'd0;

assign m_axi_gmem0_AWSIZE = 3'd0;

assign m_axi_gmem0_AWUSER = 1'd0;

assign m_axi_gmem0_AWVALID = 1'b0;

assign m_axi_gmem0_BREADY = 1'b0;

assign m_axi_gmem0_WDATA = 16'd0;

assign m_axi_gmem0_WID = 1'd0;

assign m_axi_gmem0_WLAST = 1'b0;

assign m_axi_gmem0_WSTRB = 2'd0;

assign m_axi_gmem0_WUSER = 1'd0;

assign m_axi_gmem0_WVALID = 1'b0;

assign or_ln26_fu_278_p2 = (i_2_reg_564 | 21'd1);

assign output_pixel_req_1_fu_297_p3 = ((icmp_ln29_1_fu_292_p2[0:0] == 1'b1) ? trunc_ln1 : 8'd0);

assign output_pixel_req_2_fu_327_p3 = ((icmp_ln29_2_fu_322_p2[0:0] == 1'b1) ? trunc_ln1 : 8'd0);

assign output_pixel_req_3_fu_354_p3 = ((icmp_ln29_3_fu_349_p2[0:0] == 1'b1) ? trunc_ln1 : 8'd0);

assign output_pixel_req_4_fu_384_p3 = ((icmp_ln29_4_fu_379_p2[0:0] == 1'b1) ? trunc_ln1 : 8'd0);

assign output_pixel_req_5_fu_411_p3 = ((icmp_ln29_5_fu_406_p2[0:0] == 1'b1) ? trunc_ln1 : 8'd0);

assign output_pixel_req_6_fu_441_p3 = ((icmp_ln29_6_fu_436_p2[0:0] == 1'b1) ? trunc_ln1 : 8'd0);

assign output_pixel_req_7_fu_468_p3 = ((icmp_ln29_7_fu_463_p2[0:0] == 1'b1) ? trunc_ln1 : 8'd0);

assign output_pixel_req_8_fu_494_p3 = ((icmp_ln29_8_fu_489_p2[0:0] == 1'b1) ? trunc_ln1 : 8'd0);

assign output_pixel_req_9_fu_521_p3 = ((icmp_ln29_9_fu_516_p2[0:0] == 1'b1) ? trunc_ln1 : 8'd0);

assign output_pixel_req_fu_270_p3 = ((icmp_ln29_fu_265_p2[0:0] == 1'b1) ? trunc_ln1 : 8'd0);

assign zext_ln15_1_fu_340_p1 = add_ln26_fu_335_p2;

assign zext_ln15_2_fu_397_p1 = add_ln26_1_fu_392_p2;

assign zext_ln15_3_fu_454_p1 = add_ln26_2_fu_449_p2;

assign zext_ln15_4_fu_507_p1 = add_ln26_3_fu_502_p2;

assign zext_ln15_fu_283_p1 = or_ln26_fu_278_p2;

assign zext_ln28_1_fu_367_p1 = add_ln28_1_fu_362_p2;

assign zext_ln28_2_fu_424_p1 = add_ln28_2_fu_419_p2;

assign zext_ln28_3_fu_481_p1 = add_ln28_3_fu_476_p2;

assign zext_ln28_fu_310_p1 = add_ln28_fu_305_p2;

assign zext_ln29_1_fu_288_p1 = reg_212;

assign zext_ln29_2_fu_319_p1 = input_pixel_reg_2_reg_593;

assign zext_ln29_3_fu_345_p1 = reg_212;

assign zext_ln29_4_fu_376_p1 = input_pixel_reg_4_reg_598;

assign zext_ln29_5_fu_402_p1 = reg_212;

assign zext_ln29_6_fu_433_p1 = input_pixel_reg_6_reg_603;

assign zext_ln29_7_fu_459_p1 = reg_212;

assign zext_ln29_8_fu_486_p1 = input_pixel_reg_8_reg_608;

assign zext_ln29_9_fu_512_p1 = reg_212;

assign zext_ln29_fu_262_p1 = input_pixel_reg_reg_588;

endmodule //image_thresholding_kernel01_image_thresholding_kernel01_Pipeline_VITIS_LOOP_26_2
