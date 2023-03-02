# This script segment is generated automatically by AutoPilot

set id 202
set name canny_accel_mux_32_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 2
set din3_signed 0
set dout_width 16
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
    id 209 \
    name buf_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V \
    op interface \
    ports { buf_V_address0 { O 11 vector } buf_V_ce0 { O 1 bit } buf_V_we0 { O 1 bit } buf_V_d0 { O 16 vector } buf_V_address1 { O 11 vector } buf_V_ce1 { O 1 bit } buf_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 210 \
    name buf_V_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V_1 \
    op interface \
    ports { buf_V_1_address0 { O 11 vector } buf_V_1_ce0 { O 1 bit } buf_V_1_we0 { O 1 bit } buf_V_1_d0 { O 16 vector } buf_V_1_address1 { O 11 vector } buf_V_1_ce1 { O 1 bit } buf_V_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 211 \
    name buf_V_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V_2 \
    op interface \
    ports { buf_V_2_address0 { O 11 vector } buf_V_2_ce0 { O 1 bit } buf_V_2_we0 { O 1 bit } buf_V_2_d0 { O 16 vector } buf_V_2_address1 { O 11 vector } buf_V_2_ce1 { O 1 bit } buf_V_2_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 215 \
    name angle_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename angle_V \
    op interface \
    ports { angle_V_address0 { O 11 vector } angle_V_ce0 { O 1 bit } angle_V_we0 { O 1 bit } angle_V_d0 { O 8 vector } angle_V_address1 { O 11 vector } angle_V_ce1 { O 1 bit } angle_V_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'angle_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 216 \
    name angle_V_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename angle_V_1 \
    op interface \
    ports { angle_V_1_address0 { O 11 vector } angle_V_1_ce0 { O 1 bit } angle_V_1_we0 { O 1 bit } angle_V_1_d0 { O 8 vector } angle_V_1_address1 { O 11 vector } angle_V_1_ce1 { O 1 bit } angle_V_1_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'angle_V_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name imgwidth_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imgwidth_load \
    op interface \
    ports { imgwidth_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name zext_ln1035 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln1035 \
    op interface \
    ports { zext_ln1035 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name zext_ln1035_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln1035_1 \
    op interface \
    ports { zext_ln1035_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name top_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_top_V \
    op interface \
    ports { top_V { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
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
    id 214 \
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
    id 217 \
    name write_ind_V_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_write_ind_V_cast \
    op interface \
    ports { write_ind_V_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
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
    id 219 \
    name read_ind_V_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_read_ind_V_cast \
    op interface \
    ports { read_ind_V_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
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
    id 221 \
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
    id 222 \
    name cmp_i_i163_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_i163_i \
    op interface \
    ports { cmp_i_i163_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
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
    id 224 \
    name agg_tmp31_i_i_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_tmp31_i_i_0_out \
    op interface \
    ports { agg_tmp31_i_i_0_out { O 8 vector } agg_tmp31_i_i_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name agg_tmp23_i_i_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_tmp23_i_i_0_out \
    op interface \
    ports { agg_tmp23_i_i_0_out { O 16 vector } agg_tmp23_i_i_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name agg_tmp20_i_i_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_tmp20_i_i_0_out \
    op interface \
    ports { agg_tmp20_i_i_0_out { O 16 vector } agg_tmp20_i_i_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name agg_tmp12_i_i_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_tmp12_i_i_0_out \
    op interface \
    ports { agg_tmp12_i_i_0_out { O 16 vector } agg_tmp12_i_i_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name agg_tmp9_i_i_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_tmp9_i_i_0_out \
    op interface \
    ports { agg_tmp9_i_i_0_out { O 16 vector } agg_tmp9_i_i_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name agg_tmp2_i_i_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_tmp2_i_i_0_out \
    op interface \
    ports { agg_tmp2_i_i_0_out { O 16 vector } agg_tmp2_i_i_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name agg_tmp131_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_tmp131_0_out \
    op interface \
    ports { agg_tmp131_0_out { O 16 vector } agg_tmp131_0_out_ap_vld { O 1 bit } } \
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


