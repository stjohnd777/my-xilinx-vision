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
    id 160 \
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
    id 161 \
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
    id 162 \
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
    id 163 \
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
    id 164 \
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
    id 165 \
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
    id 166 \
    name img_height \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_height \
    op interface \
    ports { img_height_dout { I 16 vector } img_height_num_data_valid { I 2 vector } img_height_fifo_cap { I 2 vector } img_height_empty_n { I 1 bit } img_height_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name img_width \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_width \
    op interface \
    ports { img_width_dout { I 16 vector } img_width_num_data_valid { I 2 vector } img_width_fifo_cap { I 2 vector } img_width_empty_n { I 1 bit } img_width_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name img_height_c20 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_height_c20 \
    op interface \
    ports { img_height_c20_din { O 16 vector } img_height_c20_num_data_valid { I 2 vector } img_height_c20_fifo_cap { I 2 vector } img_height_c20_full_n { I 1 bit } img_height_c20_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name img_width_c24 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_width_c24 \
    op interface \
    ports { img_width_c24_din { O 16 vector } img_width_c24_num_data_valid { I 2 vector } img_width_c24_fifo_cap { I 2 vector } img_width_c24_full_n { I 1 bit } img_width_c24_write { O 1 bit } } \
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


