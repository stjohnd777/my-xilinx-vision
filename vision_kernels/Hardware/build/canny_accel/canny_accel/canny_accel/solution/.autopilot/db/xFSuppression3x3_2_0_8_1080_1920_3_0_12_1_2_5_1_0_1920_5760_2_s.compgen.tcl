# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_accel_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_s_angle_V_RAM_Ag8j BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_accel_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_s_buf_V_RAM_AUTibs BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 233 \
    name magnitude_mat_data8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_magnitude_mat_data8 \
    op interface \
    ports { magnitude_mat_data8_dout { I 16 vector } magnitude_mat_data8_num_data_valid { I 2 vector } magnitude_mat_data8_fifo_cap { I 2 vector } magnitude_mat_data8_empty_n { I 1 bit } magnitude_mat_data8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name phase_mat_data9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_phase_mat_data9 \
    op interface \
    ports { phase_mat_data9_dout { I 8 vector } phase_mat_data9_num_data_valid { I 14 vector } phase_mat_data9_fifo_cap { I 14 vector } phase_mat_data9_empty_n { I 1 bit } phase_mat_data9_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name nms_mat_data10 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_nms_mat_data10 \
    op interface \
    ports { nms_mat_data10_din { O 2 vector } nms_mat_data10_num_data_valid { I 2 vector } nms_mat_data10_fifo_cap { I 2 vector } nms_mat_data10_full_n { I 1 bit } nms_mat_data10_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name low_threshold \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_low_threshold \
    op interface \
    ports { low_threshold_dout { I 8 vector } low_threshold_num_data_valid { I 4 vector } low_threshold_fifo_cap { I 4 vector } low_threshold_empty_n { I 1 bit } low_threshold_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name high_threshold \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_high_threshold \
    op interface \
    ports { high_threshold_dout { I 8 vector } high_threshold_num_data_valid { I 4 vector } high_threshold_fifo_cap { I 4 vector } high_threshold_empty_n { I 1 bit } high_threshold_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name imgheight \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imgheight \
    op interface \
    ports { imgheight_dout { I 16 vector } imgheight_num_data_valid { I 2 vector } imgheight_fifo_cap { I 2 vector } imgheight_empty_n { I 1 bit } imgheight_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name imgwidth \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imgwidth \
    op interface \
    ports { imgwidth_dout { I 16 vector } imgwidth_num_data_valid { I 2 vector } imgwidth_fifo_cap { I 2 vector } imgwidth_empty_n { I 1 bit } imgwidth_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name img_height_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_height_c \
    op interface \
    ports { img_height_c_din { O 16 vector } img_height_c_num_data_valid { I 2 vector } img_height_c_fifo_cap { I 2 vector } img_height_c_full_n { I 1 bit } img_height_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name img_width_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_width_c \
    op interface \
    ports { img_width_c_din { O 16 vector } img_width_c_num_data_valid { I 2 vector } img_width_c_fifo_cap { I 2 vector } img_width_c_full_n { I 1 bit } img_width_c_write { O 1 bit } } \
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


