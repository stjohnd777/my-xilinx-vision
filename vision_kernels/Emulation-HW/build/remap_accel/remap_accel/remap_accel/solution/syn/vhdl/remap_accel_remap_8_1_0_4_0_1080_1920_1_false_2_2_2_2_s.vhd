-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity remap_accel_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s is
port (
    p_src_mat_rows_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_src_mat_rows_empty_n : IN STD_LOGIC;
    p_src_mat_rows_read : OUT STD_LOGIC;
    p_src_mat_cols_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_src_mat_cols_empty_n : IN STD_LOGIC;
    p_src_mat_cols_read : OUT STD_LOGIC;
    imgInput_data1_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    imgInput_data1_empty_n : IN STD_LOGIC;
    imgInput_data1_read : OUT STD_LOGIC;
    imgOutput_data4_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    imgOutput_data4_full_n : IN STD_LOGIC;
    imgOutput_data4_write : OUT STD_LOGIC;
    mapX_data2_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    mapX_data2_empty_n : IN STD_LOGIC;
    mapX_data2_read : OUT STD_LOGIC;
    mapY_data3_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    mapY_data3_empty_n : IN STD_LOGIC;
    mapY_data3_read : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_ext_blocking_n : OUT STD_LOGIC;
    ap_str_blocking_n : OUT STD_LOGIC;
    ap_int_blocking_n : OUT STD_LOGIC );
end;


architecture behav of remap_accel_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_start : STD_LOGIC;
    signal remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_done : STD_LOGIC;
    signal remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_continue : STD_LOGIC;
    signal remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_idle : STD_LOGIC;
    signal remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_ready : STD_LOGIC;
    signal remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_p_src_mat_rows_read : STD_LOGIC;
    signal remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_p_src_mat_cols_read : STD_LOGIC;
    signal remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_return_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_return_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_ext_blocking_n : STD_LOGIC;
    signal remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_str_blocking_n : STD_LOGIC;
    signal remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_int_blocking_n : STD_LOGIC;
    signal ap_channel_done_cols_loc_channel : STD_LOGIC;
    signal cols_loc_channel_full_n : STD_LOGIC;
    signal ap_sync_reg_channel_write_cols_loc_channel : STD_LOGIC := '0';
    signal ap_sync_channel_write_cols_loc_channel : STD_LOGIC;
    signal ap_channel_done_rows_loc_channel : STD_LOGIC;
    signal rows_loc_channel_full_n : STD_LOGIC;
    signal ap_sync_reg_channel_write_rows_loc_channel : STD_LOGIC := '0';
    signal ap_sync_channel_write_rows_loc_channel : STD_LOGIC;
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_start : STD_LOGIC;
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_done : STD_LOGIC;
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_continue : STD_LOGIC;
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_idle : STD_LOGIC;
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ready : STD_LOGIC;
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgInput_data1_read : STD_LOGIC;
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgOutput_data4_din : STD_LOGIC_VECTOR (7 downto 0);
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgOutput_data4_write : STD_LOGIC;
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_mapX_data2_read : STD_LOGIC;
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_mapY_data3_read : STD_LOGIC;
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ext_blocking_n : STD_LOGIC;
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_str_blocking_n : STD_LOGIC;
    signal xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_int_blocking_n : STD_LOGIC;
    signal rows_loc_channel_dout : STD_LOGIC_VECTOR (15 downto 0);
    signal rows_loc_channel_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal rows_loc_channel_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal rows_loc_channel_empty_n : STD_LOGIC;
    signal cols_loc_channel_dout : STD_LOGIC_VECTOR (15 downto 0);
    signal cols_loc_channel_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal cols_loc_channel_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal cols_loc_channel_empty_n : STD_LOGIC;
    signal ap_ext_blocking_cur_n : STD_LOGIC;
    signal ap_str_blocking_cur_n : STD_LOGIC;
    signal ap_int_blocking_cur_n : STD_LOGIC;
    signal ap_ext_blocking_sub_n : STD_LOGIC;
    signal ap_str_blocking_sub_n : STD_LOGIC;
    signal ap_int_blocking_sub_n : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component remap_accel_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc IS
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
        ap_return_0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (15 downto 0);
        ap_ext_blocking_n : OUT STD_LOGIC;
        ap_str_blocking_n : OUT STD_LOGIC;
        ap_int_blocking_n : OUT STD_LOGIC );
    end component;


    component remap_accel_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        imgInput_data1_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        imgInput_data1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        imgInput_data1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        imgInput_data1_empty_n : IN STD_LOGIC;
        imgInput_data1_read : OUT STD_LOGIC;
        imgOutput_data4_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        imgOutput_data4_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        imgOutput_data4_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        imgOutput_data4_full_n : IN STD_LOGIC;
        imgOutput_data4_write : OUT STD_LOGIC;
        mapX_data2_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        mapX_data2_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        mapX_data2_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        mapX_data2_empty_n : IN STD_LOGIC;
        mapX_data2_read : OUT STD_LOGIC;
        mapY_data3_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        mapY_data3_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        mapY_data3_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        mapY_data3_empty_n : IN STD_LOGIC;
        mapY_data3_read : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read1 : IN STD_LOGIC_VECTOR (15 downto 0);
        ap_ext_blocking_n : OUT STD_LOGIC;
        ap_str_blocking_n : OUT STD_LOGIC;
        ap_int_blocking_n : OUT STD_LOGIC );
    end component;


    component remap_accel_fifo_w16_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (15 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (15 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0 : component remap_accel_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_start,
        ap_done => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_done,
        ap_continue => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_continue,
        ap_idle => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_idle,
        ap_ready => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_ready,
        p_src_mat_rows_dout => p_src_mat_rows_dout,
        p_src_mat_rows_num_data_valid => ap_const_lv2_0,
        p_src_mat_rows_fifo_cap => ap_const_lv2_0,
        p_src_mat_rows_empty_n => p_src_mat_rows_empty_n,
        p_src_mat_rows_read => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_p_src_mat_rows_read,
        p_src_mat_cols_dout => p_src_mat_cols_dout,
        p_src_mat_cols_num_data_valid => ap_const_lv2_0,
        p_src_mat_cols_fifo_cap => ap_const_lv2_0,
        p_src_mat_cols_empty_n => p_src_mat_cols_empty_n,
        p_src_mat_cols_read => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_p_src_mat_cols_read,
        ap_return_0 => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_return_0,
        ap_return_1 => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_return_1,
        ap_ext_blocking_n => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_ext_blocking_n,
        ap_str_blocking_n => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_str_blocking_n,
        ap_int_blocking_n => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_int_blocking_n);

    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0 : component remap_accel_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_start,
        ap_done => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_done,
        ap_continue => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_continue,
        ap_idle => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_idle,
        ap_ready => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ready,
        imgInput_data1_dout => imgInput_data1_dout,
        imgInput_data1_num_data_valid => ap_const_lv2_0,
        imgInput_data1_fifo_cap => ap_const_lv2_0,
        imgInput_data1_empty_n => imgInput_data1_empty_n,
        imgInput_data1_read => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgInput_data1_read,
        imgOutput_data4_din => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgOutput_data4_din,
        imgOutput_data4_num_data_valid => ap_const_lv2_0,
        imgOutput_data4_fifo_cap => ap_const_lv2_0,
        imgOutput_data4_full_n => imgOutput_data4_full_n,
        imgOutput_data4_write => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgOutput_data4_write,
        mapX_data2_dout => mapX_data2_dout,
        mapX_data2_num_data_valid => ap_const_lv2_0,
        mapX_data2_fifo_cap => ap_const_lv2_0,
        mapX_data2_empty_n => mapX_data2_empty_n,
        mapX_data2_read => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_mapX_data2_read,
        mapY_data3_dout => mapY_data3_dout,
        mapY_data3_num_data_valid => ap_const_lv2_0,
        mapY_data3_fifo_cap => ap_const_lv2_0,
        mapY_data3_empty_n => mapY_data3_empty_n,
        mapY_data3_read => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_mapY_data3_read,
        p_read => rows_loc_channel_dout,
        p_read1 => cols_loc_channel_dout,
        ap_ext_blocking_n => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ext_blocking_n,
        ap_str_blocking_n => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_str_blocking_n,
        ap_int_blocking_n => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_int_blocking_n);

    rows_loc_channel_U : component remap_accel_fifo_w16_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_return_0,
        if_full_n => rows_loc_channel_full_n,
        if_write => ap_channel_done_rows_loc_channel,
        if_dout => rows_loc_channel_dout,
        if_num_data_valid => rows_loc_channel_num_data_valid,
        if_fifo_cap => rows_loc_channel_fifo_cap,
        if_empty_n => rows_loc_channel_empty_n,
        if_read => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ready);

    cols_loc_channel_U : component remap_accel_fifo_w16_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_return_1,
        if_full_n => cols_loc_channel_full_n,
        if_write => ap_channel_done_cols_loc_channel,
        if_dout => cols_loc_channel_dout,
        if_num_data_valid => cols_loc_channel_num_data_valid,
        if_fifo_cap => cols_loc_channel_fifo_cap,
        if_empty_n => cols_loc_channel_empty_n,
        if_read => xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ready);





    ap_sync_reg_channel_write_cols_loc_channel_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_channel_write_cols_loc_channel <= ap_const_logic_0;
            else
                if (((remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_done and remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_continue) = ap_const_logic_1)) then 
                    ap_sync_reg_channel_write_cols_loc_channel <= ap_const_logic_0;
                else 
                    ap_sync_reg_channel_write_cols_loc_channel <= ap_sync_channel_write_cols_loc_channel;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_channel_write_rows_loc_channel_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_channel_write_rows_loc_channel <= ap_const_logic_0;
            else
                if (((remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_done and remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_continue) = ap_const_logic_1)) then 
                    ap_sync_reg_channel_write_rows_loc_channel <= ap_const_logic_0;
                else 
                    ap_sync_reg_channel_write_rows_loc_channel <= ap_sync_channel_write_rows_loc_channel;
                end if; 
            end if;
        end if;
    end process;

    ap_channel_done_cols_loc_channel <= (remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_done and (ap_sync_reg_channel_write_cols_loc_channel xor ap_const_logic_1));
    ap_channel_done_rows_loc_channel <= (remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_done and (ap_sync_reg_channel_write_rows_loc_channel xor ap_const_logic_1));
    ap_done <= xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_done;
    ap_ext_blocking_cur_n <= ap_const_logic_1;
    ap_ext_blocking_n <= (ap_ext_blocking_sub_n and ap_ext_blocking_cur_n);
    ap_ext_blocking_sub_n <= (xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_ext_blocking_n and remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_ext_blocking_n);
    ap_idle <= (xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_idle and remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_idle and (cols_loc_channel_empty_n xor ap_const_logic_1) and (rows_loc_channel_empty_n xor ap_const_logic_1));
    ap_int_blocking_cur_n <= ap_const_logic_1;
    ap_int_blocking_n <= (ap_int_blocking_sub_n and ap_int_blocking_cur_n);
    ap_int_blocking_sub_n <= (xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_int_blocking_n and remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_int_blocking_n);
    ap_ready <= remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_ready;
    ap_str_blocking_cur_n <= ap_const_logic_1;
    ap_str_blocking_n <= (ap_str_blocking_sub_n and ap_str_blocking_cur_n);
    ap_str_blocking_sub_n <= (xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_str_blocking_n and remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_str_blocking_n);
    ap_sync_channel_write_cols_loc_channel <= ((cols_loc_channel_full_n and ap_channel_done_cols_loc_channel) or ap_sync_reg_channel_write_cols_loc_channel);
    ap_sync_channel_write_rows_loc_channel <= ((rows_loc_channel_full_n and ap_channel_done_rows_loc_channel) or ap_sync_reg_channel_write_rows_loc_channel);
    imgInput_data1_read <= xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgInput_data1_read;
    imgOutput_data4_din <= xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgOutput_data4_din;
    imgOutput_data4_write <= xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_imgOutput_data4_write;
    mapX_data2_read <= xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_mapX_data2_read;
    mapY_data3_read <= xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_mapY_data3_read;
    p_src_mat_cols_read <= remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_p_src_mat_cols_read;
    p_src_mat_rows_read <= remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_p_src_mat_rows_read;
    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_continue <= (ap_sync_channel_write_rows_loc_channel and ap_sync_channel_write_cols_loc_channel);
    remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0_ap_start <= ap_start;
    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_continue <= ap_continue;
    xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0_ap_start <= (rows_loc_channel_empty_n and cols_loc_channel_empty_n);
end behav;
