-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity canny_accel_xFSobel3x3_Pipeline_VITIS_LOOP_456_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    row_ind_V_4_out : OUT STD_LOGIC_VECTOR (12 downto 0);
    row_ind_V_4_out_ap_vld : OUT STD_LOGIC;
    row_ind_V_3_out : OUT STD_LOGIC_VECTOR (12 downto 0);
    row_ind_V_3_out_ap_vld : OUT STD_LOGIC;
    row_ind_V_out : OUT STD_LOGIC_VECTOR (12 downto 0);
    row_ind_V_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of canny_accel_xFSobel3x3_Pipeline_VITIS_LOOP_456_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln1027_fu_77_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal row_ind_V_5_fu_32 : STD_LOGIC_VECTOR (1 downto 0);
    signal init_row_ind_fu_83_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_row_ind_V_7 : STD_LOGIC_VECTOR (1 downto 0);
    signal row_ind_V_7_load_fu_74_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal row_ind_V_fu_36 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln214_fu_89_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal row_ind_V_3_fu_40 : STD_LOGIC_VECTOR (12 downto 0);
    signal row_ind_V_4_fu_44 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component canny_accel_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component canny_accel_flow_control_loop_pipe_sequential_init
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
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    row_ind_V_5_fu_32_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if ((icmp_ln1027_fu_77_p2 = ap_const_lv1_0)) then 
                    row_ind_V_5_fu_32 <= init_row_ind_fu_83_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    row_ind_V_5_fu_32 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((row_ind_V_7_load_fu_74_p1 = ap_const_lv2_1) and (icmp_ln1027_fu_77_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                    row_ind_V_3_fu_40(1 downto 0) <= zext_ln214_fu_89_p1(1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((row_ind_V_7_load_fu_74_p1 = ap_const_lv2_1)) and not((row_ind_V_7_load_fu_74_p1 = ap_const_lv2_0)) and (icmp_ln1027_fu_77_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                    row_ind_V_4_fu_44(1 downto 0) <= zext_ln214_fu_89_p1(1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((row_ind_V_7_load_fu_74_p1 = ap_const_lv2_0) and (icmp_ln1027_fu_77_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                    row_ind_V_fu_36(1 downto 0) <= zext_ln214_fu_89_p1(1 downto 0);
            end if;
        end if;
    end process;
    row_ind_V_fu_36(12 downto 2) <= "00000000000";
    row_ind_V_3_fu_40(12 downto 2) <= "00000000000";
    row_ind_V_4_fu_44(12 downto 2) <= "00000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln1027_fu_77_p2, ap_start_int)
    begin
        if (((icmp_ln1027_fu_77_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_row_ind_V_7_assign_proc : process(ap_CS_fsm_state1, row_ind_V_5_fu_32, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_row_ind_V_7 <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_row_ind_V_7 <= row_ind_V_5_fu_32;
        end if; 
    end process;

    icmp_ln1027_fu_77_p2 <= "1" when (ap_sig_allocacmp_row_ind_V_7 = ap_const_lv2_3) else "0";
    init_row_ind_fu_83_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_row_ind_V_7) + unsigned(ap_const_lv2_1));
    row_ind_V_3_out <= row_ind_V_3_fu_40;

    row_ind_V_3_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln1027_fu_77_p2, ap_start_int)
    begin
        if (((icmp_ln1027_fu_77_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            row_ind_V_3_out_ap_vld <= ap_const_logic_1;
        else 
            row_ind_V_3_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    row_ind_V_4_out <= row_ind_V_4_fu_44;

    row_ind_V_4_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln1027_fu_77_p2, ap_start_int)
    begin
        if (((icmp_ln1027_fu_77_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            row_ind_V_4_out_ap_vld <= ap_const_logic_1;
        else 
            row_ind_V_4_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    row_ind_V_7_load_fu_74_p1 <= ap_sig_allocacmp_row_ind_V_7;
    row_ind_V_out <= row_ind_V_fu_36;

    row_ind_V_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln1027_fu_77_p2, ap_start_int)
    begin
        if (((icmp_ln1027_fu_77_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            row_ind_V_out_ap_vld <= ap_const_logic_1;
        else 
            row_ind_V_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln214_fu_89_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_row_ind_V_7),13));
end behav;
