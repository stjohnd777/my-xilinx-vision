-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity canny_accel_entry_proc16 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    p_lowthreshold : IN STD_LOGIC_VECTOR (7 downto 0);
    p_lowthreshold_c_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_lowthreshold_c_num_data_valid : IN STD_LOGIC_VECTOR (3 downto 0);
    p_lowthreshold_c_fifo_cap : IN STD_LOGIC_VECTOR (3 downto 0);
    p_lowthreshold_c_full_n : IN STD_LOGIC;
    p_lowthreshold_c_write : OUT STD_LOGIC;
    p_highthreshold : IN STD_LOGIC_VECTOR (7 downto 0);
    p_highthreshold_c_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_highthreshold_c_num_data_valid : IN STD_LOGIC_VECTOR (3 downto 0);
    p_highthreshold_c_fifo_cap : IN STD_LOGIC_VECTOR (3 downto 0);
    p_highthreshold_c_full_n : IN STD_LOGIC;
    p_highthreshold_c_write : OUT STD_LOGIC;
    ap_ext_blocking_n : OUT STD_LOGIC;
    ap_str_blocking_n : OUT STD_LOGIC;
    ap_int_blocking_n : OUT STD_LOGIC );
end;


architecture behav of canny_accel_entry_proc16 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal p_lowthreshold_c_blk_n : STD_LOGIC;
    signal p_highthreshold_c_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_int_blocking_cur_n : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;


begin




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
                elsif ((not(((real_start = ap_const_logic_0) or (p_highthreshold_c_full_n = ap_const_logic_0) or (p_lowthreshold_c_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((real_start = ap_const_logic_1) and (internal_ap_ready = ap_const_logic_0))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, p_lowthreshold_c_full_n, p_highthreshold_c_full_n)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(real_start, ap_done_reg, p_lowthreshold_c_full_n, p_highthreshold_c_full_n)
    begin
        if (((real_start = ap_const_logic_0) or (p_highthreshold_c_full_n = ap_const_logic_0) or (p_lowthreshold_c_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg, p_lowthreshold_c_full_n, p_highthreshold_c_full_n)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (p_highthreshold_c_full_n = ap_const_logic_0) or (p_lowthreshold_c_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_lowthreshold_c_full_n, p_highthreshold_c_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (p_highthreshold_c_full_n = ap_const_logic_0) or (p_lowthreshold_c_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_ext_blocking_n <= (ap_const_logic_1 and ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_int_blocking_cur_n <= (p_lowthreshold_c_blk_n and p_highthreshold_c_blk_n);
    ap_int_blocking_n <= (ap_int_blocking_cur_n and ap_const_logic_1);
    ap_ready <= internal_ap_ready;
    ap_str_blocking_n <= (ap_const_logic_1 and ap_const_logic_1);

    internal_ap_ready_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_lowthreshold_c_full_n, p_highthreshold_c_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (p_highthreshold_c_full_n = ap_const_logic_0) or (p_lowthreshold_c_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    p_highthreshold_c_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_highthreshold_c_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_highthreshold_c_blk_n <= p_highthreshold_c_full_n;
        else 
            p_highthreshold_c_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_highthreshold_c_din <= p_highthreshold;

    p_highthreshold_c_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_lowthreshold_c_full_n, p_highthreshold_c_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (p_highthreshold_c_full_n = ap_const_logic_0) or (p_lowthreshold_c_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_highthreshold_c_write <= ap_const_logic_1;
        else 
            p_highthreshold_c_write <= ap_const_logic_0;
        end if; 
    end process;


    p_lowthreshold_c_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_lowthreshold_c_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_lowthreshold_c_blk_n <= p_lowthreshold_c_full_n;
        else 
            p_lowthreshold_c_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_lowthreshold_c_din <= p_lowthreshold;

    p_lowthreshold_c_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_lowthreshold_c_full_n, p_highthreshold_c_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (p_highthreshold_c_full_n = ap_const_logic_0) or (p_lowthreshold_c_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_lowthreshold_c_write <= ap_const_logic_1;
        else 
            p_lowthreshold_c_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_full_n = ap_const_logic_0) and (start_once_reg = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((real_start = ap_const_logic_1) and (start_once_reg = ap_const_logic_0))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
