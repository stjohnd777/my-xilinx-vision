-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity edgetracing_accel_edgetracing_accel_Pipeline_WR_FIN_PIPE is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_dst2_data_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    p_dst2_data_full_n : IN STD_LOGIC;
    p_dst2_data_write : OUT STD_LOGIC;
    tmp_7 : IN STD_LOGIC_VECTOR (7 downto 0);
    oBuff_V_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    oBuff_V_ce0 : OUT STD_LOGIC;
    oBuff_V_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    packcols_1 : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_ext_blocking_n : OUT STD_LOGIC;
    ap_str_blocking_n : OUT STD_LOGIC;
    ap_int_blocking_n : OUT STD_LOGIC );
end;


architecture behav of edgetracing_accel_edgetracing_accel_Pipeline_WR_FIN_PIPE is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv6_4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_const_lv6_6 : STD_LOGIC_VECTOR (5 downto 0) := "000110";
    constant ap_const_lv6_8 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_const_lv6_A : STD_LOGIC_VECTOR (5 downto 0) := "001010";
    constant ap_const_lv6_C : STD_LOGIC_VECTOR (5 downto 0) := "001100";
    constant ap_const_lv6_E : STD_LOGIC_VECTOR (5 downto 0) := "001110";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln452_reg_598 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln433_fu_143_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal p_dst2_data_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln1019_fu_161_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1019_reg_588 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln452_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_i_i_i_fu_181_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal id_V_fu_72 : STD_LOGIC_VECTOR (2 downto 0);
    signal id_V_1_fu_192_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_id_V_load : STD_LOGIC_VECTOR (2 downto 0);
    signal pixel_V_fu_76 : STD_LOGIC_VECTOR (8 downto 0);
    signal pixel_V_2_fu_173_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_allocacmp_pixel_V_load : STD_LOGIC_VECTOR (8 downto 0);
    signal j_fu_80 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_2_fu_149_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_allocacmp_j_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal bit_fu_84 : STD_LOGIC_VECTOR (31 downto 0);
    signal bit_2_fu_546_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal pixel_V_1_fu_167_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln840_fu_186_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal bit_1_fu_224_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln628_fu_231_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln628_fu_235_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lshr_ln628_fu_239_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal pix_fu_245_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln1019_2_fu_249_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln444_fu_263_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln628_fu_267_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln628_1_fu_273_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lshr_ln628_1_fu_277_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal pix_1_fu_283_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln1019_3_fu_287_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln444_1_fu_301_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln628_1_fu_305_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln628_2_fu_311_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lshr_ln628_2_fu_315_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal pix_2_fu_321_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln1019_4_fu_325_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln444_2_fu_339_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln628_2_fu_343_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln628_3_fu_349_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lshr_ln628_3_fu_353_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal pix_3_fu_359_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln1019_5_fu_363_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln444_3_fu_377_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln628_3_fu_381_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln628_4_fu_387_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lshr_ln628_4_fu_391_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal pix_4_fu_397_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln1019_6_fu_401_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln444_4_fu_415_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln628_4_fu_419_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln628_5_fu_425_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lshr_ln628_5_fu_429_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal pix_5_fu_435_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln1019_7_fu_439_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln444_5_fu_453_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln628_5_fu_457_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln628_6_fu_463_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lshr_ln628_6_fu_467_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal pix_6_fu_473_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln1019_8_fu_477_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln444_6_fu_491_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln628_6_fu_495_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln628_7_fu_501_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lshr_ln628_7_fu_505_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal pix_7_fu_511_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln1019_9_fu_515_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln1019_6_fu_483_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln1019_5_fu_445_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln1019_4_fu_407_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln1019_3_fu_369_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln1019_2_fu_331_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln1019_1_fu_293_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln1019_fu_255_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal oRegF_V_fu_521_p9 : STD_LOGIC_VECTOR (56 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_int_blocking_cur_n : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component edgetracing_accel_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component edgetracing_accel_flow_control_loop_pipe_sequential_init
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    bit_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    bit_fu_84 <= ap_const_lv32_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    bit_fu_84 <= bit_2_fu_546_p2;
                end if;
            end if; 
        end if;
    end process;

    id_V_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln433_fu_143_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    id_V_fu_72 <= id_V_1_fu_192_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    id_V_fu_72 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln433_fu_143_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_fu_80 <= j_2_fu_149_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_80 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;

    pixel_V_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln433_fu_143_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    pixel_V_fu_76 <= pixel_V_2_fu_173_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    pixel_V_fu_76 <= ap_const_lv9_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln433_fu_143_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln1019_reg_588 <= icmp_ln1019_fu_161_p2;
                icmp_ln452_reg_598 <= icmp_ln452_fu_200_p2;
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
    add_ln628_1_fu_305_p2 <= std_logic_vector(unsigned(trunc_ln444_1_fu_301_p1) + unsigned(ap_const_lv6_4));
    add_ln628_2_fu_343_p2 <= std_logic_vector(unsigned(trunc_ln444_2_fu_339_p1) + unsigned(ap_const_lv6_6));
    add_ln628_3_fu_381_p2 <= std_logic_vector(unsigned(trunc_ln444_3_fu_377_p1) + unsigned(ap_const_lv6_8));
    add_ln628_4_fu_419_p2 <= std_logic_vector(unsigned(trunc_ln444_4_fu_415_p1) + unsigned(ap_const_lv6_A));
    add_ln628_5_fu_457_p2 <= std_logic_vector(unsigned(trunc_ln444_5_fu_453_p1) + unsigned(ap_const_lv6_C));
    add_ln628_6_fu_495_p2 <= std_logic_vector(unsigned(trunc_ln444_6_fu_491_p1) + unsigned(ap_const_lv6_E));
    add_ln628_fu_267_p2 <= std_logic_vector(unsigned(trunc_ln444_fu_263_p1) + unsigned(ap_const_lv6_2));
    add_ln840_fu_186_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_id_V_load) + unsigned(ap_const_lv3_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, p_dst2_data_full_n, icmp_ln452_reg_598)
    begin
                ap_block_pp0_stage0_01001 <= ((icmp_ln452_reg_598 = ap_const_lv1_1) and (p_dst2_data_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, p_dst2_data_full_n, icmp_ln452_reg_598)
    begin
                ap_block_pp0_stage0_11001 <= ((icmp_ln452_reg_598 = ap_const_lv1_1) and (p_dst2_data_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, p_dst2_data_full_n, icmp_ln452_reg_598)
    begin
                ap_block_pp0_stage0_subdone <= ((icmp_ln452_reg_598 = ap_const_lv1_1) and (p_dst2_data_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(p_dst2_data_full_n, icmp_ln452_reg_598)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((icmp_ln452_reg_598 = ap_const_lv1_1) and (p_dst2_data_full_n = ap_const_logic_0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln433_fu_143_p2)
    begin
        if (((icmp_ln433_fu_143_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_int_blocking_cur_n <= (p_dst2_data_blk_n);
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


    ap_sig_allocacmp_id_V_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, id_V_fu_72, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_id_V_load <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_id_V_load <= id_V_fu_72;
        end if; 
    end process;


    ap_sig_allocacmp_j_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, j_fu_80)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_j_1 <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_j_1 <= j_fu_80;
        end if; 
    end process;


    ap_sig_allocacmp_pixel_V_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, pixel_V_fu_76)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_pixel_V_load <= ap_const_lv9_0;
        else 
            ap_sig_allocacmp_pixel_V_load <= pixel_V_fu_76;
        end if; 
    end process;

    ap_str_blocking_n <= (ap_const_logic_1 and ap_const_logic_1);
    bit_1_fu_224_p3 <= 
        ap_const_lv32_0 when (icmp_ln1019_reg_588(0) = '1') else 
        bit_fu_84;
    bit_2_fu_546_p2 <= std_logic_vector(unsigned(bit_1_fu_224_p3) + unsigned(ap_const_lv32_10));
    conv_i_i_i_fu_181_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pixel_V_2_fu_173_p3),64));
    icmp_ln1019_2_fu_249_p2 <= "1" when (pix_fu_245_p1 = ap_const_lv2_3) else "0";
    icmp_ln1019_3_fu_287_p2 <= "1" when (pix_1_fu_283_p1 = ap_const_lv2_3) else "0";
    icmp_ln1019_4_fu_325_p2 <= "1" when (pix_2_fu_321_p1 = ap_const_lv2_3) else "0";
    icmp_ln1019_5_fu_363_p2 <= "1" when (pix_3_fu_359_p1 = ap_const_lv2_3) else "0";
    icmp_ln1019_6_fu_401_p2 <= "1" when (pix_4_fu_397_p1 = ap_const_lv2_3) else "0";
    icmp_ln1019_7_fu_439_p2 <= "1" when (pix_5_fu_435_p1 = ap_const_lv2_3) else "0";
    icmp_ln1019_8_fu_477_p2 <= "1" when (pix_6_fu_473_p1 = ap_const_lv2_3) else "0";
    icmp_ln1019_9_fu_515_p2 <= "1" when (pix_7_fu_511_p1 = ap_const_lv2_3) else "0";
    icmp_ln1019_fu_161_p2 <= "1" when (ap_sig_allocacmp_id_V_load = ap_const_lv3_4) else "0";
    icmp_ln433_fu_143_p2 <= "1" when (ap_sig_allocacmp_j_1 = tmp_7) else "0";
    icmp_ln452_fu_200_p2 <= "1" when (unsigned(ap_sig_allocacmp_j_1) < unsigned(packcols_1)) else "0";
    id_V_1_fu_192_p3 <= 
        ap_const_lv3_1 when (icmp_ln1019_fu_161_p2(0) = '1') else 
        add_ln840_fu_186_p2;
    j_2_fu_149_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j_1) + unsigned(ap_const_lv8_1));
    lshr_ln628_1_fu_277_p2 <= std_logic_vector(shift_right(unsigned(oBuff_V_q0),to_integer(unsigned('0' & zext_ln628_1_fu_273_p1(31-1 downto 0)))));
    lshr_ln628_2_fu_315_p2 <= std_logic_vector(shift_right(unsigned(oBuff_V_q0),to_integer(unsigned('0' & zext_ln628_2_fu_311_p1(31-1 downto 0)))));
    lshr_ln628_3_fu_353_p2 <= std_logic_vector(shift_right(unsigned(oBuff_V_q0),to_integer(unsigned('0' & zext_ln628_3_fu_349_p1(31-1 downto 0)))));
    lshr_ln628_4_fu_391_p2 <= std_logic_vector(shift_right(unsigned(oBuff_V_q0),to_integer(unsigned('0' & zext_ln628_4_fu_387_p1(31-1 downto 0)))));
    lshr_ln628_5_fu_429_p2 <= std_logic_vector(shift_right(unsigned(oBuff_V_q0),to_integer(unsigned('0' & zext_ln628_5_fu_425_p1(31-1 downto 0)))));
    lshr_ln628_6_fu_467_p2 <= std_logic_vector(shift_right(unsigned(oBuff_V_q0),to_integer(unsigned('0' & zext_ln628_6_fu_463_p1(31-1 downto 0)))));
    lshr_ln628_7_fu_505_p2 <= std_logic_vector(shift_right(unsigned(oBuff_V_q0),to_integer(unsigned('0' & zext_ln628_7_fu_501_p1(31-1 downto 0)))));
    lshr_ln628_fu_239_p2 <= std_logic_vector(shift_right(unsigned(oBuff_V_q0),to_integer(unsigned('0' & zext_ln628_fu_235_p1(31-1 downto 0)))));
    oBuff_V_address0 <= conv_i_i_i_fu_181_p1(6 - 1 downto 0);

    oBuff_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            oBuff_V_ce0 <= ap_const_logic_1;
        else 
            oBuff_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    oRegF_V_fu_521_p9 <= (((((((icmp_ln1019_9_fu_515_p2 & select_ln1019_6_fu_483_p3) & select_ln1019_5_fu_445_p3) & select_ln1019_4_fu_407_p3) & select_ln1019_3_fu_369_p3) & select_ln1019_2_fu_331_p3) & select_ln1019_1_fu_293_p3) & select_ln1019_fu_255_p3);

    p_dst2_data_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, p_dst2_data_full_n, icmp_ln452_reg_598, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln452_reg_598 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_dst2_data_blk_n <= p_dst2_data_full_n;
        else 
            p_dst2_data_blk_n <= ap_const_logic_1;
        end if; 
    end process;

        p_dst2_data_din <= std_logic_vector(IEEE.numeric_std.resize(signed(oRegF_V_fu_521_p9),64));


    p_dst2_data_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln452_reg_598, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln452_reg_598 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_dst2_data_write <= ap_const_logic_1;
        else 
            p_dst2_data_write <= ap_const_logic_0;
        end if; 
    end process;

    pix_1_fu_283_p1 <= lshr_ln628_1_fu_277_p2(2 - 1 downto 0);
    pix_2_fu_321_p1 <= lshr_ln628_2_fu_315_p2(2 - 1 downto 0);
    pix_3_fu_359_p1 <= lshr_ln628_3_fu_353_p2(2 - 1 downto 0);
    pix_4_fu_397_p1 <= lshr_ln628_4_fu_391_p2(2 - 1 downto 0);
    pix_5_fu_435_p1 <= lshr_ln628_5_fu_429_p2(2 - 1 downto 0);
    pix_6_fu_473_p1 <= lshr_ln628_6_fu_467_p2(2 - 1 downto 0);
    pix_7_fu_511_p1 <= lshr_ln628_7_fu_505_p2(2 - 1 downto 0);
    pix_fu_245_p1 <= lshr_ln628_fu_239_p2(2 - 1 downto 0);
    pixel_V_1_fu_167_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_pixel_V_load) + unsigned(ap_const_lv9_1));
    pixel_V_2_fu_173_p3 <= 
        pixel_V_1_fu_167_p2 when (icmp_ln1019_fu_161_p2(0) = '1') else 
        ap_sig_allocacmp_pixel_V_load;
    select_ln1019_1_fu_293_p3 <= 
        ap_const_lv8_FF when (icmp_ln1019_3_fu_287_p2(0) = '1') else 
        ap_const_lv8_0;
    select_ln1019_2_fu_331_p3 <= 
        ap_const_lv8_FF when (icmp_ln1019_4_fu_325_p2(0) = '1') else 
        ap_const_lv8_0;
    select_ln1019_3_fu_369_p3 <= 
        ap_const_lv8_FF when (icmp_ln1019_5_fu_363_p2(0) = '1') else 
        ap_const_lv8_0;
    select_ln1019_4_fu_407_p3 <= 
        ap_const_lv8_FF when (icmp_ln1019_6_fu_401_p2(0) = '1') else 
        ap_const_lv8_0;
    select_ln1019_5_fu_445_p3 <= 
        ap_const_lv8_FF when (icmp_ln1019_7_fu_439_p2(0) = '1') else 
        ap_const_lv8_0;
    select_ln1019_6_fu_483_p3 <= 
        ap_const_lv8_FF when (icmp_ln1019_8_fu_477_p2(0) = '1') else 
        ap_const_lv8_0;
    select_ln1019_fu_255_p3 <= 
        ap_const_lv8_FF when (icmp_ln1019_2_fu_249_p2(0) = '1') else 
        ap_const_lv8_0;
    trunc_ln444_1_fu_301_p1 <= bit_1_fu_224_p3(6 - 1 downto 0);
    trunc_ln444_2_fu_339_p1 <= bit_1_fu_224_p3(6 - 1 downto 0);
    trunc_ln444_3_fu_377_p1 <= bit_1_fu_224_p3(6 - 1 downto 0);
    trunc_ln444_4_fu_415_p1 <= bit_1_fu_224_p3(6 - 1 downto 0);
    trunc_ln444_5_fu_453_p1 <= bit_1_fu_224_p3(6 - 1 downto 0);
    trunc_ln444_6_fu_491_p1 <= bit_1_fu_224_p3(6 - 1 downto 0);
    trunc_ln444_fu_263_p1 <= bit_1_fu_224_p3(6 - 1 downto 0);
    trunc_ln628_fu_231_p1 <= bit_1_fu_224_p3(6 - 1 downto 0);
    zext_ln628_1_fu_273_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln628_fu_267_p2),64));
    zext_ln628_2_fu_311_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln628_1_fu_305_p2),64));
    zext_ln628_3_fu_349_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln628_2_fu_343_p2),64));
    zext_ln628_4_fu_387_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln628_3_fu_381_p2),64));
    zext_ln628_5_fu_425_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln628_4_fu_419_p2),64));
    zext_ln628_6_fu_463_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln628_5_fu_457_p2),64));
    zext_ln628_7_fu_501_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln628_6_fu_495_p2),64));
    zext_ln628_fu_235_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln628_fu_231_p1),64));
end behav;
