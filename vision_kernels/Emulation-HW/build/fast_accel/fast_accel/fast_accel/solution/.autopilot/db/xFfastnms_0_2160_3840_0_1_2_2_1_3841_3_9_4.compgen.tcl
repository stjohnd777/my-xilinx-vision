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
    id 186 \
    name p_dst_data1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst_data1 \
    op interface \
    ports { p_dst_data1_dout { I 8 vector } p_dst_data1_num_data_valid { I 2 vector } p_dst_data1_fifo_cap { I 2 vector } p_dst_data1_empty_n { I 1 bit } p_dst_data1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name imgOutput_data2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_imgOutput_data2 \
    op interface \
    ports { imgOutput_data2_din { O 8 vector } imgOutput_data2_num_data_valid { I 2 vector } imgOutput_data2_fifo_cap { I 2 vector } imgOutput_data2_full_n { I 1 bit } imgOutput_data2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
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
    id 189 \
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


