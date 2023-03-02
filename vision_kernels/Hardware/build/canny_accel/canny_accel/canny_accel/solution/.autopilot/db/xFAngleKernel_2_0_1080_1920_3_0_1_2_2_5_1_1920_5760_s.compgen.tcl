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
    id 187 \
    name gradx2_mat_data4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gradx2_mat_data4 \
    op interface \
    ports { gradx2_mat_data4_dout { I 16 vector } gradx2_mat_data4_num_data_valid { I 2 vector } gradx2_mat_data4_fifo_cap { I 2 vector } gradx2_mat_data4_empty_n { I 1 bit } gradx2_mat_data4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name grady2_mat_data7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_grady2_mat_data7 \
    op interface \
    ports { grady2_mat_data7_dout { I 16 vector } grady2_mat_data7_num_data_valid { I 2 vector } grady2_mat_data7_fifo_cap { I 2 vector } grady2_mat_data7_empty_n { I 1 bit } grady2_mat_data7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name phase_mat_data9 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_phase_mat_data9 \
    op interface \
    ports { phase_mat_data9_din { O 8 vector } phase_mat_data9_num_data_valid { I 14 vector } phase_mat_data9_fifo_cap { I 14 vector } phase_mat_data9_full_n { I 1 bit } phase_mat_data9_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
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
    id 191 \
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
    id 192 \
    name img_height_c19 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_height_c19 \
    op interface \
    ports { img_height_c19_din { O 16 vector } img_height_c19_num_data_valid { I 2 vector } img_height_c19_fifo_cap { I 2 vector } img_height_c19_full_n { I 1 bit } img_height_c19_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name img_width_c23 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_width_c23 \
    op interface \
    ports { img_width_c23_din { O 16 vector } img_width_c23_num_data_valid { I 2 vector } img_width_c23_fifo_cap { I 2 vector } img_width_c23_full_n { I 1 bit } img_width_c23_write { O 1 bit } } \
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


