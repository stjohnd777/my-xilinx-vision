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
    id 146 \
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
    id 147 \
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
    id 148 \
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
    id 149 \
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
    id 150 \
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
    id 151 \
    name img_height_c21 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_height_c21 \
    op interface \
    ports { img_height_c21_din { O 16 vector } img_height_c21_num_data_valid { I 2 vector } img_height_c21_fifo_cap { I 2 vector } img_height_c21_full_n { I 1 bit } img_height_c21_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name img_width_c25 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_width_c25 \
    op interface \
    ports { img_width_c25_din { O 16 vector } img_width_c25_num_data_valid { I 2 vector } img_width_c25_fifo_cap { I 2 vector } img_width_c25_full_n { I 1 bit } img_width_c25_write { O 1 bit } } \
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


