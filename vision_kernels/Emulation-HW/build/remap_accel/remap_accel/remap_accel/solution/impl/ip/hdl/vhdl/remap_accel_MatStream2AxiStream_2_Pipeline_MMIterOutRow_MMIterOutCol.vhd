-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity remap_accel_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    imgOutput_data4_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    imgOutput_data4_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    imgOutput_data4_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    imgOutput_data4_empty_n : IN STD_LOGIC;
    imgOutput_data4_read : OUT STD_LOGIC;
    ldata1_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    ldata1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    ldata1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    ldata1_full_n : IN STD_LOGIC;
    ldata1_write : OUT STD_LOGIC;
    bound : IN STD_LOGIC_VECTOR (31 downto 0);
    strideBased_cols_bound_per_npc_V : IN STD_LOGIC_VECTOR (15 downto 0);
    op2_assign : IN STD_LOGIC_VECTOR (31 downto 0);
    last_blk_width_load : IN STD_LOGIC_VECTOR (3 downto 0);
    cols_bound_per_npc_load : IN STD_LOGIC_VECTOR (31 downto 0);
    localbuffer_V_3_out : OUT STD_LOGIC_VECTOR (7 downto 0);
    localbuffer_V_3_out_ap_vld : OUT STD_LOGIC;
    filled_V_1_out : OUT STD_LOGIC_VECTOR (3 downto 0);
    filled_V_1_out_ap_vld : OUT STD_LOGIC;
    ap_ext_blocking_n : OUT STD_LOGIC;
    ap_str_blocking_n : OUT STD_LOGIC;
    ap_int_blocking_n : OUT STD_LOGIC );
end;


architecture behav of remap_accel_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv5_8 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";

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
    signal icmp_ln1027_reg_450 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1027_2_reg_454 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op53_read_state3 : BOOLEAN;
    signal icmp_ln1027_3_reg_463 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op60_write_state3 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1027_fu_199_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal imgOutput_data4_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ldata1_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal filled_V_3_reg_445 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln1027_2_fu_247_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln930_1_fu_252_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln930_1_reg_458 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln1027_3_fu_262_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_conv3_i12_i_i933_pn_phi_fu_154_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal xor_ln186_fu_268_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_phi_reg_pp0_iter1_conv3_i12_i_i933_pn_reg_151 : STD_LOGIC_VECTOR (3 downto 0);
    signal xf_bits_per_clock_fu_235_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_phi_mux_val_V_1_phi_fu_164_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_phi_reg_pp0_iter2_val_V_1_reg_160 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_phi_reg_pp0_iter0_val_V_1_reg_160 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_phi_reg_pp0_iter1_val_V_1_reg_160 : STD_LOGIC_VECTOR (7 downto 0);
    signal filled_V_fu_78 : STD_LOGIC_VECTOR (3 downto 0);
    signal filled_next_fu_275_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal localbuffer_V_fu_82 : STD_LOGIC_VECTOR (7 downto 0);
    signal r_V_14_fu_368_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ret_V_fu_314_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_V_fu_86 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln840_fu_281_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal indvar_flatten_fu_90 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln1027_fu_204_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal icmp_ln1027_1_fu_213_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln1295_fu_218_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln1027_fu_226_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bLast_fu_230_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln1314_fu_243_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal sub_ln1325_fu_256_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal filled_V_3cast_fu_305_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln930_fu_308_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ret_V_1_fu_321_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln1496_fu_326_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal sub_ln553_fu_342_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln930_3_fu_348_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal sext_ln455_fu_338_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln455cast_fu_358_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_s_fu_330_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal shl_ln930_1_fu_352_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal lshr_ln948_fu_362_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_int_blocking_cur_n : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_124 : BOOLEAN;
    signal ap_condition_364 : BOOLEAN;
    signal ap_condition_367 : BOOLEAN;
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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_phi_reg_pp0_iter2_val_V_1_reg_160_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_124)) then
                if (((icmp_ln1027_fu_199_p2 = ap_const_lv1_0) and (icmp_ln1027_2_fu_247_p2 = ap_const_lv1_0))) then 
                    ap_phi_reg_pp0_iter2_val_V_1_reg_160 <= ap_const_lv8_0;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter2_val_V_1_reg_160 <= ap_phi_reg_pp0_iter1_val_V_1_reg_160;
                end if;
            end if; 
        end if;
    end process;

    filled_V_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    filled_V_fu_78 <= ap_const_lv4_0;
                elsif (((icmp_ln1027_fu_199_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    filled_V_fu_78 <= filled_next_fu_275_p2;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_90 <= ap_const_lv32_0;
                elsif (((icmp_ln1027_fu_199_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten_fu_90 <= add_ln1027_fu_204_p2;
                end if;
            end if; 
        end if;
    end process;

    j_V_fu_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_V_fu_86 <= ap_const_lv16_0;
                elsif (((icmp_ln1027_fu_199_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    j_V_fu_86 <= add_ln840_fu_281_p2;
                end if;
            end if; 
        end if;
    end process;

    localbuffer_V_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    localbuffer_V_fu_82 <= ap_const_lv8_0;
                elsif ((ap_const_boolean_1 = ap_condition_367)) then 
                    localbuffer_V_fu_82 <= ret_V_fu_314_p2;
                elsif ((ap_const_boolean_1 = ap_condition_364)) then 
                    localbuffer_V_fu_82 <= r_V_14_fu_368_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_phi_reg_pp0_iter1_val_V_1_reg_160 <= ap_phi_reg_pp0_iter0_val_V_1_reg_160;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                filled_V_3_reg_445 <= filled_V_fu_78;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1027_fu_199_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln1027_2_reg_454 <= icmp_ln1027_2_fu_247_p2;
                icmp_ln1027_3_reg_463 <= icmp_ln1027_3_fu_262_p2;
                    zext_ln930_1_reg_458(3 downto 0) <= zext_ln930_1_fu_252_p1(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln1027_reg_450 <= icmp_ln1027_fu_199_p2;
            end if;
        end if;
    end process;
    zext_ln930_1_reg_458(4) <= '0';

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln1027_fu_204_p2 <= std_logic_vector(unsigned(indvar_flatten_fu_90) + unsigned(ap_const_lv32_1));
    add_ln840_fu_281_p2 <= std_logic_vector(unsigned(select_ln1295_fu_218_p3) + unsigned(ap_const_lv16_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter2, imgOutput_data4_empty_n, ap_predicate_op53_read_state3, ldata1_full_n, ap_predicate_op60_write_state3)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (((ap_predicate_op60_write_state3 = ap_const_boolean_1) and (ldata1_full_n = ap_const_logic_0)) or ((ap_predicate_op53_read_state3 = ap_const_boolean_1) and (imgOutput_data4_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, imgOutput_data4_empty_n, ap_predicate_op53_read_state3, ldata1_full_n, ap_predicate_op60_write_state3)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (((ap_predicate_op60_write_state3 = ap_const_boolean_1) and (ldata1_full_n = ap_const_logic_0)) or ((ap_predicate_op53_read_state3 = ap_const_boolean_1) and (imgOutput_data4_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, imgOutput_data4_empty_n, ap_predicate_op53_read_state3, ldata1_full_n, ap_predicate_op60_write_state3)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (((ap_predicate_op60_write_state3 = ap_const_boolean_1) and (ldata1_full_n = ap_const_logic_0)) or ((ap_predicate_op53_read_state3 = ap_const_boolean_1) and (imgOutput_data4_empty_n = ap_const_logic_0))));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter2_assign_proc : process(imgOutput_data4_empty_n, ap_predicate_op53_read_state3, ldata1_full_n, ap_predicate_op60_write_state3)
    begin
                ap_block_state3_pp0_stage0_iter2 <= (((ap_predicate_op60_write_state3 = ap_const_boolean_1) and (ldata1_full_n = ap_const_logic_0)) or ((ap_predicate_op53_read_state3 = ap_const_boolean_1) and (imgOutput_data4_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_124_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
                ap_condition_124 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_364_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln1027_reg_450, icmp_ln1027_3_reg_463)
    begin
                ap_condition_364 <= ((icmp_ln1027_3_reg_463 = ap_const_lv1_0) and (icmp_ln1027_reg_450 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_condition_367_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln1027_reg_450, icmp_ln1027_3_reg_463)
    begin
                ap_condition_367 <= ((icmp_ln1027_3_reg_463 = ap_const_lv1_1) and (icmp_ln1027_reg_450 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln1027_fu_199_p2)
    begin
        if (((icmp_ln1027_fu_199_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_int_blocking_cur_n <= (ldata1_blk_n and imgOutput_data4_blk_n);
    ap_int_blocking_n <= (ap_int_blocking_cur_n and ap_const_logic_1);
    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_phi_mux_conv3_i12_i_i933_pn_phi_fu_154_p4_assign_proc : process(icmp_ln1027_fu_199_p2, icmp_ln1027_3_fu_262_p2, xor_ln186_fu_268_p2, ap_phi_reg_pp0_iter1_conv3_i12_i_i933_pn_reg_151, xf_bits_per_clock_fu_235_p3)
    begin
        if ((icmp_ln1027_fu_199_p2 = ap_const_lv1_0)) then
            if ((icmp_ln1027_3_fu_262_p2 = ap_const_lv1_1)) then 
                ap_phi_mux_conv3_i12_i_i933_pn_phi_fu_154_p4 <= xf_bits_per_clock_fu_235_p3;
            elsif ((icmp_ln1027_3_fu_262_p2 = ap_const_lv1_0)) then 
                ap_phi_mux_conv3_i12_i_i933_pn_phi_fu_154_p4 <= xor_ln186_fu_268_p2;
            else 
                ap_phi_mux_conv3_i12_i_i933_pn_phi_fu_154_p4 <= ap_phi_reg_pp0_iter1_conv3_i12_i_i933_pn_reg_151;
            end if;
        else 
            ap_phi_mux_conv3_i12_i_i933_pn_phi_fu_154_p4 <= ap_phi_reg_pp0_iter1_conv3_i12_i_i933_pn_reg_151;
        end if; 
    end process;


    ap_phi_mux_val_V_1_phi_fu_164_p4_assign_proc : process(imgOutput_data4_dout, icmp_ln1027_reg_450, icmp_ln1027_2_reg_454, ap_phi_reg_pp0_iter2_val_V_1_reg_160)
    begin
        if (((icmp_ln1027_2_reg_454 = ap_const_lv1_1) and (icmp_ln1027_reg_450 = ap_const_lv1_0))) then 
            ap_phi_mux_val_V_1_phi_fu_164_p4 <= imgOutput_data4_dout;
        else 
            ap_phi_mux_val_V_1_phi_fu_164_p4 <= ap_phi_reg_pp0_iter2_val_V_1_reg_160;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_val_V_1_reg_160 <= "XXXXXXXX";
    ap_phi_reg_pp0_iter1_conv3_i12_i_i933_pn_reg_151 <= "XXXX";

    ap_predicate_op53_read_state3_assign_proc : process(icmp_ln1027_reg_450, icmp_ln1027_2_reg_454)
    begin
                ap_predicate_op53_read_state3 <= ((icmp_ln1027_2_reg_454 = ap_const_lv1_1) and (icmp_ln1027_reg_450 = ap_const_lv1_0));
    end process;


    ap_predicate_op60_write_state3_assign_proc : process(icmp_ln1027_reg_450, icmp_ln1027_3_reg_463)
    begin
                ap_predicate_op60_write_state3 <= ((icmp_ln1027_3_reg_463 = ap_const_lv1_0) and (icmp_ln1027_reg_450 = ap_const_lv1_0));
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    ap_str_blocking_n <= (ap_const_logic_1 and ap_const_logic_1);
    bLast_fu_230_p2 <= "1" when (op2_assign = zext_ln1027_fu_226_p1) else "0";
    filled_V_1_out <= filled_V_fu_78;

    filled_V_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1027_fu_199_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1027_fu_199_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            filled_V_1_out_ap_vld <= ap_const_logic_1;
        else 
            filled_V_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    filled_V_3cast_fu_305_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(filled_V_3_reg_445),8));
    filled_next_fu_275_p2 <= std_logic_vector(unsigned(ap_phi_mux_conv3_i12_i_i933_pn_phi_fu_154_p4) + unsigned(filled_V_fu_78));
    icmp_ln1027_1_fu_213_p2 <= "1" when (j_V_fu_86 = strideBased_cols_bound_per_npc_V) else "0";
    icmp_ln1027_2_fu_247_p2 <= "1" when (signed(zext_ln1027_fu_226_p1) < signed(cols_bound_per_npc_load)) else "0";
    icmp_ln1027_3_fu_262_p2 <= "1" when (signed(sub_ln1325_fu_256_p2) > signed(zext_ln930_1_fu_252_p1)) else "0";
    icmp_ln1027_fu_199_p2 <= "1" when (indvar_flatten_fu_90 = bound) else "0";

    imgOutput_data4_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, imgOutput_data4_empty_n, ap_predicate_op53_read_state3, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op53_read_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            imgOutput_data4_blk_n <= imgOutput_data4_empty_n;
        else 
            imgOutput_data4_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    imgOutput_data4_read_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op53_read_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op53_read_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            imgOutput_data4_read <= ap_const_logic_1;
        else 
            imgOutput_data4_read <= ap_const_logic_0;
        end if; 
    end process;


    ldata1_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, ldata1_full_n, ap_predicate_op60_write_state3, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op60_write_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ldata1_blk_n <= ldata1_full_n;
        else 
            ldata1_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    ldata1_din <= (shl_ln930_fu_308_p2 or localbuffer_V_fu_82);

    ldata1_write_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op60_write_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op60_write_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ldata1_write <= ap_const_logic_1;
        else 
            ldata1_write <= ap_const_logic_0;
        end if; 
    end process;

    localbuffer_V_3_out <= localbuffer_V_fu_82;

    localbuffer_V_3_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1027_fu_199_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1027_fu_199_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            localbuffer_V_3_out_ap_vld <= ap_const_logic_1;
        else 
            localbuffer_V_3_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    lshr_ln948_fu_362_p2 <= std_logic_vector(shift_right(unsigned(ap_phi_mux_val_V_1_phi_fu_164_p4),to_integer(unsigned('0' & sext_ln455cast_fu_358_p1(8-1 downto 0)))));
    p_Result_s_fu_330_p3 <= ret_V_1_fu_321_p2(4 downto 4);
    r_V_14_fu_368_p3 <= 
        shl_ln930_1_fu_352_p2 when (p_Result_s_fu_330_p3(0) = '1') else 
        lshr_ln948_fu_362_p2;
    ret_V_1_fu_321_p2 <= std_logic_vector(unsigned(ap_const_lv5_8) - unsigned(zext_ln930_1_reg_458));
    ret_V_fu_314_p2 <= (shl_ln930_fu_308_p2 or localbuffer_V_fu_82);
    select_ln1295_fu_218_p3 <= 
        ap_const_lv16_0 when (icmp_ln1027_1_fu_213_p2(0) = '1') else 
        j_V_fu_86;
        sext_ln455_fu_338_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(ret_V_1_fu_321_p2),32));

    sext_ln455cast_fu_358_p1 <= sext_ln455_fu_338_p1(8 - 1 downto 0);
    shl_ln930_1_fu_352_p2 <= std_logic_vector(shift_left(unsigned(ap_phi_mux_val_V_1_phi_fu_164_p4),to_integer(unsigned('0' & zext_ln930_3_fu_348_p1(8-1 downto 0)))));
    shl_ln930_fu_308_p2 <= std_logic_vector(shift_left(unsigned(ap_phi_mux_val_V_1_phi_fu_164_p4),to_integer(unsigned('0' & filled_V_3cast_fu_305_p1(8-1 downto 0)))));
    sub_ln1325_fu_256_p2 <= std_logic_vector(unsigned(ap_const_lv5_8) - unsigned(zext_ln1314_fu_243_p1));
    sub_ln553_fu_342_p2 <= std_logic_vector(unsigned(ap_const_lv3_0) - unsigned(trunc_ln1496_fu_326_p1));
    trunc_ln1496_fu_326_p1 <= ret_V_1_fu_321_p2(3 - 1 downto 0);
    xf_bits_per_clock_fu_235_p3 <= 
        last_blk_width_load when (bLast_fu_230_p2(0) = '1') else 
        ap_const_lv4_8;
    xor_ln186_fu_268_p2 <= (xf_bits_per_clock_fu_235_p3 xor ap_const_lv4_8);
    zext_ln1027_fu_226_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln1295_fu_218_p3),32));
    zext_ln1314_fu_243_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xf_bits_per_clock_fu_235_p3),5));
    zext_ln930_1_fu_252_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(filled_V_fu_78),5));
    zext_ln930_3_fu_348_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln553_fu_342_p2),8));
end behav;
