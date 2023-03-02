# This script segment is generated automatically by AutoPilot

set id 117
set name canny_accel_mux_32_13_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 13
set din0_signed 0
set din1_width 13
set din1_signed 0
set din2_width 13
set din2_signed 0
set din3_width 2
set din3_signed 0
set dout_width 13
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
    id 124 \
    name buf_V_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V_4 \
    op interface \
    ports { buf_V_4_address0 { O 11 vector } buf_V_4_ce0 { O 1 bit } buf_V_4_q0 { I 8 vector } buf_V_4_address1 { O 11 vector } buf_V_4_ce1 { O 1 bit } buf_V_4_we1 { O 1 bit } buf_V_4_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name buf_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V \
    op interface \
    ports { buf_V_address0 { O 11 vector } buf_V_ce0 { O 1 bit } buf_V_q0 { I 8 vector } buf_V_address1 { O 11 vector } buf_V_ce1 { O 1 bit } buf_V_we1 { O 1 bit } buf_V_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name buf_V_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V_3 \
    op interface \
    ports { buf_V_3_address0 { O 11 vector } buf_V_3_ce0 { O 1 bit } buf_V_3_q0 { I 8 vector } buf_V_3_address1 { O 11 vector } buf_V_3_ce1 { O 1 bit } buf_V_3_we1 { O 1 bit } buf_V_3_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
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
    id 127 \
    name row_ind_V_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_ind_V_9 \
    op interface \
    ports { row_ind_V_9 { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name row_ind_V_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_ind_V_10 \
    op interface \
    ports { row_ind_V_10 { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name row_ind_V_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_ind_V_11 \
    op interface \
    ports { row_ind_V_11 { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name sub_i460_i_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub_i460_i_cast \
    op interface \
    ports { sub_i460_i_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name row_ind_V_9_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_ind_V_9_cast \
    op interface \
    ports { row_ind_V_9_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name spec_select57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_spec_select57 \
    op interface \
    ports { spec_select57 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name row_ind_V_10_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_ind_V_10_cast \
    op interface \
    ports { row_ind_V_10_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name spec_select61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_spec_select61 \
    op interface \
    ports { spec_select61 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name row_ind_V_11_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_ind_V_11_cast \
    op interface \
    ports { row_ind_V_11_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name spec_select65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_spec_select65 \
    op interface \
    ports { spec_select65 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name cmp_i_i554_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_i554_i \
    op interface \
    ports { cmp_i_i554_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name gaussian_mat_data1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gaussian_mat_data1 \
    op interface \
    ports { gaussian_mat_data1_dout { I 8 vector } gaussian_mat_data1_num_data_valid { I 2 vector } gaussian_mat_data1_fifo_cap { I 2 vector } gaussian_mat_data1_empty_n { I 1 bit } gaussian_mat_data1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name gradx_mat_data2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gradx_mat_data2 \
    op interface \
    ports { gradx_mat_data2_din { O 16 vector } gradx_mat_data2_num_data_valid { I 2 vector } gradx_mat_data2_fifo_cap { I 2 vector } gradx_mat_data2_full_n { I 1 bit } gradx_mat_data2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name grady_mat_data5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_grady_mat_data5 \
    op interface \
    ports { grady_mat_data5_din { O 16 vector } grady_mat_data5_num_data_valid { I 2 vector } grady_mat_data5_fifo_cap { I 2 vector } grady_mat_data5_full_n { I 1 bit } grady_mat_data5_write { O 1 bit } } \
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
set InstName canny_accel_flow_control_loop_pipe_sequential_init_U
set CompName canny_accel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix canny_accel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


