-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity canny_accel_xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    gradx2_mat_data4_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    gradx2_mat_data4_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    gradx2_mat_data4_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    gradx2_mat_data4_empty_n : IN STD_LOGIC;
    gradx2_mat_data4_read : OUT STD_LOGIC;
    grady2_mat_data7_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    grady2_mat_data7_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    grady2_mat_data7_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    grady2_mat_data7_empty_n : IN STD_LOGIC;
    grady2_mat_data7_read : OUT STD_LOGIC;
    phase_mat_data9_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    phase_mat_data9_num_data_valid : IN STD_LOGIC_VECTOR (13 downto 0);
    phase_mat_data9_fifo_cap : IN STD_LOGIC_VECTOR (13 downto 0);
    phase_mat_data9_full_n : IN STD_LOGIC;
    phase_mat_data9_write : OUT STD_LOGIC;
    imgheight_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    imgheight_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    imgheight_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    imgheight_empty_n : IN STD_LOGIC;
    imgheight_read : OUT STD_LOGIC;
    imgwidth_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    imgwidth_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    imgwidth_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    imgwidth_empty_n : IN STD_LOGIC;
    imgwidth_read : OUT STD_LOGIC;
    img_height_c19_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    img_height_c19_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    img_height_c19_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    img_height_c19_full_n : IN STD_LOGIC;
    img_height_c19_write : OUT STD_LOGIC;
    img_width_c23_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    img_width_c23_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    img_width_c23_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    img_width_c23_full_n : IN STD_LOGIC;
    img_width_c23_write : OUT STD_LOGIC );
end;


architecture behav of canny_accel_xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv13_1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal imgheight_blk_n : STD_LOGIC;
    signal imgwidth_blk_n : STD_LOGIC;
    signal img_height_c19_blk_n : STD_LOGIC;
    signal img_width_c23_blk_n : STD_LOGIC;
    signal imgwidth_read_reg_134 : STD_LOGIC_VECTOR (15 downto 0);
    signal imgheight_read_reg_139 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_start : STD_LOGIC;
    signal grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_done : STD_LOGIC;
    signal grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_idle : STD_LOGIC;
    signal grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_ready : STD_LOGIC;
    signal grp_xFAngleKernel_Pipeline_colLoop_fu_88_gradx2_mat_data4_read : STD_LOGIC;
    signal grp_xFAngleKernel_Pipeline_colLoop_fu_88_grady2_mat_data7_read : STD_LOGIC;
    signal grp_xFAngleKernel_Pipeline_colLoop_fu_88_phase_mat_data9_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_xFAngleKernel_Pipeline_colLoop_fu_88_phase_mat_data9_write : STD_LOGIC;
    signal grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln1027_fu_111_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i_V_fu_56 : STD_LOGIC_VECTOR (12 downto 0);
    signal i_V_2_fu_116_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal zext_ln1027_fu_107_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component canny_accel_xFAngleKernel_Pipeline_colLoop IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        gradx2_mat_data4_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        gradx2_mat_data4_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        gradx2_mat_data4_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        gradx2_mat_data4_empty_n : IN STD_LOGIC;
        gradx2_mat_data4_read : OUT STD_LOGIC;
        grady2_mat_data7_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        grady2_mat_data7_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        grady2_mat_data7_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        grady2_mat_data7_empty_n : IN STD_LOGIC;
        grady2_mat_data7_read : OUT STD_LOGIC;
        phase_mat_data9_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        phase_mat_data9_num_data_valid : IN STD_LOGIC_VECTOR (13 downto 0);
        phase_mat_data9_fifo_cap : IN STD_LOGIC_VECTOR (13 downto 0);
        phase_mat_data9_full_n : IN STD_LOGIC;
        phase_mat_data9_write : OUT STD_LOGIC;
        imgwidth_load : IN STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    grp_xFAngleKernel_Pipeline_colLoop_fu_88 : component canny_accel_xFAngleKernel_Pipeline_colLoop
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_start,
        ap_done => grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_done,
        ap_idle => grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_idle,
        ap_ready => grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_ready,
        gradx2_mat_data4_dout => gradx2_mat_data4_dout,
        gradx2_mat_data4_num_data_valid => ap_const_lv2_0,
        gradx2_mat_data4_fifo_cap => ap_const_lv2_0,
        gradx2_mat_data4_empty_n => gradx2_mat_data4_empty_n,
        gradx2_mat_data4_read => grp_xFAngleKernel_Pipeline_colLoop_fu_88_gradx2_mat_data4_read,
        grady2_mat_data7_dout => grady2_mat_data7_dout,
        grady2_mat_data7_num_data_valid => ap_const_lv2_0,
        grady2_mat_data7_fifo_cap => ap_const_lv2_0,
        grady2_mat_data7_empty_n => grady2_mat_data7_empty_n,
        grady2_mat_data7_read => grp_xFAngleKernel_Pipeline_colLoop_fu_88_grady2_mat_data7_read,
        phase_mat_data9_din => grp_xFAngleKernel_Pipeline_colLoop_fu_88_phase_mat_data9_din,
        phase_mat_data9_num_data_valid => ap_const_lv14_0,
        phase_mat_data9_fifo_cap => ap_const_lv14_0,
        phase_mat_data9_full_n => phase_mat_data9_full_n,
        phase_mat_data9_write => grp_xFAngleKernel_Pipeline_colLoop_fu_88_phase_mat_data9_write,
        imgwidth_load => imgwidth_read_reg_134);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1027_fu_111_p2 = ap_const_lv1_0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1027_fu_111_p2 = ap_const_lv1_1))) then 
                    grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_ready = ap_const_logic_1)) then 
                    grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_V_fu_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (img_width_c23_full_n = ap_const_logic_0) or (img_height_c19_full_n = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_V_fu_56 <= ap_const_lv13_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1027_fu_111_p2 = ap_const_lv1_1))) then 
                i_V_fu_56 <= i_V_2_fu_116_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                imgheight_read_reg_139 <= imgheight_dout;
                imgwidth_read_reg_134 <= imgwidth_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, imgheight_empty_n, imgwidth_empty_n, img_height_c19_full_n, img_width_c23_full_n, grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_done, ap_CS_fsm_state2, icmp_ln1027_fu_111_p2, ap_CS_fsm_state3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (img_width_c23_full_n = ap_const_logic_0) or (img_height_c19_full_n = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1027_fu_111_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
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

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg, imgheight_empty_n, imgwidth_empty_n, img_height_c19_full_n, img_width_c23_full_n)
    begin
        if (((ap_start = ap_const_logic_0) or (img_width_c23_full_n = ap_const_logic_0) or (img_height_c19_full_n = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_done)
    begin
        if ((grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, imgheight_empty_n, imgwidth_empty_n, img_height_c19_full_n, img_width_c23_full_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (img_width_c23_full_n = ap_const_logic_0) or (img_height_c19_full_n = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, icmp_ln1027_fu_111_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1027_fu_111_p2 = ap_const_lv1_0))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln1027_fu_111_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1027_fu_111_p2 = ap_const_lv1_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    gradx2_mat_data4_read_assign_proc : process(grp_xFAngleKernel_Pipeline_colLoop_fu_88_gradx2_mat_data4_read, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            gradx2_mat_data4_read <= grp_xFAngleKernel_Pipeline_colLoop_fu_88_gradx2_mat_data4_read;
        else 
            gradx2_mat_data4_read <= ap_const_logic_0;
        end if; 
    end process;


    grady2_mat_data7_read_assign_proc : process(grp_xFAngleKernel_Pipeline_colLoop_fu_88_grady2_mat_data7_read, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grady2_mat_data7_read <= grp_xFAngleKernel_Pipeline_colLoop_fu_88_grady2_mat_data7_read;
        else 
            grady2_mat_data7_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_start <= grp_xFAngleKernel_Pipeline_colLoop_fu_88_ap_start_reg;
    i_V_2_fu_116_p2 <= std_logic_vector(unsigned(i_V_fu_56) + unsigned(ap_const_lv13_1));
    icmp_ln1027_fu_111_p2 <= "1" when (unsigned(zext_ln1027_fu_107_p1) < unsigned(imgheight_read_reg_139)) else "0";

    img_height_c19_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_height_c19_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_height_c19_blk_n <= img_height_c19_full_n;
        else 
            img_height_c19_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_height_c19_din <= imgheight_dout;

    img_height_c19_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, imgheight_empty_n, imgwidth_empty_n, img_height_c19_full_n, img_width_c23_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (img_width_c23_full_n = ap_const_logic_0) or (img_height_c19_full_n = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_height_c19_write <= ap_const_logic_1;
        else 
            img_height_c19_write <= ap_const_logic_0;
        end if; 
    end process;


    img_width_c23_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_width_c23_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_width_c23_blk_n <= img_width_c23_full_n;
        else 
            img_width_c23_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_width_c23_din <= imgwidth_dout;

    img_width_c23_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, imgheight_empty_n, imgwidth_empty_n, img_height_c19_full_n, img_width_c23_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (img_width_c23_full_n = ap_const_logic_0) or (img_height_c19_full_n = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_width_c23_write <= ap_const_logic_1;
        else 
            img_width_c23_write <= ap_const_logic_0;
        end if; 
    end process;


    imgheight_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, imgheight_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            imgheight_blk_n <= imgheight_empty_n;
        else 
            imgheight_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    imgheight_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, imgheight_empty_n, imgwidth_empty_n, img_height_c19_full_n, img_width_c23_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (img_width_c23_full_n = ap_const_logic_0) or (img_height_c19_full_n = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
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


    imgwidth_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, imgheight_empty_n, imgwidth_empty_n, img_height_c19_full_n, img_width_c23_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (img_width_c23_full_n = ap_const_logic_0) or (img_height_c19_full_n = ap_const_logic_0) or (imgwidth_empty_n = ap_const_logic_0) or (imgheight_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            imgwidth_read <= ap_const_logic_1;
        else 
            imgwidth_read <= ap_const_logic_0;
        end if; 
    end process;

    phase_mat_data9_din <= grp_xFAngleKernel_Pipeline_colLoop_fu_88_phase_mat_data9_din;

    phase_mat_data9_write_assign_proc : process(grp_xFAngleKernel_Pipeline_colLoop_fu_88_phase_mat_data9_write, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            phase_mat_data9_write <= grp_xFAngleKernel_Pipeline_colLoop_fu_88_phase_mat_data9_write;
        else 
            phase_mat_data9_write <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln1027_fu_107_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_V_fu_56),16));
end behav;
