# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_accel_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_s_buf_V_RAM_S2P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_s2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
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
    name gaussian_mat_data1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gaussian_mat_data1 \
    op interface \
    ports { gaussian_mat_data1_din { O 8 vector } gaussian_mat_data1_num_data_valid { I 2 vector } gaussian_mat_data1_fifo_cap { I 2 vector } gaussian_mat_data1_full_n { I 1 bit } gaussian_mat_data1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name img_height \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_height \
    op interface \
    ports { img_height { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
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
    id 100 \
    name img_height_c22 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_height_c22 \
    op interface \
    ports { img_height_c22_din { O 16 vector } img_height_c22_num_data_valid { I 2 vector } img_height_c22_fifo_cap { I 2 vector } img_height_c22_full_n { I 1 bit } img_height_c22_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name img_width_c26 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_width_c26 \
    op interface \
    ports { img_width_c26_din { O 16 vector } img_width_c26_num_data_valid { I 2 vector } img_width_c26_fifo_cap { I 2 vector } img_width_c26_full_n { I 1 bit } img_width_c26_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


