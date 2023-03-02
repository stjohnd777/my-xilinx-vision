# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name img_width_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_width_load \
    op interface \
    ports { img_width_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name grady_mat_data5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_grady_mat_data5 \
    op interface \
    ports { grady_mat_data5_dout { I 16 vector } grady_mat_data5_num_data_valid { I 2 vector } grady_mat_data5_fifo_cap { I 2 vector } grady_mat_data5_empty_n { I 1 bit } grady_mat_data5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name gradx_mat_data2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gradx_mat_data2 \
    op interface \
    ports { gradx_mat_data2_dout { I 16 vector } gradx_mat_data2_num_data_valid { I 2 vector } gradx_mat_data2_fifo_cap { I 2 vector } gradx_mat_data2_empty_n { I 1 bit } gradx_mat_data2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name gradx1_mat_data3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gradx1_mat_data3 \
    op interface \
    ports { gradx1_mat_data3_din { O 16 vector } gradx1_mat_data3_num_data_valid { I 2 vector } gradx1_mat_data3_fifo_cap { I 2 vector } gradx1_mat_data3_full_n { I 1 bit } gradx1_mat_data3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name gradx2_mat_data4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gradx2_mat_data4 \
    op interface \
    ports { gradx2_mat_data4_din { O 16 vector } gradx2_mat_data4_num_data_valid { I 2 vector } gradx2_mat_data4_fifo_cap { I 2 vector } gradx2_mat_data4_full_n { I 1 bit } gradx2_mat_data4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name grady1_mat_data6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_grady1_mat_data6 \
    op interface \
    ports { grady1_mat_data6_din { O 16 vector } grady1_mat_data6_num_data_valid { I 2 vector } grady1_mat_data6_fifo_cap { I 2 vector } grady1_mat_data6_full_n { I 1 bit } grady1_mat_data6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name grady2_mat_data7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_grady2_mat_data7 \
    op interface \
    ports { grady2_mat_data7_din { O 16 vector } grady2_mat_data7_num_data_valid { I 2 vector } grady2_mat_data7_fifo_cap { I 2 vector } grady2_mat_data7_full_n { I 1 bit } grady2_mat_data7_write { O 1 bit } } \
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


