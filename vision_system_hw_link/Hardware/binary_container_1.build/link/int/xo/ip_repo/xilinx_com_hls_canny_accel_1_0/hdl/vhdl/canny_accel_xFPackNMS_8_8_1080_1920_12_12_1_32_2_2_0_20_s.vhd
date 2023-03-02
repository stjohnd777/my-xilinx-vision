-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity canny_accel_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    nms_mat_data10_dout : IN STD_LOGIC_VECTOR (1 downto 0);
    nms_mat_data10_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    nms_mat_data10_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    nms_mat_data10_empty_n : IN STD_LOGIC;
    nms_mat_data10_read : OUT STD_LOGIC;
    dst_mat_data2_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    dst_mat_data2_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    dst_mat_data2_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    dst_mat_data2_full_n : IN STD_LOGIC;
    dst_mat_data2_write : OUT STD_LOGIC;
    imgheight_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    imgheight_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    imgheight_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    imgheight_empty_n : IN STD_LOGIC;
    imgheight_read : OUT STD_LOGIC;
    imgwidth_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    imgwidth_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    imgwidth_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    imgwidth_empty_n : IN STD_LOGIC;
    imgwidth_read : OUT STD_LOGIC );
end;


architecture behav of canny_accel_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv17_20 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000100000";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv17_1F : STD_LOGIC_VECTOR (16 downto 0) := "00000000000011111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal imgheight_blk_n : STD_LOGIC;
    signal imgwidth_blk_n : STD_LOGIC;
    signal col_loop_count_ac_reg_207 : STD_LOGIC_VECTOR (15 downto 0);
    signal imgheight_read_reg_212 : STD_LOGIC_VECTOR (15 downto 0);
    signal npcCols_fu_139_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal npcCols_reg_217 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_3_fu_181_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_3_reg_225 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln122_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_start : STD_LOGIC;
    signal grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_done : STD_LOGIC;
    signal grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_idle : STD_LOGIC;
    signal grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_ready : STD_LOGIC;
    signal grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_dst_mat_data2_din : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_dst_mat_data2_write : STD_LOGIC;
    signal grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_nms_mat_data10_read : STD_LOGIC;
    signal grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_val_V_98_out_o : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_val_V_98_out_o_ap_vld : STD_LOGIC;
    signal grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal val_V_fu_66 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_70 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_2_fu_160_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal tmp_fu_105_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal and_ln_fu_115_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln110_1_fu_123_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal trunc_ln110_fu_101_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln111_fu_133_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal npcColsNxt_fu_127_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln110_fu_97_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln129_fu_166_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_2_fu_171_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component canny_accel_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        dst_mat_data2_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        dst_mat_data2_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        dst_mat_data2_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        dst_mat_data2_full_n : IN STD_LOGIC;
        dst_mat_data2_write : OUT STD_LOGIC;
        empty : IN STD_LOGIC_VECTOR (16 downto 0);
        nms_mat_data10_dout : IN STD_LOGIC_VECTOR (1 downto 0);
        nms_mat_data10_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        nms_mat_data10_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        nms_mat_data10_empty_n : IN STD_LOGIC;
        nms_mat_data10_read : OUT STD_LOGIC;
        zext_ln108 : IN STD_LOGIC_VECTOR (15 downto 0);
        val_V_98_out_i : IN STD_LOGIC_VECTOR (63 downto 0);
        val_V_98_out_o : OUT STD_LOGIC_VECTOR (63 downto 0);
        val_V_98_out_o_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86 : component canny_accel_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_start,
        ap_done => grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_done,
        ap_idle => grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_idle,
        ap_ready => grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_ready,
        dst_mat_data2_din => grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_dst_mat_data2_din,
        dst_mat_data2_num_data_valid => ap_const_lv2_0,
        dst_mat_data2_fifo_cap => ap_const_lv2_0,
        dst_mat_data2_full_n => dst_mat_data2_full_n,
        dst_mat_data2_write => grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_dst_mat_data2_write,
        empty => tmp_3_reg_225,
        nms_mat_data10_dout => nms_mat_data10_dout,
        nms_mat_data10_num_data_valid => ap_const_lv2_0,
        nms_mat_data10_fifo_cap => ap_const_lv2_0,
        nms_mat_data10_empty_n => nms_mat_data10_empty_n,
        nms_mat_data10_read => grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_nms_mat_data10_read,
        zext_ln108 => col_loop_count_ac_reg_207,
        val_V_98_out_i => val_V_fu_66,
        val_V_98_out_o => grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_val_V_98_out_o,
        val_V_98_out_o_ap_vld => grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_val_V_98_out_o_ap_vld);





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
                elsif (((icmp_ln122_fu_155_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln122_fu_155_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_ready = ap_const_logic_1)) then 
                    grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_fu_70 <= ap_const_lv16_0;
            elsif (((icmp_ln122_fu_155_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_fu_70 <= i_2_fu_160_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                col_loop_count_ac_reg_207 <= imgwidth_dout;
                imgheight_read_reg_212 <= imgheight_dout;
                npcCols_reg_217 <= npcCols_fu_139_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln122_fu_155_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    tmp_3_reg_225(16 downto 5) <= tmp_3_fu_181_p3(16 downto 5);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_val_V_98_out_o_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                val_V_fu_66 <= grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_val_V_98_out_o;
            end if;
        end if;
    end process;
    tmp_3_reg_225(4 downto 0) <= "00000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, imgheight_empty_n, imgwidth_empty_n, ap_CS_fsm_state2, icmp_ln122_fu_155_p2, grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_done, ap_CS_fsm_state3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln122_fu_155_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln129_fu_166_p2 <= std_logic_vector(unsigned(npcCols_reg_217) + unsigned(ap_const_lv17_1F));
    and_ln_fu_115_p3 <= (tmp_fu_105_p4 & ap_const_lv5_0);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg, imgheight_empty_n, imgwidth_empty_n)
    begin
        if (((ap_start = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_done)
    begin
        if ((grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, imgheight_empty_n, imgwidth_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, icmp_ln122_fu_155_p2)
    begin
        if (((icmp_ln122_fu_155_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln122_fu_155_p2)
    begin
        if (((icmp_ln122_fu_155_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    dst_mat_data2_din <= grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_dst_mat_data2_din;

    dst_mat_data2_write_assign_proc : process(grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_dst_mat_data2_write, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            dst_mat_data2_write <= grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_dst_mat_data2_write;
        else 
            dst_mat_data2_write <= ap_const_logic_0;
        end if; 
    end process;

    grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_start <= grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_ap_start_reg;
    i_2_fu_160_p2 <= std_logic_vector(unsigned(i_fu_70) + unsigned(ap_const_lv16_1));
    icmp_ln111_fu_133_p2 <= "0" when (trunc_ln110_fu_101_p1 = ap_const_lv5_0) else "1";
    icmp_ln122_fu_155_p2 <= "1" when (i_fu_70 = imgheight_read_reg_212) else "0";

    imgheight_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, imgheight_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            imgheight_blk_n <= imgheight_empty_n;
        else 
            imgheight_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    imgheight_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, imgheight_empty_n, imgwidth_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            imgheight_read <= ap_const_logic_1;
        else 
            imgheight_read <= ap_const_logic_0;
        end if; 
    end process;


    imgwidth_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, imgwidth_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            imgwidth_blk_n <= imgwidth_empty_n;
        else 
            imgwidth_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    imgwidth_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, imgheight_empty_n, imgwidth_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            imgwidth_read <= ap_const_logic_1;
        else 
            imgwidth_read <= ap_const_logic_0;
        end if; 
    end process;


    nms_mat_data10_read_assign_proc : process(grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_nms_mat_data10_read, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            nms_mat_data10_read <= grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86_nms_mat_data10_read;
        else 
            nms_mat_data10_read <= ap_const_logic_0;
        end if; 
    end process;

    npcColsNxt_fu_127_p2 <= std_logic_vector(unsigned(zext_ln110_1_fu_123_p1) + unsigned(ap_const_lv17_20));
    npcCols_fu_139_p3 <= 
        npcColsNxt_fu_127_p2 when (icmp_ln111_fu_133_p2(0) = '1') else 
        zext_ln110_fu_97_p1;
    tmp_2_fu_171_p4 <= add_ln129_fu_166_p2(16 downto 5);
    tmp_3_fu_181_p3 <= (tmp_2_fu_171_p4 & ap_const_lv5_0);
    tmp_fu_105_p4 <= imgwidth_dout(15 downto 5);
    trunc_ln110_fu_101_p1 <= imgwidth_dout(5 - 1 downto 0);
    zext_ln110_1_fu_123_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(and_ln_fu_115_p3),17));
    zext_ln110_fu_97_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(imgwidth_dout),17));
end behav;
