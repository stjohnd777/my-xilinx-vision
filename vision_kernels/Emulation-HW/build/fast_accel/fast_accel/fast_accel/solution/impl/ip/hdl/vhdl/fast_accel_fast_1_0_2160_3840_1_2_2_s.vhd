-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fast_accel_fast_1_0_2160_3840_1_2_2_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_src_mat_rows_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_src_mat_rows_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    p_src_mat_rows_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    p_src_mat_rows_empty_n : IN STD_LOGIC;
    p_src_mat_rows_read : OUT STD_LOGIC;
    p_src_mat_cols_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_src_mat_cols_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    p_src_mat_cols_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    p_src_mat_cols_empty_n : IN STD_LOGIC;
    p_src_mat_cols_read : OUT STD_LOGIC;
    imgInput_data1_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    imgInput_data1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    imgInput_data1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    imgInput_data1_empty_n : IN STD_LOGIC;
    imgInput_data1_read : OUT STD_LOGIC;
    imgOutput_data2_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    imgOutput_data2_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    imgOutput_data2_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    imgOutput_data2_full_n : IN STD_LOGIC;
    imgOutput_data2_write : OUT STD_LOGIC;
    p_threshold_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    p_threshold_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    p_threshold_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    p_threshold_empty_n : IN STD_LOGIC;
    p_threshold_read : OUT STD_LOGIC;
    ap_ext_blocking_n : OUT STD_LOGIC;
    ap_str_blocking_n : OUT STD_LOGIC;
    ap_int_blocking_n : OUT STD_LOGIC );
end;


architecture behav of fast_accel_fast_1_0_2160_3840_1_2_2_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_src_mat_rows_blk_n : STD_LOGIC;
    signal p_src_mat_cols_blk_n : STD_LOGIC;
    signal p_threshold_blk_n : STD_LOGIC;
    signal p_threshold_read_reg_76 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln999_fu_66_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln999_reg_81 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln999_1_fu_71_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln999_1_reg_86 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgInput_data1_read : STD_LOGIC;
    signal grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_write : STD_LOGIC;
    signal grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start : STD_LOGIC;
    signal grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done : STD_LOGIC;
    signal grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready : STD_LOGIC;
    signal grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_idle : STD_LOGIC;
    signal grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_continue : STD_LOGIC;
    signal grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ext_blocking_n : STD_LOGIC;
    signal grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_str_blocking_n : STD_LOGIC;
    signal grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_int_blocking_n : STD_LOGIC;
    signal grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_state1_ignore_call10 : BOOLEAN;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready : STD_LOGIC;
    signal ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done : STD_LOGIC;
    signal ap_block_state2_on_subcall_done : BOOLEAN;
    signal ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready : STD_LOGIC := '0';
    signal ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done : STD_LOGIC := '0';
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_int_blocking_cur_n : STD_LOGIC;
    signal ap_ext_blocking_sub_n : STD_LOGIC;
    signal ap_wait_0 : STD_LOGIC;
    signal ap_sub_ext_blocking_0 : STD_LOGIC;
    signal ap_str_blocking_sub_n : STD_LOGIC;
    signal ap_sub_str_blocking_0 : STD_LOGIC;
    signal ap_int_blocking_sub_n : STD_LOGIC;
    signal ap_sub_int_blocking_0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fast_accel_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s IS
    port (
        imgInput_data1_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        imgInput_data1_empty_n : IN STD_LOGIC;
        imgInput_data1_read : OUT STD_LOGIC;
        imgOutput_data2_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        imgOutput_data2_full_n : IN STD_LOGIC;
        imgOutput_data2_write : OUT STD_LOGIC;
        p_image_height : IN STD_LOGIC_VECTOR (15 downto 0);
        p_image_width : IN STD_LOGIC_VECTOR (15 downto 0);
        p_threshold : IN STD_LOGIC_VECTOR (7 downto 0);
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        p_image_height_ap_vld : IN STD_LOGIC;
        p_image_width_ap_vld : IN STD_LOGIC;
        p_threshold_ap_vld : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_ext_blocking_n : OUT STD_LOGIC;
        ap_str_blocking_n : OUT STD_LOGIC;
        ap_int_blocking_n : OUT STD_LOGIC );
    end component;



begin
    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54 : component fast_accel_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s
    port map (
        imgInput_data1_dout => imgInput_data1_dout,
        imgInput_data1_empty_n => imgInput_data1_empty_n,
        imgInput_data1_read => grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgInput_data1_read,
        imgOutput_data2_din => grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_din,
        imgOutput_data2_full_n => imgOutput_data2_full_n,
        imgOutput_data2_write => grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_write,
        p_image_height => trunc_ln999_reg_81,
        p_image_width => trunc_ln999_1_reg_86,
        p_threshold => p_threshold_read_reg_76,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        p_image_height_ap_vld => ap_const_logic_1,
        p_image_width_ap_vld => ap_const_logic_1,
        p_threshold_ap_vld => ap_const_logic_1,
        ap_start => grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start,
        ap_done => grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done,
        ap_ready => grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready,
        ap_idle => grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_idle,
        ap_continue => grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_continue,
        ap_ext_blocking_n => grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ext_blocking_n,
        ap_str_blocking_n => grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_str_blocking_n,
        ap_int_blocking_n => grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_int_blocking_n);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
                    ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done <= ap_const_logic_0;
                elsif ((grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done = ap_const_logic_1)) then 
                    ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
                    ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready <= ap_const_logic_0;
                elsif ((grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready = ap_const_logic_1)) then 
                    ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start_reg <= ap_const_logic_0;
            else
                if (((not(((ap_start = ap_const_logic_0) or (p_threshold_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready = ap_const_logic_0)))) then 
                    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready = ap_const_logic_1)) then 
                    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                p_threshold_read_reg_76 <= p_threshold_dout;
                trunc_ln999_1_reg_86 <= trunc_ln999_1_fu_71_p1;
                trunc_ln999_reg_81 <= trunc_ln999_fu_66_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, p_src_mat_rows_empty_n, p_src_mat_cols_empty_n, p_threshold_empty_n, ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (p_threshold_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg, p_src_mat_rows_empty_n, p_src_mat_cols_empty_n, p_threshold_empty_n)
    begin
        if (((ap_start = ap_const_logic_0) or (p_threshold_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(ap_block_state2_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state2_on_subcall_done)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, p_src_mat_rows_empty_n, p_src_mat_cols_empty_n, p_threshold_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (p_threshold_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state1_ignore_call10_assign_proc : process(ap_start, ap_done_reg, p_src_mat_rows_empty_n, p_src_mat_cols_empty_n, p_threshold_empty_n)
    begin
                ap_block_state1_ignore_call10 <= ((ap_start = ap_const_logic_0) or (p_threshold_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_on_subcall_done_assign_proc : process(ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready, ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done)
    begin
                ap_block_state2_on_subcall_done <= ((ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready and ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done) = ap_const_logic_0);
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_ext_blocking_n <= (ap_ext_blocking_sub_n and ap_const_logic_1);

    ap_ext_blocking_sub_n_assign_proc : process(ap_wait_0, ap_sub_ext_blocking_0)
    begin
        if (((ap_wait_0 and ap_sub_ext_blocking_0) = ap_const_logic_1)) then 
            ap_ext_blocking_sub_n <= ap_const_logic_0;
        else 
            ap_ext_blocking_sub_n <= ap_const_logic_1;
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

    ap_int_blocking_cur_n <= (p_threshold_blk_n and p_src_mat_rows_blk_n and p_src_mat_cols_blk_n);
    ap_int_blocking_n <= (ap_int_blocking_sub_n and ap_int_blocking_cur_n);

    ap_int_blocking_sub_n_assign_proc : process(ap_wait_0, ap_sub_int_blocking_0)
    begin
        if (((ap_wait_0 and ap_sub_int_blocking_0) = ap_const_logic_1)) then 
            ap_int_blocking_sub_n <= ap_const_logic_0;
        else 
            ap_int_blocking_sub_n <= ap_const_logic_1;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_str_blocking_n <= (ap_str_blocking_sub_n and ap_const_logic_1);

    ap_str_blocking_sub_n_assign_proc : process(ap_wait_0, ap_sub_str_blocking_0)
    begin
        if (((ap_wait_0 and ap_sub_str_blocking_0) = ap_const_logic_1)) then 
            ap_str_blocking_sub_n <= ap_const_logic_0;
        else 
            ap_str_blocking_sub_n <= ap_const_logic_1;
        end if; 
    end process;


    ap_sub_ext_blocking_0_assign_proc : process(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ext_blocking_n)
    begin
        if ((grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ext_blocking_n = ap_const_logic_0)) then 
            ap_sub_ext_blocking_0 <= ap_const_logic_1;
        else 
            ap_sub_ext_blocking_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sub_int_blocking_0_assign_proc : process(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_int_blocking_n)
    begin
        if ((grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_int_blocking_n = ap_const_logic_0)) then 
            ap_sub_int_blocking_0 <= ap_const_logic_1;
        else 
            ap_sub_int_blocking_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sub_str_blocking_0_assign_proc : process(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_str_blocking_n)
    begin
        if ((grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_str_blocking_n = ap_const_logic_0)) then 
            ap_sub_str_blocking_0 <= ap_const_logic_1;
        else 
            ap_sub_str_blocking_0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done <= (grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done or ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_done);
    ap_sync_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready <= (grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready or ap_sync_reg_grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_ready);

    ap_wait_0_assign_proc : process(ap_CS_fsm)
    begin
        if ((ap_ST_fsm_state2 = ap_CS_fsm)) then 
            ap_wait_0 <= ap_const_logic_1;
        else 
            ap_wait_0 <= ap_const_logic_0;
        end if; 
    end process;


    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_continue_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
            grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_continue <= ap_const_logic_1;
        else 
            grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_continue <= ap_const_logic_0;
        end if; 
    end process;

    grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start <= grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_ap_start_reg;

    imgInput_data1_read_assign_proc : process(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgInput_data1_read, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            imgInput_data1_read <= grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgInput_data1_read;
        else 
            imgInput_data1_read <= ap_const_logic_0;
        end if; 
    end process;

    imgOutput_data2_din <= grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_din;

    imgOutput_data2_write_assign_proc : process(grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_write, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            imgOutput_data2_write <= grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54_imgOutput_data2_write;
        else 
            imgOutput_data2_write <= ap_const_logic_0;
        end if; 
    end process;


    p_src_mat_cols_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_src_mat_cols_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_mat_cols_blk_n <= p_src_mat_cols_empty_n;
        else 
            p_src_mat_cols_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_src_mat_cols_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_src_mat_rows_empty_n, p_src_mat_cols_empty_n, p_threshold_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (p_threshold_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_mat_cols_read <= ap_const_logic_1;
        else 
            p_src_mat_cols_read <= ap_const_logic_0;
        end if; 
    end process;


    p_src_mat_rows_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_src_mat_rows_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_mat_rows_blk_n <= p_src_mat_rows_empty_n;
        else 
            p_src_mat_rows_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_src_mat_rows_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_src_mat_rows_empty_n, p_src_mat_cols_empty_n, p_threshold_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (p_threshold_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_mat_rows_read <= ap_const_logic_1;
        else 
            p_src_mat_rows_read <= ap_const_logic_0;
        end if; 
    end process;


    p_threshold_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_threshold_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_threshold_blk_n <= p_threshold_empty_n;
        else 
            p_threshold_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_threshold_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_src_mat_rows_empty_n, p_src_mat_cols_empty_n, p_threshold_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (p_threshold_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_threshold_read <= ap_const_logic_1;
        else 
            p_threshold_read <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln999_1_fu_71_p1 <= p_src_mat_cols_dout(16 - 1 downto 0);
    trunc_ln999_fu_66_p1 <= p_src_mat_rows_dout(16 - 1 downto 0);
end behav;
