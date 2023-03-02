# This script segment is generated automatically by AutoPilot

set id 88
set name sobel_accel_mux_32_8_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 8
set din0_signed 0
set din1_width 8
set din1_signed 0
set din2_width 8
set din2_signed 0
set din3_width 2
set din3_signed 0
set dout_width 8
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name buf_V_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V_2 \
    op interface \
    ports { buf_V_2_address0 { O 12 vector } buf_V_2_ce0 { O 1 bit } buf_V_2_q0 { I 8 vector } buf_V_2_address1 { O 12 vector } buf_V_2_ce1 { O 1 bit } buf_V_2_we1 { O 1 bit } buf_V_2_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 99 \
    name buf_V_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V_1 \
    op interface \
    ports { buf_V_1_address0 { O 12 vector } buf_V_1_ce0 { O 1 bit } buf_V_1_q0 { I 8 vector } buf_V_1_address1 { O 12 vector } buf_V_1_ce1 { O 1 bit } buf_V_1_we1 { O 1 bit } buf_V_1_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name buf_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V \
    op interface \
    ports { buf_V_address0 { O 12 vector } buf_V_ce0 { O 1 bit } buf_V_q0 { I 8 vector } buf_V_address1 { O 12 vector } buf_V_ce1 { O 1 bit } buf_V_we1 { O 1 bit } buf_V_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name img_width \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_width \
    op interface \
    ports { img_width { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name tp_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tp_V \
    op interface \
    ports { tp_V { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name mid_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mid_V \
    op interface \
    ports { mid_V { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name bottom_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bottom_V \
    op interface \
    ports { bottom_V { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name in_mat_data1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_mat_data1 \
    op interface \
    ports { in_mat_data1_dout { I 8 vector } in_mat_data1_num_data_valid { I 2 vector } in_mat_data1_fifo_cap { I 2 vector } in_mat_data1_empty_n { I 1 bit } in_mat_data1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name row_ind_V_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_ind_V_cast \
    op interface \
    ports { row_ind_V_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name cmp_i_i603_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_i603_i \
    op interface \
    ports { cmp_i_i603_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name p_dstgx_data2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dstgx_data2 \
    op interface \
    ports { p_dstgx_data2_din { O 8 vector } p_dstgx_data2_num_data_valid { I 2 vector } p_dstgx_data2_fifo_cap { I 2 vector } p_dstgx_data2_full_n { I 1 bit } p_dstgx_data2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name p_dstgy_data3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dstgy_data3 \
    op interface \
    ports { p_dstgy_data3_din { O 8 vector } p_dstgy_data3_num_data_valid { I 2 vector } p_dstgy_data3_fifo_cap { I 2 vector } p_dstgy_data3_full_n { I 1 bit } p_dstgy_data3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name src_buf3_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf3_V_1_out \
    op interface \
    ports { src_buf3_V_1_out { O 8 vector } src_buf3_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name p_Val2_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_Val2_2_out \
    op interface \
    ports { p_Val2_2_out { O 8 vector } p_Val2_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name p_Val2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_Val2_1_out \
    op interface \
    ports { p_Val2_1_out { O 8 vector } p_Val2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name src_buf1_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf1_V_1_out \
    op interface \
    ports { src_buf1_V_1_out { O 8 vector } src_buf1_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name p_Val2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_Val2_out \
    op interface \
    ports { p_Val2_out { O 8 vector } p_Val2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName sobel_accel_flow_control_loop_pipe_sequential_init_U
set CompName sobel_accel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix sobel_accel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


