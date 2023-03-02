-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity remap_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ldata1_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    ldata1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    ldata1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    ldata1_empty_n : IN STD_LOGIC;
    ldata1_read : OUT STD_LOGIC;
    m_axi_gmem3_AWVALID : OUT STD_LOGIC;
    m_axi_gmem3_AWREADY : IN STD_LOGIC;
    m_axi_gmem3_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem3_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem3_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem3_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem3_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem3_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem3_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem3_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem3_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem3_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_WVALID : OUT STD_LOGIC;
    m_axi_gmem3_WREADY : IN STD_LOGIC;
    m_axi_gmem3_WDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_gmem3_WSTRB : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_WLAST : OUT STD_LOGIC;
    m_axi_gmem3_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_ARVALID : OUT STD_LOGIC;
    m_axi_gmem3_ARREADY : IN STD_LOGIC;
    m_axi_gmem3_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem3_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem3_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem3_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem3_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem3_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem3_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem3_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem3_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem3_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_RVALID : IN STD_LOGIC;
    m_axi_gmem3_RREADY : OUT STD_LOGIC;
    m_axi_gmem3_RDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    m_axi_gmem3_RLAST : IN STD_LOGIC;
    m_axi_gmem3_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_RFIFONUM : IN STD_LOGIC_VECTOR (10 downto 0);
    m_axi_gmem3_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem3_BVALID : IN STD_LOGIC;
    m_axi_gmem3_BREADY : OUT STD_LOGIC;
    m_axi_gmem3_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem3_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    dout_load : IN STD_LOGIC_VECTOR (63 downto 0);
    p_read : IN STD_LOGIC_VECTOR (21 downto 0) );
end;


architecture behav of remap_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv22_0 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000000";
    constant ap_const_lv22_1 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1027_fu_102_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal gmem3_blk_n_W : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ldata1_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ldata1_read_reg_135 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal i_V_fu_58 : STD_LOGIC_VECTOR (21 downto 0);
    signal add_ln840_fu_108_p2 : STD_LOGIC_VECTOR (21 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_V_1 : STD_LOGIC_VECTOR (21 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component remap_accel_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component remap_accel_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    i_V_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln1027_fu_102_p2 = ap_const_lv1_0))) then 
                    i_V_fu_58 <= add_ln840_fu_108_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_V_fu_58 <= ap_const_lv22_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ldata1_read_reg_135 <= ldata1_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln840_fu_108_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_V_1) + unsigned(ap_const_lv22_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, ldata1_empty_n)
    begin
                ap_block_pp0_stage0_01001 <= ((ldata1_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ldata1_empty_n, m_axi_gmem3_WREADY)
    begin
                ap_block_pp0_stage0_11001 <= (((m_axi_gmem3_WREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ldata1_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ldata1_empty_n, m_axi_gmem3_WREADY)
    begin
                ap_block_pp0_stage0_subdone <= (((m_axi_gmem3_WREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ldata1_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(ldata1_empty_n)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (ldata1_empty_n = ap_const_logic_0);
    end process;

        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln1027_fu_102_p2)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln1027_fu_102_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_V_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_V_fu_58, ap_loop_init)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_i_V_1 <= ap_const_lv22_0;
        else 
            ap_sig_allocacmp_i_V_1 <= i_V_fu_58;
        end if; 
    end process;


    gmem3_blk_n_W_assign_proc : process(ap_enable_reg_pp0_iter2, m_axi_gmem3_WREADY, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            gmem3_blk_n_W <= m_axi_gmem3_WREADY;
        else 
            gmem3_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

    icmp_ln1027_fu_102_p2 <= "1" when (ap_sig_allocacmp_i_V_1 = p_read) else "0";

    ldata1_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ldata1_empty_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ldata1_blk_n <= ldata1_empty_n;
        else 
            ldata1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    ldata1_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            ldata1_read <= ap_const_logic_1;
        else 
            ldata1_read <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem3_ARADDR <= ap_const_lv64_0;
    m_axi_gmem3_ARBURST <= ap_const_lv2_0;
    m_axi_gmem3_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem3_ARID <= ap_const_lv1_0;
    m_axi_gmem3_ARLEN <= ap_const_lv32_0;
    m_axi_gmem3_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem3_ARPROT <= ap_const_lv3_0;
    m_axi_gmem3_ARQOS <= ap_const_lv4_0;
    m_axi_gmem3_ARREGION <= ap_const_lv4_0;
    m_axi_gmem3_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem3_ARUSER <= ap_const_lv1_0;
    m_axi_gmem3_ARVALID <= ap_const_logic_0;
    m_axi_gmem3_AWADDR <= ap_const_lv64_0;
    m_axi_gmem3_AWBURST <= ap_const_lv2_0;
    m_axi_gmem3_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem3_AWID <= ap_const_lv1_0;
    m_axi_gmem3_AWLEN <= ap_const_lv32_0;
    m_axi_gmem3_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem3_AWPROT <= ap_const_lv3_0;
    m_axi_gmem3_AWQOS <= ap_const_lv4_0;
    m_axi_gmem3_AWREGION <= ap_const_lv4_0;
    m_axi_gmem3_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem3_AWUSER <= ap_const_lv1_0;
    m_axi_gmem3_AWVALID <= ap_const_logic_0;
    m_axi_gmem3_BREADY <= ap_const_logic_0;
    m_axi_gmem3_RREADY <= ap_const_logic_0;
    m_axi_gmem3_WDATA <= ldata1_read_reg_135;
    m_axi_gmem3_WID <= ap_const_lv1_0;
    m_axi_gmem3_WLAST <= ap_const_logic_0;
    m_axi_gmem3_WSTRB <= ap_const_lv1_1;
    m_axi_gmem3_WUSER <= ap_const_lv1_0;

    m_axi_gmem3_WVALID_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            m_axi_gmem3_WVALID <= ap_const_logic_1;
        else 
            m_axi_gmem3_WVALID <= ap_const_logic_0;
        end if; 
    end process;

end behav;
