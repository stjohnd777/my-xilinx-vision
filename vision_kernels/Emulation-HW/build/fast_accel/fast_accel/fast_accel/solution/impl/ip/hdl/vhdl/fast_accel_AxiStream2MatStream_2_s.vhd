-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fast_accel_AxiStream2MatStream_2_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ldata1_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    ldata1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    ldata1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    ldata1_empty_n : IN STD_LOGIC;
    ldata1_read : OUT STD_LOGIC;
    imgInput_data1_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    imgInput_data1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    imgInput_data1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    imgInput_data1_full_n : IN STD_LOGIC;
    imgInput_data1_write : OUT STD_LOGIC;
    rows_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    rows_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    rows_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    rows_empty_n : IN STD_LOGIC;
    rows_read : OUT STD_LOGIC;
    cols_bound_per_npc_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    cols_bound_per_npc_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    cols_bound_per_npc_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    cols_bound_per_npc_empty_n : IN STD_LOGIC;
    cols_bound_per_npc_read : OUT STD_LOGIC;
    last_blk_width : IN STD_LOGIC_VECTOR (3 downto 0);
    ap_ext_blocking_n : OUT STD_LOGIC;
    ap_str_blocking_n : OUT STD_LOGIC;
    ap_int_blocking_n : OUT STD_LOGIC );
end;


architecture behav of fast_accel_AxiStream2MatStream_2_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv5_8 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv5_7 : STD_LOGIC_VECTOR (4 downto 0) := "00111";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal rows_blk_n : STD_LOGIC;
    signal cols_bound_per_npc_blk_n : STD_LOGIC;
    signal last_blk_width_read_reg_112 : STD_LOGIC_VECTOR (3 downto 0);
    signal cols_bound_per_npc_read_reg_118 : STD_LOGIC_VECTOR (31 downto 0);
    signal rows_read_reg_125 : STD_LOGIC_VECTOR (31 downto 0);
    signal bound_fu_80_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bound_reg_130 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal sub_fu_85_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_reg_135 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub3_fu_91_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal sub3_reg_140 : STD_LOGIC_VECTOR (4 downto 0);
    signal sub38_fu_98_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal sub38_reg_145 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln1075_fu_105_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln1075_reg_150 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start : STD_LOGIC;
    signal grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done : STD_LOGIC;
    signal grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_idle : STD_LOGIC;
    signal grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_ready : STD_LOGIC;
    signal grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ldata1_read : STD_LOGIC;
    signal grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_imgInput_data1_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_imgInput_data1_write : STD_LOGIC;
    signal grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_ext_blocking_n : STD_LOGIC;
    signal grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_str_blocking_n : STD_LOGIC;
    signal grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_int_blocking_n : STD_LOGIC;
    signal grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal last_blk_width_cast3_fu_77_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_int_blocking_cur_n : STD_LOGIC;
    signal ap_ext_blocking_sub_n : STD_LOGIC;
    signal ap_wait_0 : STD_LOGIC;
    signal ap_sub_ext_blocking_0 : STD_LOGIC;
    signal ap_str_blocking_sub_n : STD_LOGIC;
    signal ap_sub_str_blocking_0 : STD_LOGIC;
    signal ap_int_blocking_sub_n : STD_LOGIC;
    signal ap_sub_int_blocking_0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fast_accel_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow IS
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
        imgInput_data1_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        imgInput_data1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        imgInput_data1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        imgInput_data1_full_n : IN STD_LOGIC;
        imgInput_data1_write : OUT STD_LOGIC;
        bound : IN STD_LOGIC_VECTOR (31 downto 0);
        sext_ln1075 : IN STD_LOGIC_VECTOR (4 downto 0);
        cols_bound_per_npc_load : IN STD_LOGIC_VECTOR (31 downto 0);
        sub : IN STD_LOGIC_VECTOR (31 downto 0);
        last_blk_width_load : IN STD_LOGIC_VECTOR (3 downto 0);
        sub3 : IN STD_LOGIC_VECTOR (4 downto 0);
        add_ln1075 : IN STD_LOGIC_VECTOR (4 downto 0);
        ap_ext_blocking_n : OUT STD_LOGIC;
        ap_str_blocking_n : OUT STD_LOGIC;
        ap_int_blocking_n : OUT STD_LOGIC );
    end component;


    component fast_accel_mul_32s_32s_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62 : component fast_accel_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start,
        ap_done => grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done,
        ap_idle => grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_idle,
        ap_ready => grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_ready,
        ldata1_dout => ldata1_dout,
        ldata1_num_data_valid => ap_const_lv2_0,
        ldata1_fifo_cap => ap_const_lv2_0,
        ldata1_empty_n => ldata1_empty_n,
        ldata1_read => grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ldata1_read,
        imgInput_data1_din => grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_imgInput_data1_din,
        imgInput_data1_num_data_valid => ap_const_lv2_0,
        imgInput_data1_fifo_cap => ap_const_lv2_0,
        imgInput_data1_full_n => imgInput_data1_full_n,
        imgInput_data1_write => grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_imgInput_data1_write,
        bound => bound_reg_130,
        sext_ln1075 => sub38_reg_145,
        cols_bound_per_npc_load => cols_bound_per_npc_read_reg_118,
        sub => sub_reg_135,
        last_blk_width_load => last_blk_width_read_reg_112,
        sub3 => sub3_reg_140,
        add_ln1075 => add_ln1075_reg_150,
        ap_ext_blocking_n => grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_ext_blocking_n,
        ap_str_blocking_n => grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_str_blocking_n,
        ap_int_blocking_n => grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_int_blocking_n);

    mul_32s_32s_32_1_1_U36 : component fast_accel_mul_32s_32s_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        din0 => cols_bound_per_npc_read_reg_118,
        din1 => rows_read_reg_125,
        dout => bound_fu_80_p2);





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
                elsif (((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_ready = ap_const_logic_1)) then 
                    grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln1075_reg_150 <= add_ln1075_fu_105_p2;
                bound_reg_130 <= bound_fu_80_p2;
                sub38_reg_145 <= sub38_fu_98_p2;
                sub3_reg_140 <= sub3_fu_91_p2;
                sub_reg_135 <= sub_fu_85_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                cols_bound_per_npc_read_reg_118 <= cols_bound_per_npc_dout;
                last_blk_width_read_reg_112 <= last_blk_width;
                rows_read_reg_125 <= rows_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, rows_empty_n, cols_bound_per_npc_empty_n, grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done, ap_CS_fsm_state3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (cols_bound_per_npc_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln1075_fu_105_p2 <= std_logic_vector(unsigned(last_blk_width_cast3_fu_77_p1) + unsigned(ap_const_lv5_7));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg, rows_empty_n, cols_bound_per_npc_empty_n)
    begin
        if (((ap_start = ap_const_logic_0) or (cols_bound_per_npc_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done)
    begin
        if ((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, rows_empty_n, cols_bound_per_npc_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (cols_bound_per_npc_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done, ap_CS_fsm_state3)
    begin
        if (((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
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

    ap_int_blocking_cur_n <= (rows_blk_n and cols_bound_per_npc_blk_n);
    ap_int_blocking_n <= (ap_int_blocking_sub_n and ap_int_blocking_cur_n);

    ap_int_blocking_sub_n_assign_proc : process(ap_wait_0, ap_sub_int_blocking_0)
    begin
        if (((ap_wait_0 and ap_sub_int_blocking_0) = ap_const_logic_1)) then 
            ap_int_blocking_sub_n <= ap_const_logic_0;
        else 
            ap_int_blocking_sub_n <= ap_const_logic_1;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done, ap_CS_fsm_state3)
    begin
        if (((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
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


    ap_sub_ext_blocking_0_assign_proc : process(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_ext_blocking_n)
    begin
        if ((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_ext_blocking_n = ap_const_logic_0)) then 
            ap_sub_ext_blocking_0 <= ap_const_logic_1;
        else 
            ap_sub_ext_blocking_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sub_int_blocking_0_assign_proc : process(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_int_blocking_n)
    begin
        if ((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_int_blocking_n = ap_const_logic_0)) then 
            ap_sub_int_blocking_0 <= ap_const_logic_1;
        else 
            ap_sub_int_blocking_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sub_str_blocking_0_assign_proc : process(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_str_blocking_n)
    begin
        if ((grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_str_blocking_n = ap_const_logic_0)) then 
            ap_sub_str_blocking_0 <= ap_const_logic_1;
        else 
            ap_sub_str_blocking_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_wait_0_assign_proc : process(ap_CS_fsm)
    begin
        if ((ap_ST_fsm_state3 = ap_CS_fsm)) then 
            ap_wait_0 <= ap_const_logic_1;
        else 
            ap_wait_0 <= ap_const_logic_0;
        end if; 
    end process;


    cols_bound_per_npc_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, cols_bound_per_npc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            cols_bound_per_npc_blk_n <= cols_bound_per_npc_empty_n;
        else 
            cols_bound_per_npc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    cols_bound_per_npc_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rows_empty_n, cols_bound_per_npc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (cols_bound_per_npc_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            cols_bound_per_npc_read <= ap_const_logic_1;
        else 
            cols_bound_per_npc_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start <= grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ap_start_reg;
    imgInput_data1_din <= grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_imgInput_data1_din;

    imgInput_data1_write_assign_proc : process(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_imgInput_data1_write, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            imgInput_data1_write <= grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_imgInput_data1_write;
        else 
            imgInput_data1_write <= ap_const_logic_0;
        end if; 
    end process;

    last_blk_width_cast3_fu_77_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(last_blk_width_read_reg_112),5));

    ldata1_read_assign_proc : process(grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ldata1_read, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ldata1_read <= grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62_ldata1_read;
        else 
            ldata1_read <= ap_const_logic_0;
        end if; 
    end process;


    rows_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rows_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            rows_blk_n <= rows_empty_n;
        else 
            rows_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rows_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rows_empty_n, cols_bound_per_npc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (cols_bound_per_npc_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            rows_read <= ap_const_logic_1;
        else 
            rows_read <= ap_const_logic_0;
        end if; 
    end process;

    sub38_fu_98_p2 <= std_logic_vector(unsigned(last_blk_width_cast3_fu_77_p1) + unsigned(ap_const_lv5_1F));
    sub3_fu_91_p2 <= std_logic_vector(unsigned(ap_const_lv5_8) - unsigned(last_blk_width_cast3_fu_77_p1));
    sub_fu_85_p2 <= std_logic_vector(unsigned(cols_bound_per_npc_read_reg_118) + unsigned(ap_const_lv32_FFFFFFFF));
end behav;
