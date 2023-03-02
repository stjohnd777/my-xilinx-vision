# This script segment is generated automatically by AutoPilot

set id 163
set name fast_accel_mux_32_13_1_1
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
    id 170 \
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
    id 171 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
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


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
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
    id 173 \
    name row_ind_V_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_ind_V_7 \
    op interface \
    ports { row_ind_V_7 { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name row_ind_V_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_ind_V_8 \
    op interface \
    ports { row_ind_V_8 { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
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
    id 176 \
    name sub_i214_i_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub_i214_i_cast \
    op interface \
    ports { sub_i214_i_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name row_ind_V_7_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_ind_V_7_cast \
    op interface \
    ports { row_ind_V_7_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name spec_select51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_spec_select51 \
    op interface \
    ports { spec_select51 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name row_ind_V_8_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_ind_V_8_cast \
    op interface \
    ports { row_ind_V_8_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name spec_select55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_spec_select55 \
    op interface \
    ports { spec_select55 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
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
    id 182 \
    name spec_select59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_spec_select59 \
    op interface \
    ports { spec_select59 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name cmp_i_i322_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_i322_i \
    op interface \
    ports { cmp_i_i322_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
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
    id 185 \
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
set InstName fast_accel_flow_control_loop_pipe_sequential_init_U
set CompName fast_accel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix fast_accel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


