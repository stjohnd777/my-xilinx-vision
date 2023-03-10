-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity canny_accel_xFMagnitudeKernel_Pipeline_colLoop is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    gradx1_mat_data3_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    gradx1_mat_data3_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    gradx1_mat_data3_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    gradx1_mat_data3_empty_n : IN STD_LOGIC;
    gradx1_mat_data3_read : OUT STD_LOGIC;
    grady1_mat_data6_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    grady1_mat_data6_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    grady1_mat_data6_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    grady1_mat_data6_empty_n : IN STD_LOGIC;
    grady1_mat_data6_read : OUT STD_LOGIC;
    magnitude_mat_data8_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    magnitude_mat_data8_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    magnitude_mat_data8_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    magnitude_mat_data8_full_n : IN STD_LOGIC;
    magnitude_mat_data8_write : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (15 downto 0);
    ap_ext_blocking_n : OUT STD_LOGIC;
    ap_str_blocking_n : OUT STD_LOGIC;
    ap_int_blocking_n : OUT STD_LOGIC );
end;


architecture behav of canny_accel_xFMagnitudeKernel_Pipeline_colLoop is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";

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
    signal icmp_ln81_fu_81_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal gradx1_mat_data3_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal grady1_mat_data6_blk_n : STD_LOGIC;
    signal magnitude_mat_data8_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tmp_6_fu_142_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_6_reg_159 : STD_LOGIC_VECTOR (15 downto 0);
    signal j_fu_44 : STD_LOGIC_VECTOR (15 downto 0);
    signal j_5_fu_87_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_4 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_fu_98_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln100_fu_106_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_4_fu_120_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln101_fu_128_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal q_1_fu_134_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_1_fu_112_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_int_blocking_cur_n : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    j_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln81_fu_81_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_fu_44 <= j_5_fu_87_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_44 <= ap_const_lv16_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                tmp_6_reg_159 <= tmp_6_fu_142_p2;
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
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, gradx1_mat_data3_empty_n, grady1_mat_data6_empty_n, magnitude_mat_data8_full_n)
    begin
                ap_block_pp0_stage0_01001 <= (((magnitude_mat_data8_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((grady1_mat_data6_empty_n = ap_const_logic_0) or (gradx1_mat_data3_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, gradx1_mat_data3_empty_n, grady1_mat_data6_empty_n, magnitude_mat_data8_full_n)
    begin
                ap_block_pp0_stage0_11001 <= (((magnitude_mat_data8_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((grady1_mat_data6_empty_n = ap_const_logic_0) or (gradx1_mat_data3_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, gradx1_mat_data3_empty_n, grady1_mat_data6_empty_n, magnitude_mat_data8_full_n)
    begin
                ap_block_pp0_stage0_subdone <= (((magnitude_mat_data8_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((grady1_mat_data6_empty_n = ap_const_logic_0) or (gradx1_mat_data3_empty_n = ap_const_logic_0))));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(gradx1_mat_data3_empty_n, grady1_mat_data6_empty_n)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((grady1_mat_data6_empty_n = ap_const_logic_0) or (gradx1_mat_data3_empty_n = ap_const_logic_0));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(magnitude_mat_data8_full_n)
    begin
                ap_block_state3_pp0_stage0_iter2 <= (magnitude_mat_data8_full_n = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln81_fu_81_p2)
    begin
        if (((icmp_ln81_fu_81_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;
    ap_ext_blocking_n <= (ap_const_logic_1 and ap_const_logic_1);

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

    ap_int_blocking_cur_n <= (magnitude_mat_data8_blk_n and grady1_mat_data6_blk_n and gradx1_mat_data3_blk_n);
    ap_int_blocking_n <= (ap_int_blocking_cur_n and ap_const_logic_1);
    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_j_4_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, j_fu_44, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_j_4 <= ap_const_lv16_0;
        else 
            ap_sig_allocacmp_j_4 <= j_fu_44;
        end if; 
    end process;

    ap_str_blocking_n <= (ap_const_logic_1 and ap_const_logic_1);

    gradx1_mat_data3_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, gradx1_mat_data3_empty_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            gradx1_mat_data3_blk_n <= gradx1_mat_data3_empty_n;
        else 
            gradx1_mat_data3_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    gradx1_mat_data3_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            gradx1_mat_data3_read <= ap_const_logic_1;
        else 
            gradx1_mat_data3_read <= ap_const_logic_0;
        end if; 
    end process;


    grady1_mat_data6_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, grady1_mat_data6_empty_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            grady1_mat_data6_blk_n <= grady1_mat_data6_empty_n;
        else 
            grady1_mat_data6_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    grady1_mat_data6_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            grady1_mat_data6_read <= ap_const_logic_1;
        else 
            grady1_mat_data6_read <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln81_fu_81_p2 <= "1" when (ap_sig_allocacmp_j_4 = p_read1) else "0";
    j_5_fu_87_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j_4) + unsigned(ap_const_lv16_1));

    magnitude_mat_data8_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, magnitude_mat_data8_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            magnitude_mat_data8_blk_n <= magnitude_mat_data8_full_n;
        else 
            magnitude_mat_data8_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    magnitude_mat_data8_din <= tmp_6_reg_159;

    magnitude_mat_data8_write_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            magnitude_mat_data8_write <= ap_const_logic_1;
        else 
            magnitude_mat_data8_write <= ap_const_logic_0;
        end if; 
    end process;

    p_1_fu_112_p3 <= 
        sub_ln100_fu_106_p2 when (tmp_fu_98_p3(0) = '1') else 
        gradx1_mat_data3_dout;
    q_1_fu_134_p3 <= 
        sub_ln101_fu_128_p2 when (tmp_4_fu_120_p3(0) = '1') else 
        grady1_mat_data6_dout;
    sub_ln100_fu_106_p2 <= std_logic_vector(unsigned(ap_const_lv16_0) - unsigned(gradx1_mat_data3_dout));
    sub_ln101_fu_128_p2 <= std_logic_vector(unsigned(ap_const_lv16_0) - unsigned(grady1_mat_data6_dout));
    tmp_4_fu_120_p3 <= grady1_mat_data6_dout(15 downto 15);
    tmp_6_fu_142_p2 <= std_logic_vector(unsigned(q_1_fu_134_p3) + unsigned(p_1_fu_112_p3));
    tmp_fu_98_p3 <= gradx1_mat_data3_dout(15 downto 15);
end behav;
